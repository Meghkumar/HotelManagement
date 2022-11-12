<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Css link -->
    <link rel="stylesheet" href="/CSS/menu.css" />

    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />

    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
      rel="stylesheet"
    />
    <title>Menu</title></head
  >ent
  <body>
    <!-- Header -->
    <header>
      <!-- nav -->
      <div class="nav container">
        <a href="#" class="logo">Ecommerce</a>
        <!-- cart icon -->
        <i class="bx bx-shopping-bag" id="cart-icon"></i>
        <!-- Cart -->
        <div class="cart">
          <h2 class="cart-title">Your Cart</h2>
          <div class="cart-content"></div>
          <!-- Total -->
          <div class="total">
            <div class="total-title">Total</div>
            <div class="total-price">₹0</div>
          </div>

          <!-- Buy Button -->
          <button type="button" class="btn-buy">Buy Now</button>
          <!-- Cart Close -->
          <i class="bx bx-x" id="close-cart"></i>
        </div>
      </div>
    </header>

    <!-- shop -->
    <section class="shop container">
      <h2 class="section-title">Shop Products</h2>
      <!-- Content -->
      <div class="shop-content">
        <!-- Box1 -->
        <div class="product-box">
          <img src="/Images/image2.jpg" alt="" class="product-img" />
          <h2 class="product-title">Panner</h2>
          <span class="price">Rs.100</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box2 -->
        <div class="product-box">
          <img src="/Images/image3.jpg" alt="" class="product-img" />
          <h2 class="product-title">Mashroom</h2>
          <span class="price">Rs.200</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box3 -->
        <div class="product-box">
          <img src="/Images/image4.jpg" alt="" class="product-img" />
          <h2 class="product-title">Cheese</h2>
          <span class="price">Rs.300</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box4 -->
        <div class="product-box">
          <img src="/Images/image1.jpg" alt="" class="product-img" />
          <h2 class="product-title">Panner</h2>
          <span class="price">Rs.400</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box5 -->
        <div class="product-box">
          <img src="/Images/image2.jpg" alt="" class="product-img" />
          <h2 class="product-title">Mashroom</h2>
          <span class="price">Rs.89</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box6 -->
        <div class="product-box">
          <img src="/Images/image2.jpg" alt="" class="product-img" />
          <h2 class="product-title">Cheese</h2>
          <span class="price">Rs.89</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box7 -->
        <div class="product-box">
          <img src="/Images/image2.jpg" alt="" class="product-img" />
          <h2 class="product-title">Cheese</h2>
          <span class="price">Rs.89</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
        <!-- Box8 -->
        <div class="product-box">
          <img src="/Images/image2.jpg" alt="" class="product-img" />
          <h2 class="product-title">Cheese</h2>
          <span class="price">Rs.89</span>
          <i class="bx bx-shopping-bag add-cart"></i>
        </div>
      </div>
    </section>

    <script src="/JS/menu.js"></script>
  </body>
</html>
