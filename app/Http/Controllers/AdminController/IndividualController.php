<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Career;
use App\Models\Individual;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;

class IndividualController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Individual::select("id", "firstname", "lastname", "phone", "nidNumber", "created_at")->orderBy('id', 'desc')->get();
        
        $data->each(function($q){
            $q->create_at = Carbon::parse($q->created_at)->format("d F Y");
        });

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
            "title" => request("title", ""),
            "titleKm" => request("titleKm", ""),
            "des" => request("des", ""),
            "desKm" => request("desKm", ""),
            "content" => request("content", ""),
            "contentKm" => request("contentKm", ""),
            "type" => request("type", ""),
            "deadline" => request("deadline", ""),
            "location" => request("location", ""),
            "locationKm" => request("locationKm", ""),
            "ordering" => request("ordering", 0),
            'isActive' => request("isActive", true)
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
        $model = Individual::findOrFail($request->id);
        $model->create_at = Carbon::parse($model->created_at)->format("d F Y");
        $model->privacy = json_decode($model->privacy);
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
        $model = Individual::findOrFail($id);
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
                Career::where('id', $id)->update($data);
            } else {
                Career::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
