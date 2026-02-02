<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Career;
use App\Models\CareerApply;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;

class CareerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Career::select("id", "title", "type", "location", "deadline", "isActive", "ordering")->orderBy('id', 'desc')->get();
        
        $data->each(function($q){
            $q->deadline = Carbon::parse($q->deadline)->format("F d Y");
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
        $model = Career::findOrFail($request->id);
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
        $model = Career::findOrFail($id);
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

    public function careerApplyList(Request $request) {
        $application = CareerApply::select("id","firstname","lastname","phoneNumber","careerId")->get();
        $application->each(function($q){
            $q->career; 
        });

        return response()->json(["status" => "success", "application" => $application]);
    }

    public function careerApplyShow(Request $request) {
        $application = CareerApply::findOrFail($request->id);
        $application->career;

        return response()->json(["status" => "success", "application" => $application]);
    }
}
