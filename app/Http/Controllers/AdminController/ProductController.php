<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductOption;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = Product::select("id", "title", "gallery", "ordering", "status")
            ->orderBy('id', 'asc')->get();
        $data->each(function($q) {
            $gallery = json_decode($q->gallery);
            $q->image = $gallery[0];
        });
        return response()->json([
            'message' => 'Get Product list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $galleries = $request->gallery ? json_encode($request->gallery) : json_encode([]);
        $dataForm = [
            "title" => request("title", null),
            "titleKm" => request("titleKm", null),
            "description" => request("description", null),
            "descriptionKm" => request("descriptionKm", null),
            "gallery" => $galleries,
            "type" => request("type", null),
            "country" => request("country", null),
            "ordering" => request("ordering", 0),
            "status" => request("status", 1),
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
            'status' => 'success',
            'id' => $result->id
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $model = Product::findOrFail($request->id);
        $model->gallery = json_decode($model->gallery);
        return response()->json([
            'message' => 'Get Product detail success.',
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
        $model = Product::findOrFail($id);
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }

    public function dropdown()
    {
        $brand = Brand::select("id", "title")->where([["isActive", true]])->orderBy("ordering", "asc")->get();
        $brand->each(function ($query) {
            $query->categories = Category::select("id", "title")->where([["isActive", true], ["brandId", $query->id]])->orderBy("ordering", "asc")->get();
        });
        return response()->json([
            "message" => "Fetch record successfully",
            "status" => "success",
            "data" => $brand
        ]);
    }

    private function _onSave($id, $data)
    {
        try {
            if ($id) {
                Product::where('id', $id)->update($data);
                return Product::where("id", $id)->first();
            } else {
                return Product::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
    }
}
