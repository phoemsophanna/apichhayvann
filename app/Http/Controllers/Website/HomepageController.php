<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\News;
use App\Models\PageBanner;
use App\Models\Performance;
use App\Models\Project;
use App\Models\Service;
use App\Models\SiteSetting;
use App\Models\Technology;
use App\Models\Testimonial;
use App\Models\WebHosting;
use Illuminate\Http\Request;
use Carbon\Carbon;

class HomepageController extends Controller
{
    public function index(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $homepage = SiteSetting::where("type", "HOMEPAGE")->first();
        $homepage = json_decode($homepage->content);
        $homepage->aboutCompany = $lang == "KHM" && !empty($homepage->aboutCompanyKm) ? $homepage->aboutCompanyKm : $homepage->aboutCompany;
        $homepage->companyName = $lang == "KHM" && !empty($homepage->companyNameKm) ? $homepage->companyNameKm : $homepage->companyName;
        $homepage->subtitle = $lang == "KHM" && !empty($homepage->subtitleKm) ? $homepage->subtitleKm : $homepage->subtitle;
        $homepage->subtitleTwo = $lang == "KHM" && !empty($homepage->subtitleTwoKm) ? $homepage->subtitleTwoKm : $homepage->subtitleTwo;
        $homepage->summary = $lang == "KHM" && !empty($homepage->summaryKm) ? $homepage->summaryKm : $homepage->summary ;
        $homepage->title = $lang == "KHM" && !empty($homepage->titleKm) ? $homepage->titleKm : $homepage->title;

        $howTrade = SiteSetting::where("type", "HOWTRADE")->first();
        $howTrade = json_decode($howTrade->content);
        $howTrade->des = $lang == "KHM" && !empty($howTrade->desKm) ? $howTrade->desKm : $howTrade->des;
        $howTrade->subtitle = $lang == "KHM" && !empty($howTrade->subtitleKm) ? $howTrade->subtitleKm : $howTrade->subtitle;
        $howTrade->title = $lang == "KHM" && !empty($howTrade->titleKm) ? $howTrade->titleKm : $howTrade->title;        

        $news = News::select("id", "category_id", "title", "titleKm", "date", "image")->where("isActive", 1)->where("isDisplayHomepage", 1)->orderby("ordering")->limit(3)->get();
        $news->each(function($query) use ($lang) {
            $query->title = $lang == "KHM" && !empty($query->titleKm) ? $query->titleKm : $query->title;
            $category = $query->category;
            $category->each(function($q) use ($lang) {
                $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
                $q->makeHidden("titleKm");
            });
            $query->category = $category;
            $query->date = Carbon::parse($query->date)->format("d.m.Y");
            $query->makeHidden("titleKm");
        });

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "homepage" => $homepage,
            "howTrade" => $howTrade,
            "news" => $news 
        ], 200);
    }

    public function sliders(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $banners = Banner::select("id", "title", "titleKm", "description", "descriptionKm", "image", "linkLabel", "linkLabelKm", "linkTo", "redirectNewTap")
            ->where([['isActive', true]])
            ->orderBy('ordering', 'asc')
            ->get();
        
        $banners->each(function($q) use ($lang){
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->description = $lang == "KHM" && !empty($q->descriptionKm) ? $q->descriptionKm : $q->description;
            $q->linkLabel = $lang == "KHM" && !empty($q->linkLabelKm) ? $q->linkLabelKm : $q->linkLabel;
            $q->makeHidden("titleKm","descriptionKm","linkLabelKm");
        });
        
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "sliders" => $banners
        ], 200);
    }
}
