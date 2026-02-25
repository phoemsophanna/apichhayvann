<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Image;
use App\Services\FileService;
use Illuminate\Http\UploadedFile;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $data = Image::select("id", "type", "image")
            ->where("type", "EXCHANGE")
            ->orderBy('id', 'desc')->get();

        return response()->json([
            'message' => 'Get Image list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    public function getImage() {
        $data = Image::select("id", "type", "image")
            ->where("type", "!=", "EXCHANGE")->orderBy('id', 'desc')->get();

        return response()->json([
            'message' => 'Get Image list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $req)
    {
        DB::beginTransaction();
        try {
            if ($req->hasFile('galleries')) {
                $files = $req->file('galleries');
                foreach ($files as $file) {
                    $image = FileService::save("/images", $file);
                    if ($image != null) {
                        Image::create([
                            'image' => $image,
                            'type' => $req->type
                        ]);
                    }
                }
            }
            DB::commit();
        } catch (\Exception $error) {
            if (!$result) {
                return response()->json([
                    'message' => $error->getMessage(),
                    'status' => 'failed'
                ], 200);
            }
        }

        return response()->json([
            'message' => 'Save record is successfully.',
            'status' => 'success'
        ], 200);
    }

    public function uploadImage(Request $req) {
        try {
            $file = $req->file('image');
            $destination = "/images";
            $path = public_path('uploads') . $destination;
            $extension = $file->getClientOriginalExtension();
            $fileName = "Chhayvann_" . $req->type . '.' . $extension;
            if($file->move($path, $fileName)) {
                Image::create([
                    'image' => "$destination/$fileName",
                    'type' => $req->type
                ]);
            }
        } catch (\Exception $error) {
            return response()->json(["status" => "fail", "message" => $error->getMessage()]);
        }

        return response()->json([
            "status" => "success",
            "data" => Image::get()
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Image::findOrFail($id);
        if($model) {
            $path = public_path('uploads') . $model->image;
            if(File::exists($path)){
                File::delete($path);
            }
        }
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }
}
