<?php

/**
 * ProductWebController
 *
 * This controller handles product management for the web interface,
 * including listing, creating, editing, and updating product details.
 *
 * PHP version 8.2.0
 *
 * @category  Controller
 * @package   Bytequest
 * @author    Your Name
 * @license   MIT License
 * @link      https://example.com
 */

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

/**
 * Class ProductWebController
 *
 * Handles product-related operations for the web application.
 */
class ProductWebController extends Controller
{
    /**
     * Display a listing of products.
     *
     * @return \Illuminate\View\View
     */
    public function index()
{
    $products = Product::orderBy('id', 'DESC')->get(); // Corrected order
    return view('products.index', compact('products'));
}


    /**
     * Show the form for creating a new product.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created product in the database.
     *
     * @param StoreProductRequest $request Validated product request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(StoreProductRequest $request)
    {
        Product::create($request->validated());

        return redirect()->route('products.index')->with('success', 'Product created successfully');
    }

    /**
     * Show the form for editing the specified product.
     *
     * @param int $id Product ID
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $product = Product::findOrFail($id);
        return view('products.edit', compact('product'));
    }

    /**
     * Update the specified product in the database.
     *
     * @param UpdateProductRequest $request Validated update request
     * @param int                  $id      Product ID
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateProductRequest $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->update($request->validated());

        return redirect()->route('products.index')->with('success', 'Product updated successfully!');
    }

    /**
     * Remove the specified product from the database.
     *
     * @param int $id Product ID
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Product::destroy($id);
        return redirect()->route('products.index')->with('success', 'Product deleted successfully');
    }
}
