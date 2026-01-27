<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Team;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $data = Team::select("id", "name", "image", "position", "isActive")
            ->orderBy('id', 'desc')->get();

        return response()->json([
            'message' => 'Get Team list success.',
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
            "name" => request("name", null),
            "nameKm" => request("nameKm", null),
            "position" => request("position", null),
            "positionKm" => request("positionKm", null),
            "experience" => request("experience", null),
            "experienceKm" => request("experienceKm", null),
            "facebook" => request("facebook", null),
            "telegram" => request("telegram", null),
            "linkedin" => request("linkedin", null),
            "email" => request("email", null),
            "image" => request("image", null),
            "ordering" => request("ordering", 0),
            "isActive" => request("isActive", 1)
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
        $model = Team::findOrFail($request->id);
        return response()->json([
            'message' => 'Get Team detail success.',
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
        $model = Team::findOrFail($id);
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
                Team::where('id', $id)->update($data);
            } else {
                Team::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
