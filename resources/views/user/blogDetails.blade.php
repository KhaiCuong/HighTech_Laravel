<!doctype html>
<html class="no-js" lang="">
    
	<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Blog Detail</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Favicon -->
		<!-- <link rel="shortcut icon" type="image/x-icon" href="assets/images/logo/favicon.webp"> -->
		
		<!-- Google Fonts -->		
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>	   

		<!-- CSS
		============================================ -->
	
		<!-- Icon Font CSS -->
		<link rel="stylesheet" href="{{ asset('css/font-awesome.css') }}">
	
		<!-- Plugins CSS -->
		<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
		<link rel="stylesheet" href="{{ asset('css/meanmenu.min.css') }}">
		<link rel="stylesheet" href="{{ asset('css/nivo-slider.css') }}">
		<link rel="stylesheet" href="{{ asset('css/jquery-ui-slider.css') }}">
		<link rel="stylesheet" href="{{ asset('css/jquery.simpleLens.css') }}">
		<link rel="stylesheet" href="{{ asset('css/jquery.simpleGallery.css') }}">
		<link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
		<link rel="stylesheet" href="{{ asset('css/sweetalert.css') }}">
	
		<!-- Main Style CSS -->
		<link rel="stylesheet" href="{{ asset('css/style.css') }}">
		<link rel="stylesheet" href="{{ asset('css/responsive.css') }}">

    </head>
    <body>
				
		<!-- Header Area -->
		<div class="header-area">

			<!-- Header Top -->
			<div class="header-top">
				<div class="container">
					<!-- Header Top Bar-->
					<div class="header-top-bar">
						<div class="row">
							<div class="col-lg-5 col-md-6">
								<!-- Header Top Left-->
								<div class="header-top-left">
									<div class="call-header">
										<p><i class="fa fa-phone"></i><span> 0946643252- 0918015828</span></p>
									</div>
									{{-- <div class="header-login">
										<a href="my-account.html">Log in</a>
									</div> --}}
								</div><!-- End Header Top Left-->
							</div>
							<div class="col-lg-7 col-md-6">
								<!-- Header Top Right-->
								<div class="header-top-right">
									<!-- Header Link Area -->
									<div class="header-link-area">
										<div class="header-link">
											<ul>
												<li><a class="english" href="#">English<i class="fa fa-angle-down"></i></a>
													<ul>
														<li><a href="#">English</a></li>
														<li><a href="#">Viet Nam</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<div class="header-link">
											<ul>
												<li class=""><a class="usd" href="#">USD<i class="fa fa-angle-down"></i></a>
													<ul>
														<li><a href="#">USD</a></li>
														<li><a href="#">VND</a></li>
													</ul>
												</li>
												@if (Auth::guard('user')->check())
													@php
														$user = Auth::guard('user')->user();
													@endphp
													<li><a class="account" href="#">{{$user->fullname}}<i class="fa fa-angle-down"></i></a>
														<ul>
															<li><a href="{{ route('userProfile') }}">My Account</a></li>
															<li><a href="wishlist.html">My Wishlist</a></li>
															<li><a href="{{ route('cart') }}">My Cart</a></li>
															<li><a href="{{ route('logout') }}">Log out</a></li>
														</ul>
													</li>
												@else
													<li><a class="account" href="{{ route('loginForm') }}">Login</li>
												@endif
											</ul>
										</div>
									</div><!-- End Header Link Area -->
								</div><!-- End Header Top Right-->
							</div>
						</div>
					</div>
					<!-- End Header Top Bar-->
				</div>
			</div><!-- End Header Top -->

			<!-- Header Bottom -->
			<div class="header-bottom">
				<div class="container">
					<!-- Header Bottom Inner-->
					<div class="header-bottom-inner">
						<div class="row justify-content-between">
							<div class="col-lg-3 col-md-4 col-sm-4 col-6 order-lg-1">
								<!-- Header Logo -->
								<div class="header-logo">
									<a href="{{ route('home') }}"><img src="{{ asset('images/2Tech.png') }}" alt="logo"></a>
								</div>
							</div>
							<div class="col-lg-2  col-md-3 col-sm-4 col-5 order-lg-3">
								<!-- Header Actions Area-->
								<div class="header-actions">
									<div class="header-cart">
										<a class="cart" href="{{ route('cart')}}">
											<i class="fa fa-shopping-cart"></i>
											<span class="my-cart">Cart</span>
										</a>
										<div class="header-cart-dropdown">
											<div class="dropdown-cart-items">
												@if (session()->get('cart')==true)
													@foreach (session()->get('cart') as $key => $cart)
													
														<div class="cart-item">
															<div class="cart-img">
																<a href="#">
																	<img src="images/{{$cart['product_img']}}" alt="{{$cart['product_name']}}"/>
																</a>
															</div>
															<div class="cart-content">
																<h5 class="title"><a href="#">{{$cart['product_name']}}</a></h5>
																<p>{{$cart['product_quantity']}} x <span>${{$cart['product_price']}}</span></p>
															</div>
															<div class="cart-action">
																<a href="{{ route('cart')}}"><i class="fa fa-pencil"></i></a>
																<a href="{{ url('/delete-cart',['id'=>$cart['session_id']]) }}"><i class="fa fa-times"></i></a>
															</div>
														</div>
													@endforeach
												@endif
											</div>
											
											<div class="cart-total-btn">
												<div class="cart-subtotal">
													<!-- <p>Subtotal: <span>$1,131.00</span></p> -->
												</div>
												<div class="cart-btn">
													<button type="button" class="btn check-out">checkout</button>
												</div>
											</div>
										</div>
									</div>
								</div><!-- End Header Actions Area-->
							</div>
							<div class="col-lg-7 order-lg-2">
								<div class="header-search">
									<!-- All Categorie -->
									<div class="all-categories">
										<select id="product-categori">
											<option value="All Categories">All Categories</option>
											<option value="Categorie laptop">Macbook</option>
											<option value="Categorie moblie">Iphone</option>
											<option value="Categorie table">Ipad </option>
											<option value="Categorie headphone">Airpods </option>
										</select>
									</div>
									<!-- End All Categorie -->
									<div class="search-form">
										<form action="#">
											<input type="text" class="input-text" name="q" id="search" placeholder="Search entire store here...">
											<button type="submit"><i class="fa fa-search"></i></button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End Header Bottom Inner-->
				</div>
			</div><!-- End Header Bottom -->

		</div>
		<!-- End Header Area -->

		<!-- Main Menu Area -->
		<div class="main-menu-area main-menu-area-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-3">
								<!-- Category Menu -->
								<div class="category-menu d-none d-lg-block">
									<div class="category-menu-title">
										<h2>Categories</h2>
									</div>
									<div class="categorie-list">
										<ul>
											<li><a href="{{ route('search-products', ['category'=>'mac']) }}"><img src="{{ asset('images/iconMac.png') }}" alt="icon">Macbook<i class="fa fa-caret-right"></i></a>
												<ul class="mega-menu-ul">
													<li>
														<!--Mega Menu -->
														<div class="mega-menu">
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'mac']) }}">Macbook Air</a></h2>
																<a href="{{ route('search-products', ['category'=>'mac']) }}"><img src="{{ asset('images/logo/macbookAir.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'mac']) }}">Macbook Pro 13</a></h2>
																<a href="{{ route('search-products', ['category'=>'mac']) }}"><img src="{{ asset('images/logo/macbook13.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'mac']) }}">Macbook Pro 14</a></h2>
																<a href="{{ route('search-products', ['category'=>'mac']) }}"><img src="{{ asset('images/logo/macbookPro14.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'mac']) }}">Macbook Pro 16</a></h2>
																<a href="{{ route('search-products', ['category'=>'mac']) }}"><img src="{{ asset('images/logo/macbookPro16.jpg') }}" alt="logo"></a>
															</div>
														</div>
													</li>
												</ul>
											</li>
											<li><a href="{{ route('search-products', ['category'=>'iphone']) }}"><img src="{{ asset('images/iconIphone.png') }}" alt="icon">Iphone<i class="fa fa-caret-right"></i></a>
												<ul class="mega-menu-ul">
													<li>
														<!--Mega Menu -->
														<div class="mega-menu">
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13 mini</a></h2>
																<a href="{{ route('search-products', ['category'=>'iphone']) }}"><img src="{{ asset('images/logo/iphone13.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13</a></h2>
																<a href="{{ route('search-products', ['category'=>'iphone']) }}"><img src="{{ asset('images/logo/iphone13.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13 Pro</a></h2>
																<a href="{{ route('search-products', ['category'=>'iphone']) }}"><img src="{{ asset('images/logo/iphone13pm.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13 ProMax</a></h2>
																<a href="{{ route('search-products', ['category'=>'iphone']) }}"><img src="{{ asset('images/logo/iphone13pm.jpg') }}" alt="logo"></a>
															</div>
														</div>
													</li>
												</ul>
											</li>
											<li><a href="{{ route('search-products', ['category'=>'ipad']) }}"><img src="{{ asset('images/iconIpad.png') }}" alt="icon">Ipad<i class="fa fa-caret-right"></i></a>
												<ul class="mega-menu-ul">
													<li>
														<!--Mega Menu -->
														<div class="mega-menu">
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad gen 9</a></h2>
																<a href="{{ route('search-products', ['category'=>'ipad']) }}"><img src="{{ asset('images/logo/ipadGen.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad Air</a></h2>
																<a href="{{ route('search-products', ['category'=>'ipad']) }}"><img src="{{ asset('images/logo/ipadAir.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad Pro 11</a></h2>
																<a href="{{ route('search-products', ['category'=>'ipad']) }}"><img src="{{ asset('images/logo/ipadPro11.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad Pro 12.9</a></h2>
																<a href="{{ route('search-products', ['category'=>'ipad']) }}"><img src="{{ asset('images/logo/ipadPro12.9.jpg') }}" alt="logo"></a>
															</div>
														</div>
													</li>
												</ul>
											</li>
											<li><a href="#"><img src="{{ asset('images/iconAirpods.png') }}" alt="icon">Airpods<i class="fa fa-caret-right"></i></a>
												<ul class="mega-menu-ul">
													<li>
														<!--Mega Menu -->
														<div class="mega-menu">
															<div class="single-mega-menu">
																<h2><a href="shop-list.html">Airpods 2</a></h2>
																<a href="shop-list.html"><img src="{{ asset('images/logo/airPod2.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="shop-list.html">Airpods Pro</a></h2>
																<a href="shop-list.html"><img src="{{ asset('images/logo/airPodsPro.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="shop-list.html">Airpods 3</a></h2>
																<a href="shop-list.html"><img src="{{ asset('images/logo/airPods3.jpg') }}" alt="logo"></a>
															</div>
															<div class="single-mega-menu">
																<h2><a href="shop-list.html">Airpods Max</a></h2>
																<a href="shop-list.html"><img src="{{ asset('images/logo/airPodsMax.jpg') }}" alt="logo"></a>
															</div>
														</div>
													</li>
												</ul>
											</li>
											<!-- <li><a href="#"><img src="img/icon/m5.html" alt="icon">Camera & Photo</a></li>
											<li><a href="#"><img src="img/icon/m6.html" alt="icon">Accessories</a></li> -->
											<!-- Menu Accordion-->
											<!-- <li class=" rx-child"><a href="#"><img src="img/icon/m7.html" alt="icon">Destop</a></li>
											<li class=" rx-child"><a href="#">Shop All</a></li>
											<li class=" rx-parent">
												<a class="rx-default"><img src="img/icon/m8.html" alt="icon">More categories</a>
												<a class="rx-show"><img src="img/icon/m9.html" alt="icon">close menu</a>
											</li> -->
											<!-- End Menu Accordion-->
										</ul>
									</div>
								</div><!-- End Category Menu -->
							</div>
							<div class="col-lg-9">
								<!-- Main Menu -->
								<div class="main-menu d-none d-lg-block">
									<nav>
										<ul>
											<li><a href="{{ route('home') }}">Home</a>
											</li>
											<li><a href="{{ route('contact') }}">Contact Us</a></li>
											<li><a href="{{ route('blog') }}"class="active">Blog</a></li>
                                            <li><a href="{{ route('products') }}">All Products</a></li>
										</ul>
									</nav>
								</div><!-- End Main Menu -->
								<!-- Start Mobile Menu -->
								<div class="mobile-menu d-block d-lg-none">
									<nav>
										<ul>
											<li class=""><a href="{{ route('home') }}">Home</a>
											</li>
											<li><a href="{{ route('search-products', ['category'=>'macbook']) }}">Macbook</a>
												<ul class="">
													<li><a href="{{ route('search-products', ['category'=>'macbook']) }}">Macbook Air</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'macbook']) }}">Macbook Pro 13</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'macbook']) }}">Macbook Pro 14</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'macbook']) }}">Macbook Pro 16</a>
													</li>
												</ul>
											</li>
											<li class=""><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone</a>
												<ul class="">
													<li><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13 mini</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13 Pro</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'iphone']) }}">Iphone 13 ProMax</a>
													</li>
												</ul>
											</li>
											<li><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad</a>
												<ul class="">
													<li><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad gen 9</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad Air</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad Pro 11</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'ipad']) }}">Ipad Pro 12.9</a>
													</li>
												</ul>
											</li>														
											<li><a href="{{ route('search-products', ['category'=>'airpod']) }}">Airpods</a>
												<ul class="">
													<li><a href="{{ route('search-products', ['category'=>'airpod']) }}">Airpods 2</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'airpod']) }}">Airpods Pro</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'airpod']) }}">Airpods 3</a>
													</li>
													<li><a href="{{ route('search-products', ['category'=>'airpod']) }}">Airpods Max</a>
													</li>
												</ul>
											</li>
										</ul>
									</nav>
								</div><!-- End Mobile Menu -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        @php
            $blogDetail = session()->get('blogDetails');
        @endphp
        @if ($blogDetail==true)
		<!-- End Main Menu Area -->
		<div class="breadcurb-area">
			<div class="container">
				<ul class="breadcrumb">
					<li class="{{ route('home') }}"><a href="#">Home <i class="fa fa-angle-right" aria-hidden="true"></i>  
					</a></li>
					<li>Blog <i class="fa fa-angle-right" aria-hidden="true"></i></li>
                    <li>{{$blogDetail[0]->title}} </li>
				</ul>
			</div>
		</div>
        
		<div class="main-blog-page single-blog blog-post-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-12">
						<!-- Left Sidebar-->
						<div class="left-sidebar">
							<div class="left-sidebar-title">
								<h2>Search By</h2>
							</div>
							<!-- Shop Layout -->
							<div class="shop-layout">
								<div class="layout-title">
									<h2>Category</h2>
								</div>
								<div class="layout-list">
									<ul>
										<li><a href="#">New Technology</a></li>
										<li><a href="#">Daily News</a></li>
										<li><a href="#">Events</a></li>
									</ul>
								</div>
							</div><!-- End Shop Layout Area -->
							<!-- Shop Layout Area -->
							<div class="shop-layout">
								<div class="layout-title">
									<h2>Recent Posts</h2>
								</div>
								<!-- Recent Posts -->
								<div class="recent-posts">
									<ul>
										<!-- <li>
											<div class="post-wrapper">
												<div class="post-thumb">
													<a href="#"><img alt="" src="assets/images/blog/b11.webp"></a>
												</div>
												<div class="post-info">
													<h3 class="post-title recent-post-s"><a href="#">Investigationes demonstraverun</a></h3>
													<div class="post-date recent-post-s">December 10, 2015</div>
												</div>
											</div>
										</li> -->
									</ul>
								</div><!-- Recent Posts -->
							</div><!-- End Shop Layout -->
							<!-- Shop Layout -->
							<div class="shop-layout">
								<div class="layout-title">
									<h2>Recent Comments</h2>
								</div>
								<!-- Recent Comments -->
								<div class="recent-comments">
									<ul>
										<!-- <li>
											<div class="post-wrapper">
												<div class="post-thumb">
													<a href="#"><img alt="" src="assets/images/blog/b5.webp"></a>
												</div>
												<div class="post-info">
													<h3 class="post-title recent-post-s">Jaki Bars</h3>
													<p>
														<a href="#">- Quisque semper nunc vitae erat pellentesque...</a>
													</p>
												</div>
											</div>
										</li> -->
									</ul>
								</div><!-- End Recent Comments -->
							</div><!-- End Shop Layout -->
							<!-- Popular Tag Area -->
						</div><!-- End Left Sidebar -->
					</div>
					<div class="col-lg-9 col-md-12">
						<!-- single-blog start -->
						<article class="blog-post-wrapper">
							<div class="post-thumbnail">
                                <img alt="product" src="{{ asset('images/blogThumbnail/'.$blogDetail[0]->thumbnail) }}">
							</div>
							<div class="post-information">
								<h2>{{$blogDetail[0]->title}}</h2>
								<div class="entry-meta">
									<span class="author-meta"><i class="fa fa-user"></i> <a href="#">{{$blogDetail[0]->author}}</a></span>
									<span><i class="fa fa-clock-o"></i>{{$blogDetail[0]->created_at}}</span>
									<span class="tag-meta">
										<i class="fa fa-folder-o"></i>
										<a href="#">Technology</a>,
										<a href="#">WordPress</a>
									</span>
									<span>
										<i class="fa fa-tags"></i>
										<a href="#">News</a>,
										<a href="#">Tivi</a>,
									</span>
									<span><i class="fa fa-comments-o"></i> <a href="#">{{ count($comments) }} comments</a></span>
								</div>
								<div class="entry-content">
									<p>{!!$blogDetail[0]->content!!}</p>
								</div>
								<div class="social-sharing">
									<h3>Share this post</h3>
									<div class="sharing-icon">
										<a href="#" data-bs-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a>
										<a href="#" data-bs-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a>
										<a href="#" data-bs-toggle="tooltip" title="Pinterest"><i class="fa fa-pinterest"></i></a>
										<a href="#" data-bs-toggle="tooltip" title="Google-plus"><i class="fa fa-google-plus"></i></a>
										<a href="#" data-bs-toggle="tooltip" title="Linkedin"><i class="fa fa-linkedin"></i></a>
									</div>
								</div>
								<div class="author-info">
									<div class="author-avatar"><img src="{{ asset('images/b18.webp') }}" alt="admin"></div>
									<div class="author-description">
										<h2>About the Author: <a href="#">admin</a></h2>
									</div>
								</div>
							</div>
						</article>
						<div class="clear"></div>
						<div class="single-post-comments">
							<div class="comments-area">
								<div class="comments-heading">
									<h3>Comments Area</h3>
								</div>
								<div class="comments-list">
									<ul>
										<li>
											Comment
											<br>
											<div class="comments-details">
												@foreach($comments as $comment)
												<div class="comments-content-wrap">
													<span>
														<b><a href="#">{{ $comment->name }}</a></b>
														<span class="post-time">{{ $comment->created_at->diffForHumans() }}</span>
														<div class="ProductRatings">
															<div class="ProductRating-box">
															  <div class="ProductRating">
																@for ($i = 1; $i <= 5; $i++)
																  @if ($i <= round($comment->rating))
																	<i class="fa fa-star active" data-rating="{{ $i }}"></i>
																  @else
																	<i class="fa fa-star" data-rating="{{ $i }}"></i>
																  @endif
																@endfor
															  </div>
															</div>
														</div>
														<a href="#">Reply</a>
													</span>
													<p>{{ $comment->comment }}</p>
												</div>
												@endforeach
											</div>
										</li>
									</ul>
								</div>													
							</div>
							<div class="comment-respond">
								<h3 class="comment-reply-title">Leave a Reply </h3>
								<span class="email-notes">Your email address will not be published. Required fields are marked *</span>
								<form method="POST" action="{{ route('feedback.storeByBlogID') }}">
									@csrf
									<div class="row">
										<div class="col-md-4">
											<p>Name *</p>
											<input type="text" name="name" />
										</div>
										<div class="col-md-4">
											<p>Email *</p>
											<input type="email" name="email" />
										</div>
										<div class="col-md-4">
											<p>Rating *</p>
											<div class="ratings">
												<div class="rating-box">
												  <div class="rating">
													<i class="fa fa-star" data-rating="1"></i>
													<i class="fa fa-star" data-rating="2"></i>
													<i class="fa fa-star" data-rating="3"></i>
													<i class="fa fa-star" data-rating="4"></i>
													<i class="fa fa-star" data-rating="5"></i>
												  </div>
												  <input type="hidden" name="rating" value="0" id="rating-input">
												</div>
											  </div>
										</div>
										<div class="col-md-12 comment-form-comment">
											<p>Comment</p>
											<textarea id="message" name="comment" cols="30" rows="10"></textarea>
											<input type="hidden" name="blog_id" value="{{$blogDetail[0]->id}}" />
											<input type="submit" value="Post" />
										</div>
									</div>
								</form>
							</div>
												
						</div><!-- single-blog end -->
						
					</div>
				</div>
			</div>
		</div><!-- Main Blog Post Area Area -->
        @endif
		<!-- Brand Area -->
		<div class="brand-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-12">
						<div class="brand-add">
							<a href="#"><img src="{{ asset('images/banner6.png') }}" alt="brand-logo"></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-12">
						<!-- Brand Logo -->
						<div class="brand-logo">
								<a href="#"><img src="{{ asset('images/banner8.png') }}" alt="brand-logo"></a>
								<a href="#"><img src="{{ asset('images/banner7.jpg') }}" alt="brand-logo"></a>
						</div>
					</div>
				</div>
			</div>
		</div><!-- End Brand Area -->		
		<!-- Footer Area -->
		<div class="footer-area">
			<!-- Footer Top -->
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-8">
							<!-- Block Subscribe -->
							<div class="block-subscribe">
								<div class="subscribe-title">
									<div class="icon"><i class="fa fa-envelope-o"></i></div>
								</div>
								<div class="subscribe-form">
									<form action="#">
										<div class="subscribe-input-box">
										   <input type="text" title="Sign up for our newsletter" name="email" required="required">
										</div>
										<div class="subscribe-action">
										   <button title="Subscribe" type="submit">Subscribe</button>
										</div>
									</form>
								</div>
							</div><!-- End Block Subscribe -->
						</div>
						<div class="col-lg-4">
							<!-- Social Footer -->
							<div class="social-footer">
								<ul class="link-follow">
									<li class="first">
										<a href="#" class="facebook fa fa-facebook"></a>
									</li>
									<li>
										<a href="#" class="twitter fa fa-twitter"></a>
									</li>
									<li>
										<a href="#" class="google fa fa-google-plus"></a>
									</li>
									<li>
										<a href="#" class="instagram fa fa-instagram"></a>
									</li>
								</ul>
							</div><!-- End Social Footer -->
						</div>
					</div>
				</div>
			</div><!-- End Footer Top -->
			<!-- Footer Static -->
			<div class="footer-static">
				<div class="container">
				    <div class="footer-bottom-wrap">
				        <!-- Single Footer Static -->
                        <div class="single-footer-static static-info">
                            <div class="footer-static-title">
                                <h3>Information</h3>
                            </div>
                            <div class="footer-static-content">
                                <ul>
                                    <li><a href="{{ route('contact') }}">About us</a></li>
                                    <li><a href="{{ route('blog') }}">Blog</a></li>
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Site Map</a></li>
                                </ul>
                            </div>
                        </div><!-- End Single Footer Static -->
                        <!-- Single Footer Static -->
                        <div class="single-footer-static">
                            <div class="footer-static-title">
                                <h3>Customer Service</h3>
                            </div>
                            <div class="footer-static-content">
                                <ul>
                                    <li><a href="#">Shipping Policy</a></li>
                                    <li><a href="#">Compensation First</a></li>
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">Return Policy</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div><!-- End Single Footer Static -->
                        <!-- Single Footer Static -->
                        <div class="single-footer-static static-shipping">
                            <div class="footer-static-title">
                                <h3>Payment & Shipping</h3>
                            </div>
                            <div class="footer-static-content">
                                <ul>	
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Payment Methods</a></li>
                                    <li><a href="#">Shipping Guide</a></li>
                                    <li><a href="#">Locations We Ship To</a></li>
                                    <li><a href="#">Estimated Delivery Time</a></li>
                                </ul>
                            </div>
                        </div><!-- End Single Footer Static -->
                        <!-- Single Footer Static -->
                        <div class="single-footer-static static-account">
                            <div class="footer-static-title">
                                <h3>My Account</h3>
                            </div>
                            <div class="footer-static-content">
                                <ul>								
                                    <li><a href="#">My Addresses</a></li>
                                    <li><a href="#">Gift Vouchers</a></li>
                                    <li><a href="#">Returns and Exchanges</a></li>
                                    <li><a href="#">Shipping Options</a></li>
                                    <li><a href="#">My personal info</a></li>
                                </ul>
                            </div>
                        </div><!-- End Single Footer Static -->
                        <!-- Single Footer Static -->
                        <div class="single-footer-static static-contact">
                            <div class="footer-static-title">
                                <h3>Contact Us</h3>
                            </div>
                            <div class="footer-static-content">							
                                <div class="contact-info">
                                    <p class="phone">01234097161</p>
                                    <p class="email">trunghnts2110025@gmail.com</p>
                                    <p class="adress">FPT Aptech</p>
                                </div>
                            </div>
                        </div><!-- End Single Footer Static -->
				    </div>
				</div>
			</div><!-- End Footer Static -->
			<!-- Footer Bottom -->
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<!-- Copyright -->
							<div class="copyright">
								<p>&copy; <span> 2Tech site</span> MADE BY DKC</p>							</div>						
						</div>
						<div class="col-md-6">
							<!-- Footer Payment -->
							<div class="footer-payment">
								<a href="#"><img src="assets/images/logo/payment.webp" alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</div><!-- End Footer Bottom -->
		</div><!-- End Footer Area -->
		
		
		
		
				
		
		
		
		
		
		<!-- JS
		============================================ -->

		<!-- Modernizer & jQuery JS -->
        <script src="../js/modernizr-2.8.3.min.js"></script>
        <script src="../js/jquery-1.12.4.min.js"></script>
    
        <!-- jquery
		============================================ -->		
        <script src="{{ asset('js/jquery-1.12.4.min.js') }}"></script>
        <!-- Popper JS
		============================================ -->		
        <script src="{{ asset('js/popper.min.js') }}"></script>
		<!-- bootstrap JS
		============================================ -->		
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
		<!-- nivo slider js
		============================================ --> 
		<script src="{{ asset('js/jquery.nivo.slider.pack.js') }}"></script>
		<!-- Mean Menu js
		============================================ -->         
        <script src="{{ asset('js/jquery.meanmenu.min.js') }}"></script>
		<!-- price-slider JS
		============================================ -->		
        {{-- <script src="{{ asset('js/jquery-price-slider.js') }}"></script> --}}
		<!-- Simple Lence JS
		============================================ -->
		<script type="text/javascript" src="{{ asset('js/jquery.simpleGallery.min.js') }}"></script>
		<script type="text/javascript" src="{{ asset('js/jquery.simpleLens.min.js') }}"></script>	
		<!-- owl.carousel JS
		============================================ -->		
        <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
		<!-- scrollUp JS
		============================================ -->		
        <script src="{{ asset('js/jquery.scrollUp.min.js') }}"></script>
		<!-- DB Click JS
		============================================ -->
        <script src="{{ asset('js/dbclick.min.js') }}"></script>
		<!-- Countdown JS
		============================================ -->
        <script src="{{ asset('js/jquery.countdown.min.js') }}"></script>
				
        <script src="{{ asset('js/plugins.js') }}"></script>
		<!-- main JS
		============================================ -->		
        <script src="{{ asset('js/main.js') }} "></script>

    </body>

</html>
