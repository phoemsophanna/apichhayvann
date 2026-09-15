<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Card;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\ActivityLog;

class CardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Card::select("id", "icon", "title_eng", "status", "ordering")->orderBy('id', 'desc')->get();

        return response()->json([
            'message' => 'Get list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $dataForm = [
            "title_eng" => request("title_eng", 0),
            "title_km" => request("title_km", 0),
            "description_eng" => request("description_eng", 0),
            "description_km" => request("description_km", 0),
            "icon" => request("icon", 0),
            "ordering" => request("ordering", 0),
            'status' => request("status", 1)
        ];

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
            'module' => 'cards',
            'description' => $request->id ? 'Updated Platform Guide:'.$request->title_eng : 'Created Platform Guide:'.$request->title_eng,
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
        $model = Card::findOrFail($request->id);
        return response()->json([
            'message' => 'Get detail success.',
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
        $model = Card::findOrFail($id);
        ActivityLog::create([
            'user_id' => auth()->id(),
            'action' => 'delete',
            'module' => 'cards',
            'description' => 'Deleted Platform Guide:'.$model->title,
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
                Card::where('id', $id)->update($data);
            } else {
                Card::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
