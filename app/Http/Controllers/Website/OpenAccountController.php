<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

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
            'front' => 'nullable|file|mimes:pdf,doc,docx|max:2048',
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
        } catch (\Throwable $th) {
            return response()->json(["status" => "fail", "message" => "submit form have something error!"]);   
        }

        return response()->json(['status' => "success", "message" => "Save is successfully!"]);
    }
}
