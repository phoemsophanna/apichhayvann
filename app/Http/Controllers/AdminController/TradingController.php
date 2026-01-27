<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Trading;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TradingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = Trading::select("id", "title", "step", "summary", "status", "ordering")->orderBy('id', 'desc')->get();

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
            "step" => request("step", ""),
            "stepKm" => request("stepKm", ""),
            "title" => request("title", ""),
            "titleKm" => request("titleKm", ""),
            "image" => request("image", null),
            "summary" => request("summary", ""),
            "summaryKm" => request("summaryKm", ""),
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
        $model = Trading::findOrFail($request->id);
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
        $model = Trading::findOrFail($id);
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
                Trading::where('id', $id)->update($data);
            } else {
                Trading::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
