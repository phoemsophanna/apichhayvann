<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class RolePermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $data = Role::select("id", "name")
            ->orderBy('id', 'desc')->get();

        return response()->json([
            'message' => 'Get Role list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            if ($request->id) {
                $request->validate([
                    'permissions' => 'array'
                ]);
                $role = Role::findOrFail($request->id);
                $role->name = $request->name;
                $role->save();
            } else {
                $request->validate([
                    'name' => 'required|unique:roles,name',
                    'permissions' => 'array'
                ]);
                $role = Role::create(['name' => $request->name]);
            }

            if ($request->has('permissions')) {
                $role->syncPermissions($request->permissions);
            }
        } catch (\Exception $error) {
            return response()->json([
                'message' => $$error->getMessage(),
                'status' => 'failed'
            ], 200);
        }

        return response()->json([
            'message' => 'Save record is successfully.',
            'status' => 'success',
            'role' => $role->load('permissions')
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $model = Role::findOrFail($request->id);
        $model['permission'] = $model->permissions->pluck('name')->values();
        $model->makeHidden('permissions');
        return response()->json([
            'message' => 'Get Role detail success.',
            'status' => 'success',
            'model' => $model
        ], 200);
    }

    public function dropdown(Request $req) {
        $model = Role::where("name", "like", "%".$req->search."%")->limit(5)->get();
        return response()->json(['status' => "success", "data" => $model]);   
    }

    public function allPermission() {
        $permission = Permission::get();
        return response()->json(["status" => "success", "data" => $permission]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Role::findOrFail($id);
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }
}
