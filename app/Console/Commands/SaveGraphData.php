<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Redis;
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
    public function handle()
    {
        while (true) {

            $startTime = microtime(true);

            $data = Cache::get('external_latest');

            if ($data) {

                foreach ($data as $item) {

                    if ($item['PAIR'] === 'XAUUSD') {

                        $timestamp = now()->timestamp;

                        $record = json_encode([
                            'pair' => $item['PAIR'],
                            'bid'  => $item['BID'],
                            'ask'  => $item['ASK'],
                            'recorded_at' => now()->toDateTimeString()
                        ]);

                        Redis::zadd('price_history_xauusd', $timestamp, $record);

                        Redis::zremrangebyscore(
                            'price_history_xauusd',
                            0,
                            now()->subHours(2)->timestamp
                        );
                    }
                }
            }

            $sleepTime = 1000000 - ((microtime(true) - $startTime) * 1000000);

            if ($sleepTime > 0) {
                usleep($sleepTime);
            }
        }
    }
}
