<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 1; $i <= 100; $i++) {
            Product::create([
                'name' => 'Product ' . $i, // Unique name
                'description' => 'Description for Product ' . $i,
                'price' => rand(50, 500), // Random price between 50-500
                'stock' => rand(1, 50), // Random stock between 1-50
            ]);
        }
    }
}
