<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\OrderItem;
use App\Models\Product;
use App\Models\Career;
use App\Models\Corporate;
use App\Models\Individual;
use App\Models\ProductOrder;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return response()->json([
            'message' => 'Get Brand detail success.',
            'status' => 'success',
            'model' => [
                [
                    "id" => 1,
                    "feaIcon" => "briefcase",
                    "feaIconClass" => "primary",
                    "label" => "Total Job Applications",
                    "badgeClass" => "",
                    "icon" => "ri-arrow-down-s-line",
                    "percentage" => "",
                    "caption" => "All Job Applications",
                    "subCounter" => [[
                        "id" => 1,
                        "counter" => Career::count(),
                        "suffix" => "",
                        "separator" => ","
                    ]],
                ],
                [
                    "id" => 2,
                    "feaIcon" => "user",
                    "feaIconClass" => "warning",
                    "label" => "Corporate Account",
                    "badgeClass" => "",
                    "icon" => "",
                    "percentage" => '',
                    "caption" => "Corporate Account",
                    "subCounter" => [[
                        "id" => 1,
                        "counter" => Corporate::count(),
                        "suffix" => "",
                        "separator" => ","
                    ]],
                ],
                [
                    "id" => 3,
                    "feaIcon" => "user",
                    "feaIconClass" => "info",
                    "label" => "Individual Account",
                    "badgeClass" => "",
                    "icon" => "ri-arrow-up-s-line",
                    "percentage" => "",
                    "caption" => "All Individual Account",
                    "subCounter" => [[
                        "id" => 1,
                        "counter" => Individual::count(),
                        "suffix" => "",
                        "separator" => ","
                    ]],
                ],
            ]
        ], 200);
    }
}
