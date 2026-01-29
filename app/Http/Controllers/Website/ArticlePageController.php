<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\PageBanner;
use App\Models\Service;
use App\Models\SiteSetting;
use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ArticlePageController extends Controller
{
    public function index(Request $request)
    {
        $lang = $request->header("Accept-Language");
        if($request->categoryId) {
            $articles = News::select("id", "title", "titleKm", "image", "summary", "summaryKm", "category_id", "date")->where([["isActive", true],['category_id',$request->categoryId]])->orderBy("ordering", "asc")->get();
        } else {
            $articles = News::select("id", "title", "titleKm", "image", "summary", "summaryKm", "category_id", "date")->where([["isActive", true]])->orderBy("ordering", "asc")->get();
        }
        $articles->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->summary = $lang == "KHM" && !empty($q->summaryKm) ? $q->summaryKm : $q->summary;
            $q->date = Carbon::parse($q->date)->format("d.m.Y");
            $category = $q->category;
            $category->each(function($query) use ($lang){
                $query->title = $lang == "KHM" && !empty($query->titleKm) ? $query->titleKm : $query->title;
            });
            $q['categories'] = $category;
        });

        $category = Category::where("status",1)->where("type","NEWS")->orderby("ordering")->get();
        $category->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
        });

        $meta = PageBanner::where("pageTitle", "NEWS")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "articles" => $articles,
            "category" => $category,
            "banner" => $meta
        ], 200);
    }

    public function show(Request $request,$id)
    {
        $lang = $request->header("Accept-Language");
        $articles = News::select("id", "title", "titleKm", "image", "summary", "summaryKm", "category_id", "date")->where([["isActive", true], ["id", "!=", $id]])->orderBy("id", "desc")->limit(8)->get();
        $article = News::find($id);
        $article->title = $lang == "KHM" && !empty($article->titleKm) ? $article->titleKm : $article->title;
        $article->content = $lang == "KHM" && !empty($article->contentKm) ? $article->contentKm : $article->content;
        $article->date = Carbon::parse($article->date)->format("d.m.Y");
        $categorys = $article->category;
        $categorys->title = $lang == "KHM" && !empty($categorys->titleKm) ? $categorys->titleKm : $categorys->title;
        $article->category = $categorys;
        $articles->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->summary = $lang == "KHM" && !empty($q->summaryKm) ? $q->summaryKm : $q->summary;
            $q->date = Carbon::parse($q->date)->format("d.m.Y");
            $category = $q->category;
            $category->each(function($query) use ($lang){
                $query->title = $lang == "KHM" && !empty($query->titleKm) ? $query->titleKm : $query->title;
            });
            $q['categories'] = $category;
        });

        $category = Category::where("status",1)->where("type","NEWS")->orderby("ordering")->get();
        $category->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
        });

        $meta = PageBanner::where("pageTitle", "NEWS")->first();
        if (!$article) {
            return response()->json([
                "status" => "failed",
                "message" => "Load data failed",
                "article" => null
            ], 200);
        }

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "article" => $article,
            "articles" => $articles,
            "category" => $category,
            "banner" => $meta
        ], 200);
    }
}
