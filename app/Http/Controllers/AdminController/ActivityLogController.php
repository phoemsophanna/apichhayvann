<?php

namespace App\Http\Controllers\AdminController;

use App\Models\ActivityLog;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class ActivityLogController extends Controller
{
    /**
     * Activity log list
     */
    public function index()
    {
        $activities = ActivityLog::with('user')
            ->latest()
            ->paginate(20);

        return response()->json([
            'message' => 'Get Activity list success.',
            'status' => 'success',
            'activities' => $activities,
        ], 200);
    }

    /**
     * Activity log detail
     */
    public function show($id)
    {
        $activity = ActivityLog::with('user')
            ->findOrFail($id);

        if (!$activity) {
            return response()->json([
                'message' => 'Activity not found.',
                'status' => 'error',
                'data' => null,
            ], 404);
        }

        return response()->json([
            'message' => 'Get Activity detail success.',
            'status' => 'success',
            'data' => $activity,
        ], 200);
    }
}