<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new \App\Product([
            'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg',
            'title' => 'Harry Potter',
            'description' => 'Super cool -at least as a child',
            'price' => 10
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg',
            'title' => 'Harry Potter',
            'description' => 'Super cool -at least as a child',
            'price' => 10
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg',
            'title' => 'Harry Potter',
            'description' => 'Super cool -at least as a child',
            'price' => 10
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg',
            'title' => 'Harry Potter',
            'description' => 'Super cool -at least as a child',
            'price' => 10
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855942_309034.jpeg',
            'title' => 'Harry Potter',
            'description' => 'Super cool -at least as a child',
            'price' => 10
        ]);
        $product->save();
    
    }
}
