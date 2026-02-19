<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\FileService;
use App\Models\Corporate;
use App\Models\SiteSetting;

class OpenAccountController extends Controller
{
    public function saveIndividual(Request $request) {
        $request->validate([
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'email' => 'required|email',
            'phoneNumber' => 'required|string',
            'date' => 'required|string',
            'nidNumber' => 'required|string',
            'front' => 'required',
            'captcha' => 'required|string' 
        ]);
        
        $front = null;
        if ($request->hasFile('front')) {
            try {
                $front = FileService::save("/individual", $request->file('front'));
            } catch (\Exception $th) {
                return response()->json(["status" => "fail", "message" => $th->getMessage()]);
            }
        }

        $back = null;
        if ($request->hasFile('back')) {
            try {
                $back = FileService::save("/individual", $request->file('back'));
            } catch (\Exception $th) {
                return response()->json(["status" => "fail", "message" => $th->getMessage()]);
            }
        }

        $privacy = $request->privacy ? json_encode($request->privacy) : json_encode([]);

        $dataForm = [
            "firstname" => $request->firstname,
            "lastname" => $request->lastname,
            "phone" => $request->phoneNumber,
            "email" => $request->email,
            "date" => $request->date,
            "nidNumber" => $request->nidNumber,
            "frontCard" => $front,
            "backCard" => $back,
            "privacy" => $privacy
        ];

        try {
            $result = Individual::create($dataForm);
            $this->sendingIndividual($dataForm);
        } catch (\Exception $th) {
            return response()->json(["status" => "fail", "message" => $th->getMessage()]);   
        }

        return response()->json(['status' => "success", "message" => "Save is successfully!"]);
    }

    public static function sendingIndividual($data) {
        $contact = SiteSetting::where("type", "CONTACT")->first();
        $contactForm = $contact ? json_decode($contact->content) : null;

        $email = $data->email;
        $subject = "Register Individual Account";

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
                $message->to($contactForm ? $contactForm->contactFormEmail : 'info@camgotech.com');
            }
        );
    } 

    public function saveCorparate(Request $request) {
        $request->validate([
            'name' => 'required|string|max:255',
            'contactName' => 'required|string|max:255',
            'phone' => 'required|string',
            'certNumber' => 'required|string',
            'certFile' => 'required',
            'captcha' => 'required|string' 
        ]);
        
        $certFile = null;
        if ($request->hasFile('certFile')) {
            try {
                $certFile = FileService::save("/corporate", $request->file('certFile'));
            } catch (\Exception $th) {
                return response()->json(["status" => "fail", "message" => $th->getMessage()]);
            }
        }

        $privacy = $request->privacy ? json_encode($request->privacy) : json_encode([]);

        $dataForm = [
            "companyName" => $request->name,
            "certificateNumber" => $request->certNumber,
            "contactName" => $request->contactName,
            "phone" => $request->phone,
            "email" => $request->email,
            "file" => $certFile,
            "privacy" => $privacy
        ];

        try {
            $result = Corporate::create($dataForm);
        } catch (\Exception $th) {
            return response()->json(["status" => "fail", "message" => $th->getMessage()]);   
        }

        return response()->json(['status' => "success", "message" => "Save is successfully!"]);
    }
}
