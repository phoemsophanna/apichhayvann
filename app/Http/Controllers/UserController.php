<?php

namespace App\Http\Controllers;

use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\ActivityLog;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = User::select("id", "name", "email", "phoneNumber", "userRole", "image", "isActive")
            ->where('id', '!=', auth()->user()->id)
            ->where('id', '!=', 1)
            ->orderBy('id', 'desc')->get();

        return response()->json([
            'message' => 'Get user list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'userRole' => 'required'
        ]);

        $dataForm = [
            'name' => request('name', null),
            'email' => request('email', null),
            'phoneNumber' => request('phoneNumber', null),
            'userRole' => request('userRole', null),
            'image' => request('image', null),
            'isActive' => request("isActive", true)
        ];

        if ($request->password) {
            $dataForm['password'] = bcrypt($request->password);
        }

        $result = $this->_onSave($request->id, $dataForm);

        if (!$result) {
            return response()->json([
                'message' => 'Save record is failed.',
                'status' => 'failed'
            ], 200);
        }

        ActivityLog::create([
            'user_id' => auth()->id(),
            'action' => $request->id ? 'update' : 'create',
            'module' => 'user',
            'description' => $request->id ? 'Updated Users:'.$request->name : 'Created Users:'.$request->name,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);

        return response()->json([
            'message' => 'Save record is successfully.',
            'status' => 'success'
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $model = User::findOrFail($request->id);
        return response()->json([
            'message' => 'Get user detail success.',
            'status' => 'success',
            'model' => $model
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = User::findOrFail($id);
        ActivityLog::create([
            'user_id' => auth()->id(),
            'action' => 'delete',
            'module' => 'user',
            'description' =>'Deleted Users:'.$model->name,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }

    private function _onSave($id, $data)
    {
        try {
            if ($id) {
                $role = User::findOrFail($id);
                $role->update($data);
                $role->syncRoles($data['userRole']);
            } else {
                $role = User::create($data);
                $role->assignRole($data['userRole']);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
