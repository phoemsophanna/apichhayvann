<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Cache;

class SaveGraphData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:save-graph-data';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle(TradingApiService $service)
    {
        while (true) {
            $data = Cache::put('external_latest');
            if (!$data) {
                sleep(15);
                continue;
            }

            $time = now();

            foreach ($data as $item) {
                if ($item['PAIR'] === 'XAUUSD') {
                    PriceHistory::create([
                        'pair'        => $item['PAIR'],
                        'bid'         => $item['BID'],
                        'ask'         => $item['ASK'],
                        'recorded_at' => $time,
                    ]);
                }
            }

            PriceHistory::where('recorded_at', '<', now()->subHours(2))->delete();

            sleep(15);
        }
    }
}
