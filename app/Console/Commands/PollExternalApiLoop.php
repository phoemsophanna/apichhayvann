<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\TradingApiService;
use Illuminate\Support\Facades\Cache;
use App\Events\PriceUpdated;
use App\Models\PriceHistory;

class PollExternalApiLoop extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'poll:external';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Poll external API every second';

    /**
     * Execute the console command.
     */
    public function handle(TradingApiService $service)
    {
        while (true) {
            $data = $service->fetch();
            if ($data) {
                Cache::put('external_latest', $data, 2);
                broadcast(new PriceUpdated($data));
            }
            sleep(1);
        }
    }
}
