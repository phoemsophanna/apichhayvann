<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Cache;
use App\Models\PriceHistory;

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
                $batch = Cache::get('price_history_buffer', []);

                foreach ($data as $item) {
                    if ($item['PAIR'] === 'XAUUSD') {
                        $batch[] = [
                            'pair'        => $item['PAIR'],
                            'bid'         => $item['BID'],
                            'ask'         => $item['ASK'],
                            'recorded_at' => now()->toDateTimeString(),
                        ];
                    }
                }

                Cache::put('price_history_buffer', $batch, now()->addMinutes(2));
            }

            if (now()->second === 0) {
                $this->flushBufferToDatabase();
            }

            $sleepTime = 1000000 - ((microtime(true) - $startTime) * 1000000);
            if ($sleepTime > 0) usleep($sleepTime);
        }
    }

    protected function flushBufferToDatabase()
    {
        $insertData = Cache::pull('price_history_buffer', []);

        if (empty($insertData)) return;

        PriceHistory::insert($insertData);
        
        PriceHistory::where('recorded_at', '<', now()->subHours(1))
            ->delete();
    }
}
