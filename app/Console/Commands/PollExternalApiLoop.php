<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\TradingApiService;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File;

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
            }
            sleep(1);
        }

        while (true) {
            $data = $service->fetch();
            $line = now()->format('H:i') . ',' . json_encode($data) . "\n";
            File::append(storage_path('logs/price.log'), $line);

            // optional: keep only last 2 hours
            $lines = File::lines(storage_path('logs/price.log'));
            $keep = [];
            foreach($lines as $line) {
                [$time, $json] = explode(',', $line, 2);
                if(\Carbon\Carbon::createFromFormat('H:i', $time)->gt(now()->subHours(2))) {
                    $keep[] = $line;
                }
            }
            File::put(storage_path('logs/price.log'), implode("\n", $keep)."\n");
            sleep(30);
        }
    }
}
