<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<%@include file="../Components/common_links.jsp"%>
<link rel="stylesheet" href="css/style.css" />

<title>Boss at Home</title>

</head>
<body>

	<%@include file="../Components/search-bar.jsp"%>
	<%@include file="../Components/menu-overlay.jsp"%>


	<main>

		<%@include file="../Components/navbar.jsp"%>

		<!------------------------------------------ VIDEO CONTAINER ----------------------------------------->

		<div class="video-container">
			<video src="videos/home.mp4" autoplay loop muted></video>
		</div>


		<!--------------------------------------------- LANDING CONTAINER ---------------------------->
		<section class="landing-container">
			<h1 class="landing-intro">
				<span class="landing-text">Apollo</span>
			</h1>
			<h1 class="landing-intro">
				<span class="landing-text">Collection</span>
			</h1>
			<div class="caption">
				<p class="landing-text">
					The best appliances designed for the new era of <span
						class="landing-text" id="span-home">HOME.</span>
				</p>
			</div>
			<a href="#products-container">
			<button class="discover-button">
				<span class="landing-button">Discover<img
					src="images/arrow-right.png" alt="" /></span>
			</button>
			</a>
			<div class="right-slider"></div>
		</section>
	</main>
	
	
	 <!---------------------------------------- PRODUCTS SECTION ----------------------------------------->

    <section id="products-container" class="products-container">
      <div class="products-heading" id="products-heading">
        <h1 data-aos="fade-up" data-aos-duration="1000">All Products</h1>
        <p data-aos="fade-up" data-aos-delay="500">Human centric design, made with love.</p>
      </div>

      <div class="products" id="products">
        <div class="filter-products" id="filter-products">
          <select name="Filter" id="filter" data-aos="fade-right" data-aos-delay="300">
            <option value="">Categories</option>
            <option value="">Categories</option>
            <option value="">Categories</option>
          </select>
        </div>

        <div class="product" id="product-1" data-aos="" >
          <img src="images/product-2.jpg" alt="">
          <div class="product-info">
            <p>Kruze Chair</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-2" data-aos="" >
          <img src="images/product-3.jpg" alt="">
          <div class="product-info">
            <p>Ola Chair</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-3" data-aos="" >
          <img src="images/product-4.jpg" alt="">
          <div class="product-info">
            <p>Tokyo Chair</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-4" data-aos="" >
          <img src="images/product-5.jpg" alt="">
          <div class="product-info">
            <p>Agent Chair</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-5" data-aos="" >
          <img src="images/product-6.jpg" alt="">
          <div class="product-info">
            <p>Atom</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-6" data-aos="" >
          <img src="images/product-7.jpg" alt="">
          <div class="product-info">
            <p>indi</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-7" data-aos="" >
          <img src="images/product-8.jpg" alt="">
          <div class="product-info">
            <p>Paloma Chair</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-8" data-aos="" >
          <img src="images/product-9.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-9" data-aos="" >
          <img src="images/product-10.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-10" data-aos="" >
          <img src="images/product-11.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-11" data-aos="" data-aos-delay="">
          <img src="images/product-12.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-12" data-aos="" data-aos-delay="">
          <img src="images/product-13.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-13" data-aos="" data-aos-delay="">
          <img src="images/product-14.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-14" data-aos="" data-aos-delay="">
          <img src="images/product-15.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-15" data-aos="" data-aos-delay="">
          <img src="images/product-16.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

        <div class="product" id="product-16" data-aos="" data-aos-delay="">
          <img src="images/product-17.jpg" alt="">
          <div class="product-info">
            <p>Metro</p>
            <span>&#x20B9; 500</span>
          </div>
          <div class="product-overlay"></div>
          <div class="btn-container">
            <button class="add-to-cart">ADD TO CART</button>
          </div>
        </div>

      </div>
    </section>


	<!------------------------------------ INTRODUCTION SLIDER -------------------------->
	<div class="intro">
		<div class="intro-text">
			<h1 class="hide">
				<span class="text">Boss</span>
			</h1>
			<h1 class="hide">
				<span class="text">At</span>
			</h1>
			<h1 class="hide">
				<span class="text">Home.</span>
			</h1>
		</div>
	</div>
	<div class="slider"></div>

	<!--------------------------------------SCRIPTS ------------------------------>
	<%@include file="../Components/common_js.jsp"%>
	<script src="js/app.js"></script>
</body>
</html>
