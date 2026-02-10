<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\CurrencyConvert;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CurrencyConvertController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = CurrencyConvert::select("id", "currency", "type", "rate", "image", "status")->orderBy('ordering', 'desc')->get();

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
        $subCurrency = $request->subCurrency ? json_encode($request->subCurrency) : json_encode([]);
        $dataForm = [
            "currency" => request("currency", ""),
            "image" => request("image", null),
            "type" => request("type", ""),
            "rate" => request("rate", ""),
            "ordering" => request("ordering", 0),
            "subCurrency" => $subCurrency,
            "status" => request("status", 1)
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
        $model = CurrencyConvert::findOrFail($request->id);
        return response()->json([
            'message' => 'Get detail success.',
            'status' => 'success',
            'model' => $model
        ], 200);
    }

    public function dropdown(Request $r) {
        $currency = CurrencyConvert::select("id","currency","image","type")->where("currency", "like", "%".$r->search."%")
        ->orWhere("type", "like", "%".$r->search."%")->limit(10)->get();
        return response()->json(["status" => "success", "data" => $currency]);
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
        $model = CurrencyConvert::findOrFail($id);
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
                CurrencyConvert::where('id', $id)->update($data);
            } else {
                CurrencyConvert::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
