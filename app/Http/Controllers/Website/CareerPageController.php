<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Career;
use App\Models\SiteSetting;
use App\Models\PageBanner;
use App\Models\CareerApply;
use Illuminate\Http\Request;
use App\Services\FileService;
use Carbon\Carbon;

class CareerPageController extends Controller
{
    public function index(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $careers = Career::where([["isActive", true]])->orderBy('ordering', 'asc')->get();
        $careers->each(function($q) use ($lang){
            $q->title = $lang == "KHM" && !empty($q->titleKm) ? $q->titleKm : $q->title;
            $q->location = $lang == "KHM" && !empty($q->locationKm) ? $q->locationKm : $q->location;
            $q->deadline = Carbon::parse($q->deadline)->format("F d, Y");
        });
        $career = SiteSetting::where("type","CAREER")->first();
        $career = json_decode($career->content);
        $career->subtitle = $lang == "KHM" && !empty($career->subtitleKm) ? $career->subtitleKm : $career->subtitle;
        $career->title = $lang == "KHM" && !empty($career->titleKm) ? $career->titleKm : $career->title;
        $career->summary = $lang == "KHM" && !empty($career->summaryKm) ? $career->summaryKm : $career->summary;
        $meta = PageBanner::where("pageTitle", "CareerPage")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "careers" => $careers,
            "career" => $career,
            "banner" => $meta
        ], 200);
    }

    public function show(Request $request, $id)
    {
        $lang = $request->header("Accept-Language");
        $career = Career::find($id);
        $career->title = $lang == "KHM" && !empty($career->titleKm) ? $career->titleKm : $career->title;
        $career->location = $lang == "KHM" && !empty($career->locationKm) ? $career->locationKm : $career->location;
        $career->des = $lang == "KHM" && !empty($career->desKm) ? $career->desKm : $career->des;
        $career->content = $lang == "KHM" && !empty($career->contentKm) ? $career->contentKm : $career->content;
        $career->deadline = Carbon::parse($career->deadline)->format("F d, Y");
        
        $meta = PageBanner::where("pageTitle", "CareerPage")->first();
        if (!$career) {
            return response()->json([
                "status" => "failed",
                "message" => "Load data failed",
                "data" => null,
                "relatedCareers" => []
            ], 200);
        }
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "career" => $career,
            "banner" => $meta
        ], 200);
    }

    public static function save($data){
        try {
            $result = CareerApply::create($data);
        } catch (\Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }

        return true;
    }

    public function sendingCareer(Request $request) {
        $contact = SiteSetting::where("type", "CONTACT")->first();
        $contactForm = $contact ? json_decode($contact->content) : null;
        
        $request->validate([
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'email' => 'required|email',
            'phoneNumber' => 'required|string',
            'message' => 'required|string',
            'fileCV' => 'nullable|file|mimes:pdf,doc,docx|max:2048',
            'captcha' => 'required|string' 
        ]);
        
        $cvPath = null;
        if ($request->hasFile('fileCV')) {
            try {
                $cvPath = FileService::save("/cvs", $request->file('fileCV'));
            } catch (\Exception $th) {
                return response()->json(["status" => "fail", "message" => $th->getMessage()]);
            }
        }

        $dataForm = [
            "firstname" => $request->firstname,
            "lastname" => $request->lastname,
            "phoneNumber" => $request->phoneNumber,
            "email" => $request->email,
            "fileCv" => $cvPath,
            "message" => $request->message,
            "careerId" => $request->careerId
        ];

        $result = $this->save($dataForm);

        if(!$result){
            return response()->json(["status" => "fail", "message" => "submit form have something error!"]);
        }

        $email = $request->email;
        $subject = "Career Application";

        \Mail::send(
            'email',
            array(
                'name' => $request->firstname . ' ' . $request->lastname,
                'email' => $email,
                'number' => $request->phoneNumber,
                'subject' => $subject,
                'text' => $request->message,
            ),
            function ($message) use ($email, $subject, $contactForm, $cvPath) {
                $message->from('contact-form@camgotech.com');
                $message->subject($subject);
                $message->attach(public_path('uploads/' . $cvPath));
                $message->to($contactForm ? $contactForm->sendingCareer : 'info@camgotech.com');
            }
        );

        return response()->json(['status' => "success", "message" => "send email is successfully!"]);
    }
}
