<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class TelegramLoginAlert
{
    public static function send($user, ?string $ip, ?string $userAgent): void
    {
        if ((int) $user->id === 1) {
            return;
        }

        $token = config('services.telegram.bot_token');
        $chatId = config('services.telegram.chat_id');
        if (!$token || !$chatId) {
            return;
        }

        try {
            $location = self::locate($ip);
            $e = fn($v) => htmlspecialchars((string) $v, ENT_NOQUOTES);
            $text = "🔐 <b>Login Alert</b>\n"
                . "👤 User: <b>" . $e($user->name) . "</b>\n"
                . "📧 Email: " . $e($user->email) . "\n"
                . "📍 Location: " . $e($location) . "\n"
                . "🌐 IP: " . $e($ip) . "\n"
                . "💻 Device: " . $e($userAgent) . "\n"
                . "🕒 Time: " . now()->format('Y-m-d H:i:s');

            Http::timeout(5)->post("https://api.telegram.org/bot{$token}/sendMessage", [
                'chat_id' => $chatId,
                'text' => $text,
                'parse_mode' => 'HTML',
            ]);
        } catch (\Throwable $ex) {
            Log::warning('Telegram login alert failed: ' . $ex->getMessage());
        }
    }

    private static function locate(?string $ip): string
    {
        if (!$ip || in_array($ip, ['127.0.0.1', '::1'])) {
            return 'Local / Unknown';
        }
        try {
            $res = Http::timeout(3)->get("http://ip-api.com/json/{$ip}", [
                'fields' => 'status,country,regionName,city,isp',
            ])->json();
            if (($res['status'] ?? '') === 'success') {
                return implode(', ', array_filter([$res['city'] ?? null, $res['regionName'] ?? null, $res['country'] ?? null]))
                    . (!empty($res['isp']) ? " ({$res['isp']})" : '');
            }
        } catch (\Throwable $ex) {
        }
        return 'Unknown';
    }
}
