@extends('layouts.app')

@section('title', 'Product List')

@section('content')
    <div class="container">
        <h2 class="text-center">Product List</h2>
        <table class="table table-bordered mt-3">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Stock</th>
                    <th>Actions</th>  {{-- New Column for Actions --}}
                </tr>
            </thead>
            <tbody id="productTable">
                <!-- Data will be loaded dynamically -->
            </tbody>
        </table>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            fetch("{{ url('/api/products') }}")
                .then(response => response.json())
                .then(data => {
                    let table = document.getElementById('productTable');
                    data.forEach(product => {
                        let row = `<tr>
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.description}</td>
                            <td>${product.price}</td>
                            <td>${product.stock}</td>
                            <td>
                                <button class="btn btn-danger btn-sm" onclick="deleteProduct(${product.id})">Delete</button>
                            </td>
                        </tr>`;
                        table.innerHTML += row;
                    });
                })
                .catch(error => console.error('Error fetching products:', error));
        });


        function deleteProduct(id) {
            if (confirm('Are you sure you want to delete this product?')) {
                fetch(`{{ url('/api/products') }}/${id}`, {
                    method: 'DELETE',
                    headers: { 'Content-Type': 'application/json' }
                })
                .then(response => {
                    if (response.ok) {
                        alert('Product deleted successfully');
                        location.reload(); // Refresh page after deletion
                    } else {
                        alert('Error deleting product');
                    }
                });
            }
        }
    </script>
@endsection
