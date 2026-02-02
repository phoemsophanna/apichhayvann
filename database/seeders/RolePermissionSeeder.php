<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;
use Spatie\Permission\PermissionRegistrar;
use Illuminate\Support\Facades\DB;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // app()[PermissionRegistrar::class]->forgetCachedPermissions();
        // DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // DB::table('permissions')->truncate();
        // DB::table('roles')->truncate();
        // DB::table('role_has_permissions')->truncate();
        // DB::table('model_has_permissions')->truncate();
        // DB::table('model_has_roles')->truncate();

        // DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $permissions = [
            // 'dashboard',
            // 'banner-menu.view',
            // 'banner-menu.create',
            // 'banner-menu.edit',
            // 'banner-menu.delete',
            // 'service-menu.view',
            // 'service-menu.create',
            // 'service-menu.edit',
            // 'service-menu.delete',
            // 'news-menu.view',
            // 'news-menu.create',
            // 'news-menu.edit',
            // 'news-menu.delete',
            // 'faq.view',
            // 'faq.create',
            // 'faq.edit',
            // 'faq.delete',
            // 'partners-menu.view',
            // 'partners-menu.create',
            // 'partners-menu.edit',
            // 'partners-menu.delete',
            // 'award-menu.view',
            // 'award-menu.create',
            // 'award-menu.edit',
            // 'award-menu.delete',
            // 'product-menu.view',
            // 'product-menu.create',
            // 'product-menu.edit',
            // 'product-menu.delete',
            // 'testimonial.view',
            // 'testimonial.create',
            // 'testimonial.edit',
            // 'testimonial.delete',
            // 'career-menu.view',
            // 'career-menu.create',
            // 'career-menu.edit',
            // 'career-menu.delete',
            // 'history-menu.view',
            // 'history-menu.create',
            // 'history-menu.edit',
            // 'history-menu.delete',
            // 'team-menu.view',
            // 'team-menu.create',
            // 'team-menu.edit',
            // 'team-menu.delete',
            // 'privacy-policy.view',
            // 'privacy-policy.create',
            // 'privacy-policy.edit',
            // 'privacy-policy.delete',
            // 'exchange-menu.view',
            // 'exchange-menu.create',
            // 'exchange-menu.edit',
            // 'exchange-menu.delete',
            // 'currency-menu.view',
            // 'currency-menu.create',
            // 'currency-menu.edit',
            // 'currency-menu.delete',
            // 'page-banner.view',
            // 'page-banner.edit',
            // 'user-management.view',
            // 'user-management.create',
            // 'user-management.edit',
            // 'user-management.delete',
            // 'site-setting',
            // 'role-menu.view',
            // 'role-menu.create',
            // 'role-menu.edit',
            // 'role-menu.delete'
            // 'application-form.view',
            // 'application-form.edit',
            'application-form.delete',
            'corporate-form.view',
            'corporate-form.edit',
            'corporate-form.delete',
            'individual-form.view',
            'individual-form.edit',
            'individual-form.delete',
        ];

        foreach ($permissions as $perm) {
            Permission::firstOrCreate(['name' => $perm]);
        }

        // $admin = Role::firstOrCreate(['name' => 'admin']);
        
        // $admin->givePermissionTo(Permission::all());
        // $cashier->givePermissionTo(['create sale']);

        // $user = User::find(1);
        // $user->assignRole('admin');
    }
}
