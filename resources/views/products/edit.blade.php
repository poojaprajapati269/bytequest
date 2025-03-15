@extends('layouts.app')

@section('title', 'Edit Product')

@section('content')
<div class="container">
    <h2 class="text-center">Edit Product</h2>
    <form action="{{ route('products.update', $product->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label class="form-label">Product Name</label>
            <input type="text" name="name" value="{{ $product->name }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea name="description" class="form-control" required>{{ $product->description }}</textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Price</label>
            <input type="number" name="price" value="{{ $product->price }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Stock</label>
            <input type="number" name="stock" value="{{ $product->stock }}" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Update Product</button>
    </form>
</div>
@endsection
