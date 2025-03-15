<?php

/**
 * ProductController File
 *
 * PHP version 8.2.0
 *
 * @category  Controller
 * @package   Bytequest
 * @author    Your Name <bytequest@dummy.com>
 * @license   MIT License
 * @link      https://example.com
 */

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

/**
 * ProductController File
 *
 * PHP version 8.2.0
 *
 * @category  Controller
 * @package   Bytequest
 * @author    Your Name <bytequest@dummy.com>
 * @license   MIT License
 * @link      https://example.com
 */

class ProductController extends Controller
{
    /**
     * get All Product Data In JSON Response.
     *
     * @return @JSON Response
     */
    public function index()
    {
        return response()->json(Product::all());
    }

    /**
     * Store the Product Data in database use API.
     *
     * @param \Illuminate\Http\Request $request The request instance
     *
     * @return @JSON Response
     */

     public function store(StoreProductRequest $request)
     {
         // If validation fails, Laravel will automatically return a 422 JSON response
         $product = Product::create($request->validated());

         return response()->json([
             'message' => 'Product created successfully',
             'product' => $product
         ], 201);
     }

     /**
     * Fetch Product Data use API.
     *
     * @param $id.
     *
     * @return @JSON Response
     */

    public function show($id)
    {
        return response()->json(Product::findOrFail($id));
    }

    /**
     * Update Product Data use API.
     *
     * @param \Illuminate\Http\Request $request The request instance
     *
     * @return @JSON Response
     */

    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->update($request->all());

        return response()->json($product);
    }

    /**
     * Delete Product Data use API.
     *
     * @param $id
     *
     * @return @JSON Response
     */

     public function destroy($id)
     {
         $product = Product::find($id);

         if (!$product) {
             return response()->json(['message' => 'Product not found'], 404);
         }

         $product->delete();

         return response()->json(['message' => 'Product deleted successfully'], 200);
     }
}
