<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cache;

class TradingApiService
{
    public function fetch()
    {
        $response = Http::withHeaders([
            'TokenId' => config('services.external.key'),
        ])->get(config('services.external.url'));

        return $response->successful() ? $response->json() : null;
    }
}
