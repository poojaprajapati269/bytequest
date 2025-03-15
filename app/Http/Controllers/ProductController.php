<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return response()->json(Product::all());
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'name' => 'required|string|max:255|unique:products,name',
                'description' => 'required|string',
                'price' => 'required|numeric|min:1',
                'stock' => 'required|integer|min:0',
            ]);

            $product = Product::create($validated);
            return response()->json(['message' => 'Product created successfully', 'product' => $product], 201);

        } catch (\Illuminate\Validation\ValidationException $ex) {
            return response()->json(['errors' => $ex->errors()], 422);
        } catch (\Exception $ex) {
            return response()->json(['error' => 'Something went wrong', 'message' => $ex->getMessage()], 500);
        }
    }


    public function show($id)
    {
        return response()->json(Product::findOrFail($id));
    }

    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->update($request->all());

        return response()->json($product);
    }

    public function destroy($id)
    {
        Product::destroy($id);
        return response()->json(['message' => 'Product deleted successfully']);
    }
}
