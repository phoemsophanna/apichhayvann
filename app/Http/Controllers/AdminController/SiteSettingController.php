<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class SiteSettingController extends Controller
{
    public function index($type)
    {
        $model = SiteSetting::where('type', 'LIKE', $type)->first();
        if (!$model) {
            return response()->json([
                'message' => 'Get detail failed.',
                'status' => 'failed',
                'model' => null
            ], 200);
        }
        $model->content = json_decode($model->content);
        return response()->json([
            'message' => 'Get detail success.',
            'status' => 'success',
            'model' => $model
        ], 200);
    }

    public function onSave(Request $req)
    {
        $item = [];
        switch ($req->type) {
            case 'ABOUTCOMPANY':
                $item = $this->_aboutCompany($req);
                break;
            case 'HOMEPAGE':
                $item = $this->_homepage($req);
                break;
            case 'HOWTRADE':
                $item = $this->_howTrade($req);
                break;
            case 'SERVICE':
                $item = $this->_service($req);
                break;
            case 'WHYCHOOSE':
                $item = $this->_whyChooseUs($req);
                break;
            case 'ORGANIZATION':
                $item = $this->_organization($req);
                break;
            case 'CONTACT':
                $item = $this->_contact($req);
                break;
            case 'TRADING':
                $item = $this->_trading($req);
                break;
            case 'TERM_SERVICE':
                $item = $this->_termService($req);
                break;
            case 'PRIVACY_POLICY':
                $item = $this->_privacyPolicy($req);
                break;
            case 'CAREER':
                $item = $this->_career($req);
                break;
            case 'GENERAL':
                $item = $this->_general($req);
                break;
            default:
                $item = [];
                break;
        }

        $model = SiteSetting::where('type', $req->type)->first();
        if ($model) {
            $model->update(["content" => json_encode($item)]);
        } else {
            SiteSetting::create(["type" => $req->type, "content" => json_encode($item)]);
        }

        return response()->json([
            'message' => 'Save record is successfully.',
            'status' => 'success'
        ], 200);
    }

    private function _general(Request $body) 
    {
        return [
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "summary" => $body->summary ?: "",
            "summaryKm" => $body->summaryKm ?: "",
            "keyword" => $body->keyword ?: "",
            "logo_header" => $body->logo_header ?: "",
            "logo_footer" => $body->logo_footer ?: ""
        ];
    }

    private function _aboutCompany(Request $body)
    {
        return [
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "companyName" => $body->companyName ?: "",
            "companyNameKm" => $body->companyNameKm ?: "",
            "aboutCompany" => $body->aboutCompany ?: "",
            "aboutCompanyKm" => $body->aboutCompanyKm ?: "",
            "titleVision" => $body->titleVision ?: "",
            "titleVisionKm" => $body->titleVisionKm ?: "",
            "desVision" => $body->desVision ?: "",
            "desVisionKm" => $body->desVisionKm ?: "",
            "titleMission" => $body->titleMission ?: "",
            "titleMissionKm" => $body->titleMissionKm ?: "",
            "desMission" => $body->desMission ?: "",
            "desMissionKm" => $body->desMissionKm ?: "",
            "titleValue" => $body->titleValue ?: "",
            "titleValueKm" => $body->titleValueKm ?: "",
            "desValue" => $body->desValue ?: "",
            "desValueKm" => $body->desValueKm ?: "",
            "subtitlePartner" => $body->subtitlePartner ?: "",
            "subtitlePartnerKm" => $body->subtitlePartnerKm ?: "",
            "titlePartner" => $body->titlePartner ?: "",
            "titlePartnerKm" => $body->titlePartnerKm ?: "",
            "valuePartner" => $body->valuePartner ?: "",
            "subtitleAward" => $body->subtitleAward ?: "",
            "subtitleAwardKm" => $body->subtitleAwardKm ?: "",
            "titleAward" => $body->titleAward ?: "",
            "titleAwardKm" => $body->titleAwardKm ?: "",
            "summaryAward" => $body->summaryAward ?: "",
            "summaryAwardKm" => $body->summaryAwardKm ?: "",
            "thumbnail" => $body->thumbnail ?: "",
            "image2" => $body->image2 ?: "",
            "image3" => $body->image3 ?: "",
            "image4" => $body->image4 ?: "",
            "image5" => $body->image5 ?: "",
        ];
    }

    private function _homepage(Request $body) 
    {
        return [
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "companyName" => $body->companyName ?: "",
            "companyNameKm" => $body->companyNameKm ?: "",
            "aboutCompany" => $body->aboutCompany ?: "",
            "aboutCompanyKm" => $body->aboutCompanyKm ?: "",
            "subtitleTwo" => $body->subtitleTwo ?: "",
            "subtitleTwoKm" => $body->subtitleTwoKm ?: "",
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "summary" => $body->summary ?: "",
            "summaryKm" => $body->summaryKm ?: "",
            "thumbnail" => $body->thumbnail ?: "",
        ];
    }

    private function _trading(Request $body) 
    {
        return [
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: ""
        ];
    }

    private function _career(Request $body) 
    {
        return [
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "summary" => $body->summary ?: "",
            "summaryKm" => $body->summaryKm ?: ""
        ];
    }

    private function _howTrade(Request $body) {
        return [
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "des" => $body->des ?: "",
            "desKm" => $body->desKm ?: "",
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "linkVideo" => $body->linkVideo ?: "",
            "link" => $body->link ?: "",
            "thumbnail" => $body->thumbnail ?: "",
        ];
    }

    private function _organization(Request $body) {
        return [
            "des" => $body->des ?: "",
            "desKm" => $body->desKm ?: "",
        ];
    }

    private function _whoWeAre(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: "",
            "thumbnail" => $body->thumbnail ?: ""
        ];
    }
    private function _skillset(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: "",
            "thumbnail" => $body->thumbnail ?: ""
        ];
    }
    private function _ourGoal(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: "",
            "thumbnail" => $body->thumbnail ?: "",
            "vision" => $body->vision ?: "",
            "mission" => $body->mission ?: "",
            "ourvalue" => $body->ourvalue ?: "",
            "thumbnailTwo" => $body->thumbnailTwo ?: ""
        ];
    }

    private function _service(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "summary" => $body->summary ?: "",
            "summaryKm" => $body->summaryKm ?: "",
            "convertSummary" => $body->convertSummary ?: "",
            "convertSummaryKm" => $body->convertSummaryKm ?: "",
            "description" => $body->description ?: "",
            "descriptionKm" => $body->descriptionKm ?: "",
            "thumbnail" => $body->thumbnail ?: ""
        ];
    }
    
    private function _whyChooseUs(Request $body)
    {
        return [
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "summary" => $body->summary ?: "",
            "summaryKm" => $body->summaryKm ?: "",
            "titleOne" => $body->titleOne ?: "",
            "titleOneKm" => $body->titleOneKm ?: "",
            "titleTwo" => $body->titleTwo ?: "",
            "titleTwoKm" => $body->titleTwoKm ?: "",
            "titleThree" => $body->titleThree ?: "",
            "titleThreeKm" => $body->titleThreeKm ?: "",
            "titleFour" => $body->titleFour ?: "",
            "titleFourKm" => $body->titleFourKm ?: "",
            "titleFive" => $body->titleFive ?: "",
            "titleFiveKm" => $body->titleFiveKm ?: "",
            "titleSix" => $body->titleSix ?: "",
            "titleSixKm" => $body->titleSixKm ?: "",
            "desOne" => $body->desOne ?: "",
            "desOneKm" => $body->desOneKm ?: "",
            "desTwo" => $body->desTwo ?: "",
            "desTwoKm" => $body->desTwoKm ?: "",
            "desThree" => $body->desThree ?: "",
            "desThreeKm" => $body->desThreeKm ?: "",
            "desFour" => $body->desFour ?: "",
            "desFourKm" => $body->desFourKm ?: "",
            "desFive" => $body->desFive ?: "",
            "desFiveKm" => $body->desFiveKm ?: "",
            "desSix" => $body->desSix ?: "",
            "desSixKm" => $body->desSixKm ?: "",
            "image" => $body->image ?: "",
            "image2" => $body->image2 ?: "",
            "image3" => $body->image3 ?: "",
            "image4" => $body->image4 ?: "",
            "image5" => $body->image5 ?: "",
            "image6" => $body->image6 ?: ""
        ];
    }

    private function _project(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _testimonial(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _webHosting(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _techNews(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _contact(Request $body)
    {
        return [
            'email1' => $body->email1 ?: "",
            'email2' => $body->email2 ?: "",
            'working1' => $body->working1 ?: "",
            'working2' => $body->working2 ?: "",
            'phoneNumber' => $body->phoneNumber ?: "",
            'address' => $body->address ?: "",
            'addressKm' => $body->addressKm ?: "",
            'embedMap' => $body->embedMap ?: "",
            'facebookLink' => $body->facebookLink ?: "",
            'instagramLink' => $body->instagramLink ?: "",
            'telegramLink' => $body->telegramLink ?: "",
            'linkedinLink' => $body->linkedinLink ?: "",
            'youtube' => $body->youtube ?: "",
            'appId' => $body->appId ?: "",
            'pageId' => $body->pageId ?: "",
            "thumbnail" => $body->thumbnail ?: "",
            "subtitle" => $body->subtitle ?: "",
            "subtitleKm" => $body->subtitleKm ?: "",
            "title" => $body->title ?: "",
            "titleKm" => $body->titleKm ?: "",
            "titlePopup" => $body->titlePopup ?: "",
            "titlePopupKm" => $body->titlePopupKm ?: "",
            "summaryPopup" => $body->summaryPopup ?: "",
            "summaryPopupKm" => $body->summaryPopupKm ?: "",
        ];
    }

    private function _termService(Request $body)
    {
        return [
            "thumbnail" => $body->thumbnail ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _privacyPolicy(Request $body)
    {
        return [
            "thumbnail" => $body->thumbnail ?: "",
            "description" => $body->description ?: ""
        ];
    }
}
