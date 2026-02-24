<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\ExchangeRate;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;

class ExchangeRateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = ExchangeRate::select("id", "from", "to", "buy", "sell", "status", "image", "ordering", "isMultiply")->orderBy('ordering', 'desc')->get();

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
            "from" => request("from", ""),
            "to" => request("to", ""),
            "sell" => request("sell", ""),
            "buy" => request("buy", ""),
            "image" => request("image", null),
            "ordering" => request("ordering", 0),
            "isMultiply" => request("isMultiply", 1),
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
        $model = ExchangeRate::findOrFail($request->id);
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
        $model = ExchangeRate::findOrFail($id);
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }

    public function importFromExcel(Request $request) {
        DB::beginTransaction();
        try {
            ExchangeRate::query()->delete();
            $exchanges = $request->exchanges;

            foreach ($exchanges as $query) {
                ExchangeRate::create([
                    "image" => $query['image'] ?? null,
                    "from"  => $query['from'],
                    "to"    => $query['to'],
                    "buy"   => $query['buy'],
                    "sell"  => $query['sell'],
                    "isMultiply" => $query['isMultiply'],
                    "ordering" => isset($query['ordering']) ? $query['ordering'] : 0,
                    "status" => 1
                ]);
            }

            DB::commit();
        } catch (Exception $error) {
            return response()->json([
                'message' => $error->getMessage(),
                'status' => 'fail'
            ]);
        }
        return response()->json([
            'message' => 'Import exchange rate successfully!',
            "status" => 'success'
        ]);
    }

    private function _onSave($id, $data)
    {
        try {
            if ($id) {
                ExchangeRate::where('id', $id)->update($data);
            } else {
                ExchangeRate::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
