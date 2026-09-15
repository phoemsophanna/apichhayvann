<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\PageBanner;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\ActivityLog;

class PageBannerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = PageBanner::select("id", "pageTitle", "image", "isActive")->orderBy('id', 'desc')->get();

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
            "type" => request("pageTitle", ""),
            "pageTitle" => request("pageTitle", ""),
            "image" => request("image", null),
            'isActive' => request("isActive", true),
            "isHide" => request("isHide", false)
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
            'module' => 'page_banners',
            'description' => $request->id ? 'Updated Page Banners:'.$request->pageTitle : 'Created Page Banners:'.$request->pageTitle,
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
        $model = PageBanner::findOrFail($request->id);
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
        $model = PageBanner::findOrFail($id);
        ActivityLog::create([
            'user_id' => auth()->id(),
            'action' => 'delete',
            'module' => 'page_banners',
            'description' => 'Deleted Page Banners:'.$model->pageTitle,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }

    private static function _onSave($id, $data)
    {
        try {
            if ($id) {
                PageBanner::where('id', $id)->update($data);
            } else {
                PageBanner::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
