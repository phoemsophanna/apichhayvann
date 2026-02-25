<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Faq;
use App\Models\PageBanner;
use App\Models\Performance;
use App\Models\SiteSetting;
use App\Models\Skillset;
use App\Models\Technology;
use App\Models\Testimonial;
use App\Models\WebHosting;
use Illuminate\Http\Request;
use App\Models\DefaultPlan;
use App\Models\Service;
use App\Models\Award;
use App\Models\History;
use App\Models\Category;
use App\Models\Team;
use App\Models\Partner;
use App\Models\Product;
use App\Models\ExchangeRate;
use App\Models\News;
use App\Models\CurrencyConvert;
use App\Models\Trading;
use App\Models\PerformanceType;
use App\Models\PriceHistory;
use Illuminate\Support\Facades\Cache;
use Carbon\Carbon;

class WebPageController extends Controller
{
    public function testimonialPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $testimonial = Testimonial::where([["isActive", 1]])->orderBy('ordering', 'asc')->get();
        $testimonial->each(function($q) use ($lang) {
            $q->reviewerPosition = $lang == "KHM" && !empty($q->reviewerPositionKm) ? $q->reviewerPositionKm : $q->reviewerPosition;
            $q->comment = $lang == "KHM" && !empty($q->commentKm) ? $q->commentKm : $q->comment;
        });
        $meta = PageBanner::where("pageTitle", "TestimonialPage")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "testimonials" => $testimonial,
            "banner" => $meta
        ], 200);
    }

    public function exchangePage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $exchange = ExchangeRate::where([["status", 1]])->orderBy('ordering', 'desc')->get();
        $fromGroups = ExchangeRate::where('status', 1)
                    ->selectRaw("`from` AS mainFrom, JSON_ARRAYAGG(JSON_OBJECT('id', id, 'from', `from`, 'to', `to`, 'sell', sell, 'buy', buy, 'isTo', 0, 'isMultiply', isMultiply)) AS items")
                    ->groupBy('from')
                    ->orderBy('ordering', 'asc')
                    ->get();
        $toGroups = ExchangeRate::where('status', 1)
                    ->selectRaw("`to` AS mainFrom, JSON_ARRAYAGG(JSON_OBJECT('id', id, 'from', `from`, 'to', `from`, 'sell', sell, 'buy', buy, 'isTo', 1, 'isMultiply', isMultiply)) AS items")
                    ->groupBy('to')
                    ->orderBy('ordering', 'asc')
                    ->get();
        $convert = $fromGroups->concat($toGroups)
                    ->groupBy('mainFrom')
                    ->map(function ($group, $key) {
                        $mergedItems = $group->flatMap(function ($item) {
                            return json_decode($item->items);
                        });

                        return [
                            'mainFrom' => $key,
                            'items' => $mergedItems->values()
                        ];
                    })
                    ->values();
        $currency = CurrencyConvert::where([["status", 1]])->orderBy('ordering', 'desc')->get();
        $currency->each(function($q){
            $q->subCurrency = json_decode($q->subCurrency);
            $q['date'] = Carbon::parse($q->updated_at)->format('j M Y, g:i a');
        });

        $service = SiteSetting::where("type", "SERVICE")->first();
        $service = json_decode($service->content);
        $service->convertSummary = $lang == "KHM" && !empty($service->convertSummaryKm) ? $service->convertSummaryKm : $service->convertSummary;
        $service->description = $lang == "KHM" && !empty($service->descriptionKm) ? $service->descriptionKm : $service->description;
        $service->summary = $lang == "KHM" && !empty($service->summaryKm) ? $service->summaryKm : $service->summary;
        $service->title = $lang == "KHM" && !empty($service->titleKm) ? $service->titleKm : $service->title; 
        
        $meta = PageBanner::where("pageTitle", "ExchangePage")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "exchange" => $exchange,
            "currency" => $currency,
            "convert" => $convert,
            "service" => $service,
            "banner" => $meta
        ], 200);
    }

    public function webHostingPage()
    {
        $webHosting = SiteSetting::where("type", "WEB_HOSTING")->first();
        $meta = PageBanner::where("pageTitle", "WebHostingPage")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "meta" => $meta,
            "defaultPlan" => DefaultPlan::where("isActive", true)->orderBy("ordering", 'asc')->get(),
            "hostingGroup" => PerformanceType::where("isActive", true)->orderBy("ordering", 'asc')->get(),
            "hostingList" => WebHosting::where([["isActive", true]])->orderBy('ordering', 'asc')->get(),
            "settings" => [
                "webHosting" => $webHosting ? json_decode($webHosting->content) : null,
            ]
        ], 200);
    }
    public function aboutUsPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $aboutUs = SiteSetting::where("type", "ABOUTCOMPANY")->first();
        $aboutUs = json_decode($aboutUs->content);
        $aboutUs->subtitle = $lang == "KHM" && !empty($aboutUs->subtitleKm) ? $aboutUs->subtitleKm : $aboutUs->subtitle;
        $aboutUs->aboutCompany = $lang == "KHM" && !empty($aboutUs->aboutCompanyKm) ? $aboutUs->aboutCompanyKm : $aboutUs->aboutCompany;
        $aboutUs->companyName = $lang == "KHM" && !empty($aboutUs->companyNameKm) ? $aboutUs->companyNameKm : $aboutUs->companyName;
        $aboutUs->desMission = $lang == "KHM" && !empty($aboutUs->desMissionKm) ? $aboutUs->desMissionKm : $aboutUs->desMission;
        $aboutUs->desValue = $lang == "KHM" && !empty($aboutUs->desValueKm) ? $aboutUs->desValueKm : $aboutUs->desValue;
        $aboutUs->desVision = $lang == "KHM" && !empty($aboutUs->desVisionKm) ? $aboutUs->desVisionKm : $aboutUs->desVision;
        $aboutUs->subtitleAward = $lang == "KHM" && !empty($aboutUs->subtitleAwardKm) ? $aboutUs->subtitleAwardKm : $aboutUs->subtitleAward;
        $aboutUs->subtitlePartner = $lang == "KHM" && !empty($aboutUs->subtitlePartnerKm) ? $aboutUs->subtitlePartnerKm : $aboutUs->subtitlePartner;
        $aboutUs->summaryAward = $lang == "KHM" && !empty($aboutUs->summaryAwardKm) ? $aboutUs->summaryAwardKm : $aboutUs->summaryAward;
        $aboutUs->titleAward = $lang == "KHM" && !empty($aboutUs->titleAwardKm) ? $aboutUs->titleAwardKm : $aboutUs->titleAward;
        $aboutUs->titleMission = $lang == "KHM" && !empty($aboutUs->titleMissionKm) ? $aboutUs->titleMissionKm : $aboutUs->titleMission;
        $aboutUs->titlePartner = $lang == "KHM" && !empty($aboutUs->titlePartnerKm) ? $aboutUs->titlePartnerKm : $aboutUs->titlePartner;
        $aboutUs->titleValue = $lang == "KHM" && !empty($aboutUs->titleValueKm) ? $aboutUs->titleValueKm : $aboutUs->titleValue;
        $aboutUs->titleVision = $lang == "KHM" && !empty($aboutUs->titleVisionKm) ? $aboutUs->titleVisionKm : $aboutUs->titleVision;

        $partner = Partner::where("isActive",1)->get();
        $awards = Award::where("isActive",1)->orderby('ordering')->get();
        $awards->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title; 
            $q->summary = $lang == "KHM" && !empty($q->summaryKm) ? $q->summaryKm : $q->summary;
            $q->makeHidden("titleKm","summaryKm"); 
        });
        $meta = PageBanner::where("pageTitle", "ABOUT")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "aboutus" => $aboutUs,
            "partners" => $partner,
            "awards" => $awards,
            "banner" => $meta
        ], 200);
    }

    public function whyChoose(Request $request) {
        $lang = $request->header("Accept-Language");
        $why_choose = SiteSetting::where("type", "WHYCHOOSE")->first();
        $why_choose = json_decode($why_choose->content);
        $why_choose->title = $lang == "KHM" && !empty($why_choose->titleKm) ? $why_choose->titleKm : $why_choose->title;
        $why_choose->titleOne = $lang == "KHM" && !empty($why_choose->titleOneKm) ? $why_choose->titleOneKm : $why_choose->titleOne;
        $why_choose->titleTwo = $lang == "KHM" && !empty($why_choose->titleTwoKm) ? $why_choose->titleTwoKm : $why_choose->titleTwo;
        $why_choose->titleThree = $lang == "KHM" && !empty($why_choose->titleThreeKm) ? $why_choose->titleThreeKm : $why_choose->titleThree;
        $why_choose->titleFour = $lang == "KHM" && !empty($why_choose->titleFourKm) ? $why_choose->titleFourKm : $why_choose->titleFour;
        $why_choose->titleFive = $lang == "KHM" && !empty($why_choose->titleFiveKm) ? $why_choose->titleFiveKm : $why_choose->titleFive;
        $why_choose->titleSix = $lang == "KHM" && !empty($why_choose->titleSixKm) ? $why_choose->titleSixKm : $why_choose->titleSix;
        $why_choose->desOne = $lang == "KHM" && !empty($why_choose->desOneKm) ? $why_choose->desOneKm : $why_choose->desOne;
        $why_choose->desTwo = $lang == "KHM" && !empty($why_choose->desTwoKm) ? $why_choose->desTwoKm : $why_choose->desTwo;
        $why_choose->desThree = $lang == "KHM" && !empty($why_choose->desThreeKm) ? $why_choose->desThreeKm : $why_choose->desThree;
        $why_choose->desFour = $lang == "KHM" && !empty($why_choose->desFourKm) ? $why_choose->desFourKm : $why_choose->desFour;
        $why_choose->desFive = $lang == "KHM" && !empty($why_choose->desFiveKm) ? $why_choose->desFiveKm : $why_choose->desFive;
        $why_choose->desSix = $lang == "KHM" && !empty($why_choose->desSixKm) ? $why_choose->desSixKm : $why_choose->desSix;
        $why_choose->subtitle = $lang == "KHM" && !empty($why_choose->subtitleKm) ? $why_choose->subtitleKm : $why_choose->subtitle;
        $why_choose->summary = $lang == "KHM" && !empty($why_choose->summaryKm) ? $why_choose->summaryKm : $why_choose->summary;

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "why_choose" => $why_choose,
        ], 200);
    }

    public function faqPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $category = Category::where("status", 1)->orderby("ordering")->get();
        $category->each(function($q) use ($lang){
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $faq = $q->faq;
            $faq->each(function($query) use ($lang){
                $query->answer = $lang == "KHM" && !empty($query->answerKm) ? $query->answerKm : $query->answer;
                $query->question = $lang == "KHM" && !empty($query->questionKm) ? $query->questionKm : $query->question;
                $query->makeHidden("answerKm","questionKm");
            });
            $q->faq = $faq;
        });
        $meta = PageBanner::where("pageTitle", "FaqPage")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "category" => $category,
            "banner" => $meta
        ], 200);
    }

    public function organizationPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $organization = SiteSetting::where("type", "ORGANIZATION")->first();
        $organization = json_decode($organization->content);
        $organization->des = $lang == "KHM" && !empty($organization->desKm) ? $organization->desKm : $organization->des;
        $banner = PageBanner::where("pageTitle", "ORGANIZATION")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "organization" => $organization,
            "banner" => $banner
        ], 200);
    }

    public function historyPage(Request $request) {
        $lang = $request->header("Accept-Language");
        $history = History::where("isActive",1)->orderby("ordering")->get();
        $history->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->summary = $lang == "KHM" && !empty($q->summaryKm) ? $q->summaryKm : $q->summary;
        });
        $banner = PageBanner::where("pageTitle", "HISTORY")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "history" => $history,
            "banner" => $banner
        ], 200);
    }

    public function teamPage(Request $request) {
        $lang = $request->header("Accept-Language");
        $team = Team::where("isActive",1)->orderby("ordering")->get();
        $team->each(function($q) use ($lang) {
            $q->name = $lang == "KHM" && !empty($q->nameKm) ? $q->nameKm : $q->name;
            $q->position = $lang == "KHM" && !empty($q->positionKm) ? $q->positionKm : $q->position;
            $q->experience = $lang == "KHM" && !empty($q->experienceKm) ? $q->experienceKm : $q->experience;
        });
        $banner = PageBanner::where("pageTitle", "TEAM")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "team" => $team,
            "banner" => $banner
        ], 200);
    }

    public function servicePage(Request $request, $id) {
        $lang = $request->header("Accept-Language");
        $service = Service::findOrFail($id);
        $service->title = $lang == "KHM" && !empty($service->titleKm) ? $service->titleKm : $service->title;
        $service->content = $lang == "KHM" && !empty($service->contentKm) ? $service->contentKm : $service->content;

        $banner = PageBanner::where("pageTitle", "SERVICE")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "service" => $service,
            "banner" => $banner
        ], 200);
    }

    public function productsPage(Request $request) {
        $lang = $request->header("Accept-Language");
        $product = Product::where("status",1)->orderby("ordering")->get();
        $product->each(function($q) use ($lang) {
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->type = $lang == "KHM" && !empty($q->typeKm) ? $q->typeKm : $q->type;
            $q->country = $lang == "KHM" && !empty($q->countryKm) ? $q->countryKm : $q->country;
            $q->gallery = json_decode($q->gallery);
        });
        $banner = PageBanner::where("pageTitle", "PRODUCT")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "products" => $product,
            "banner" => $banner
        ], 200);
    }

    public function productPage(Request $request,$id) {
        $lang = $request->header("Accept-Language");
        $product = Product::findOrFail($id);
        $product->title = $lang == "KHM" && !empty($product->titleKm) ? $product->titleKm : $product->title;
        $product->type = $lang == "KHM" && !empty($product->typeKm) ? $product->typeKm : $product->type;
        $product->country = $lang == "KHM" && !empty($product->countryKm) ? $product->countryKm : $product->country;
        $product->description = $lang == "KHM" && !empty($product->descriptionKm) ? $product->descriptionKm : $product->description;
        $product->gallery = json_decode($product->gallery);
        $banner = PageBanner::where("pageTitle", "PRODUCT")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "products" => $product,
            "banner" => $banner
        ], 200);
    }

    public function tradingPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $trading = SiteSetting::where("type", "TRADING")->first();
        $trading = json_decode($trading->content);
        $trading->subtitle = $lang == "KHM" && !empty($trading->subtitleKm) ? $trading->subtitleKm : $trading->subtitle;
        $trading->title = $lang == "KHM" && !empty($trading->titleKm) ? $trading->titleKm : $trading->title;
        $tradings = Trading::where("status",1)->orderby("ordering")->get();
        $tradings->each(function($q) use ($lang) {
            $q->step = $lang == "KHM" && !empty($q->stepKm) ? $q->stepKm : $q->step;
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->summary = $lang == "KHM" && !empty($q->summaryKm) ? $q->summaryKm : $q->summary;
        });
        $howTrade = SiteSetting::where("type", "HOWTRADE")->first();
        $howTrade = json_decode($howTrade->content);
        $howTrade->des = $lang == "KHM" && !empty($howTrade->desKm) ? $howTrade->desKm : $howTrade->des;
        $howTrade->subtitle = $lang == "KHM" && !empty($howTrade->subtitleKm) ? $howTrade->subtitleKm : $howTrade->subtitle;
        $howTrade->title = $lang == "KHM" && !empty($howTrade->titleKm) ? $howTrade->titleKm : $howTrade->title; 
        $banner = PageBanner::where("pageTitle", "TRADING")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "trading" => $trading,
            "tradings" => $tradings,
            "howTrade" => $howTrade,
            "banner" => $banner
        ], 200);
    }

    public function privacyPolicy(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $privacyPolicy = SiteSetting::where("type", "PRIVACY_POLICY")->first();
        $privacyPolicy = json_decode($privacyPolicy->content);
        $privacyPolicy->description = $lang == "KHM" && !empty($privacyPolicy->descriptionKm) ? $privacyPolicy->descriptionKm : $privacyPolicy->description;
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "privacyPolicy" => $privacyPolicy
        ], 200);
    }
    public function termService()
    {
        $termService = SiteSetting::where("type", "TERM_SERVICE")->first();
        $meta = PageBanner::where("pageTitle", "TermsofServicePage")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "termService" => $termService ? json_decode($termService->content) : null,
            "meta" => $meta
        ], 200);
    }

    public function layouts(Request $request) {
        $contact = SiteSetting::where("type", "CONTACT")->first();
        $general = SiteSetting::where("type", "GENERAL")->first();
        $general = json_decode($general->content);
        $general->teams = Team::where("isActive",1)->count();
        $general->testimonels = Testimonial::where("isActive",1)->count();
        $general->article = News::where("isActive",1)->count();
        $service = Service::select("title","titleKm","id")->where("isActive", 1)->orderby("ordering")->get();
        $contact = json_decode($contact->content);
        $contact->phoneNumber = $contact->phoneNumber ? json_decode($contact->phoneNumber) : null;

        return response()->json([
            'contact' => $contact,
            'general' => $general,
            'services' => $service,
            'status' => 'success'
        ],200);
    }

    public function contactUs(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $contact = SiteSetting::where("type", "CONTACT")->first();
        $contact = json_decode($contact->content);
        $contact->address = $lang == "KHM" && !empty($contact->addressKm) ? $contact->addressKm : $contact->address;
        $contact->subtitle = $lang == "KHM" && !empty($contact->subtitleKm) ? $contact->subtitleKm : $contact->subtitle;
        $contact->title = $lang == "KHM" && !empty($contact->titleKm) ? $contact->titleKm : $contact->title;
        $contact->titlePopup = $lang == "KHM" && !empty($contact->titlePopupKm) ? $contact->titlePopupKm : $contact->titlePopup;
        $contact->summaryPopup = $lang == "KHM" && !empty($contact->summaryPopupKm) ? $contact->summaryPopupKm : $contact->summaryPopup;
        $contact->phoneNumber = json_decode($contact->phoneNumber);
        $meta = PageBanner::where("pageTitle", "ContactPage")->first();

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "contact" => $contact,
            "pageBanner" => $meta
        ], 200);
    }

    public function individualPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $individual = SiteSetting::where("type", "INDIVIDUAL")->first();
        $individual = json_decode($individual->content);
        $individual->subtitle = $lang == "KHM" && !empty($individual->subtitleKm) ? $individual->subtitleKm : $individual->subtitle;
        $individual->title = $lang == "KHM" && !empty($individual->titleKm) ? $individual->titleKm : $individual->title;
        $individual->summary = $lang == "KHM" && !empty($individual->summaryKm) ? $individual->summaryKm : $individual->summary;
        $meta = PageBanner::where("pageTitle", "Individual")->first();

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "individual" => $individual,
            "pageBanner" => $meta
        ], 200);
    }

    public function tradingApiData()
    {
        $data = Cache::get('external_latest');
        return response()->json(['data' => $data]);
    }

    public function tradingGraphData() {
        $data = PriceHistory::selectRaw("
                pair,
                MIN(bid) as low, 
                MAX(bid) as high, 
                SUBSTRING_INDEX(GROUP_CONCAT(bid ORDER BY recorded_at ASC), ',', 1) as open,
                SUBSTRING_INDEX(GROUP_CONCAT(bid ORDER BY recorded_at DESC), ',', 1) as close,
                FLOOR(UNIX_TIMESTAMP(recorded_at) / 60) * 60 as time_bucket,
                MAX(recorded_at) as real_time
            ")
            ->where('recorded_at', '>', now()->subHours(2))
            ->groupBy('pair', 'time_bucket')
            ->orderBy('time_bucket', 'asc')
            ->get();

        return response()->json(['graph' => $data]);
    }

    public function corparatePage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $corparate = SiteSetting::where("type", "CORPORATE")->first();
        $corparate = json_decode($corparate->content);
        $corparate->subtitle = $lang == "KHM" && !empty($corparate->subtitleKm) ? $corparate->subtitleKm : $corparate->subtitle;
        $corparate->title = $lang == "KHM" && !empty($corparate->titleKm) ? $corparate->titleKm : $corparate->title;
        $corparate->summary = $lang == "KHM" && !empty($corparate->summaryKm) ? $corparate->summaryKm : $corparate->summary;
        $meta = PageBanner::where("pageTitle", "Corporate")->first();

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "corparate" => $corparate,
            "pageBanner" => $meta
        ], 200);
    }

    public function sendingEmail(Request $request)
    {
        $contact = SiteSetting::where("type", "CONTACT")->first();
        $contactForm = $contact ? json_decode($contact->content) : null;

        $email = $request->email;
        $subject = $request->subject;
        \Mail::send(
            'email',
            array(
                'name' => $request->firstname . $request->lastname,
                'email' => $email,
                'number' => $request->phone,
                'subject' => $subject,
                'text' => $request->message,
            ),
            function ($message) use ($email, $subject, $contactForm) {
                $message->from('contact-form@camgotech.com');
                $message->subject($subject);
                $message->to($contactForm ? $contactForm->contactFormEmail : 'info@camgotech.com');
            }
        );

        return response(['status' => true, 'message' => "Send Email Successfully", "data" => $contactForm->contactFormEmail]);
    }
}
