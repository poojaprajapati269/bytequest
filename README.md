Steps Of Projects 

🛠️ Setup Instructions

1. Clone the repository:

git clone https://github.com/poojaprajapati269/bytequest.git


2. Install dependencies:
composer install


3. Setup Environment in .env file
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=bytequest
DB_USERNAME=root
DB_PASSWORD=


4. Generate application key:
php artisan key:generate


5. Setup database:
php artisan migrate --seed
  or
php artisan migrate 
php artisan db:seed --class=ProductSeeder

6. php artisan serve


7. for check api controller code in ..\app\Http\Controllers\ProductController.php

check API in post man 
GET - http://127.0.0.1:8000/api/products   //fetch all Products

POST - http://127.0.0.1:8000/api/products  // Store Products
       set the Headers -----
       Accept: application/json
       Content-Type: application/json

Get - http://127.0.0.1:8000/api/products/{id}  // Get particular Product Data based on Product Id

PUT - http://127.0.0.1:8000/api/products/{id}  // Update Particular Product

DELETE - http://127.0.0.1:8000/api/products/{id}  // Delete a specific product by ID


8. For Website controller i implement my code in ProductWebController for Crud using Form 


I Added All API's And Database sql File in "database and api folder"  

 
i using php version PHP 8.2.0
and laravel version 12
