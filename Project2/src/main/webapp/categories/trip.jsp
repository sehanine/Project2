<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행</title>
<!-- css import see /web_contents/css_components.jsp -->
<jsp:include page="${css_components }"></jsp:include>
<!-- css import see /web_contents/css_components.jsp -->
</head>
<body class="page">
    <div class="page-mask">
        <div class="page-loader">
            <div class="spinner"></div>
            	로딩중
        </div>
    </div>
    <!-- Wrap -->
    <div class="wrap">
        <!-- Header -->
     	<!-- 네이게이션 오브젝트 불러오기 -->
		<jsp:include page="${nav_bar }"></jsp:include>
		<!-- 네이게이션 오브젝트 불러오기 --> 
        <!-- /Header --> 
        <!-- Main Section -->
        <section id="main">
            <div class="breadcrumb-wrapper">
                <div class="pattern-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                <h2 class="title">여행</h2>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                <div class="breadcrumbs pull-right">
                                    <ul>
                                        <li>현재 위치:</li>
                                        <li><a href="../index.jsp">메인</a></li>
                                        <li><a href="#">여행</a></li>
                                        <!-- 모아보기 추천보기 조건 넣을것 -->
                                        <li>모아보기</li>
                                        <!-- 모아보기 추천보기 조건 넣을것 -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Main Content -->
            <!-- Main Content -->
            <div class="content margin-top60 margin-bottom60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="display">
                                <span><b>Display:</b></span>
                                <a class="active btn-small btn-color btn-pad"><i class="fa fa-th"></i></a>
                                <a class="list btn-small btn-pad" onclick="display(&#39;list&#39;);"><i class="fa fa-th-list"></i></a>
                            </div>                                       
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pull-right">
                            <div class="input-group">
                                <input type="text" value="여행 찾기" onfocus="if(this.value=='Search Products')this.value='';" onblur="if(this.value=='')this.value='Search Products';" class="search-input form-control product-search-height">
                                <span class="input-group-btn">
                                <button type="submit" class="subscribe-btn btn product-search-height"><i class="fa fa-search"></i></button>
                                </span>
                            </div>  
                            <!-- /Product Search  -->
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-grid">
                                <div class="products-block">
                                    <div class="row product-items">
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>NEW</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_01.jpg" title="iPhone 5s 64 GB" alt="iPhone 5s 64 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <!-- /Swap image -->
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">iPhone 5s 64 GB</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$119.50</span>
                                                            <span class="price-new">$107.75</span>
                                                            <span class="price-tax">Ex Tax: $90.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>Sale</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_02.jpg" title="iPhone 4 16 GB" alt="iPhone 4 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">iPhone 4 16 GB</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$589.50</span>
                                                            <span class="price-new">$107.75</span>
                                                            <span class="price-tax">Ex Tax: $90.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_03.jpg" title="Small TV Box" alt="Small TV Box" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">Small TV Box</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$589.50</span>
                                                            <span class="price-tax">Ex Tax: $500.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_04.jpg" title="Box Stereo Remote" alt="Box Stereo Remote" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">Box Stereo Remote</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$589.50</span>
                                                            <span class="price-tax">Ex Tax: $500.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-3.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                    </div>
                                    <div class="row product-items">
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>-10%</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_05.jpg" title="iPhone 5s 16 GB" alt="iPhone 5s 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">iPhone 5s 16 GB</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$54.88</span>
                                                            <span class="price-new">$96.00</span>
                                                            <span class="price-tax">Ex Tax: $80.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 2 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>Sale</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_06.jpg" title="Huawei Smart Mobile" alt="Huawei Smart Mobile" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">Huawei Smart Mobile</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$119.50</span>
                                                            <span class="price-new">$107.75</span>
                                                            <span class="price-tax">Ex Tax: $90.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_07.jpg" title="LG G-Flex 16 GB" alt="LG G-Flex 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a class="pav-colorbox btn btn-theme-default cboxElement" href="product-view.html"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">LG G-Flex 16 GB</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$96.00</span>
                                                            <span class="price-tax">Ex Tax: $80.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>-11%</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_08.jpg" title="iMac 27" alt="iMac 27" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">iMac 27"</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$1,175.83</span>
                                                            <span class="price-new">$107.75</span>
                                                            <span class="price-tax">Ex Tax: $90.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-3.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- /Product Items -->
                                    </div>
                                    <div class="row product-items last">
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols first">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_09.jpg" title="Smart TV Box" alt="Smart TV Box" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">Smart TV Box</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$1,177.00</span>
                                                            <span class="price-tax">Ex Tax: $1,000.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Unprecedented power. The next generation of processing technology has arrived. Built into the newest.....
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>Sale</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_10.jpg" title="LG Monitor 32 Inch" alt="LG Monitor 32 Inch" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">LG Monitor 32 Inch</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$119.50</span>
                                                            <span class="price-new">$107.75</span>
                                                            <span class="price-tax">Ex Tax: $90.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-2.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_01.jpg" title="iPhone 5s 32 GB" alt="iPhone 5s 32 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">iPhone 5s 32 GB</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$237.00</span>
                                                            <span class="price-tax">Ex Tax: $200.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                        <!-- Product Items -->
                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-cols last">
                                            <div class="product-block">
                                                <div class="image ">
                                                    <span class="product-label product-label-special">
                                                    <span>Sale</span>
                                                    </span>
                                                    <!-- Swap image -->
                                                    <div class="flip">
                                                        <a href="product-view.html" class="swap-image">
                                                        <img src="img/shop/product_02.jpg" title="iPhone 4 16 GB" alt="iPhone 4 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="product-view.html" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="product-view.html">iPhone 4 16 GB</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$119.50</span>
                                                            <span class="price-new">$107.75</span>
                                                            <span class="price-tax">Ex Tax: $90.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 2 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high defin.....
                                                        </p>
                                                        <div class="action">
                                                            <div class="cart">
                                                                <!-- <input type="button" value="" onclick="addToCart('');" class="product-icon fa fa-shopping-cart shopping-cart" /> -->
                                                                <button class="btn btn-shopping-cart">
                                                                <span class="fa fa-shopping-cart product-icon hidden-sm">&nbsp;</span>
                                                                <span>Add to Cart</span>
                                                                </button>
                                                            </div>
                                                            <div class="button-group">
                                                                <div class="wishlist">
                                                                    <a title="Add to Wish List" class="fa fa-heart product-icon">
                                                                    <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                <div class="compare">
                                                                    <a title="Add to Compare" class="fa fa-refresh product-icon">
                                                                    <span>Add to Compare</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /Product Items -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="pagination-centered padding-bottom30">
                            <ul class="pagination">
                                <li class="disabled"><a href="#">«</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Main Section -->
        <!-- Footer -->
        <footer id="footer">
            <div class="pattern-overlay">
                <!-- Footer Top -->
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-one">
                                <h3 class="light">About</h3>
                                <p> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. 
                                </p>
                            </section>
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-two">
                                <h3 class="light">Twitter Stream</h3>
                                <ul id="tweets">
                                </ul>
                            </section>
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-three">
                                <h3 class="light">Contact Us</h3>
                                <ul class="contact-us">
                                    <li>
                                        <i class="fa fa-map-marker"></i>
                                        <p> 
                                            <strong class="contact-pad">Address:</strong> House: 325, Road: 2,<br> Mirpur DOHS <br>
                                            Dhaka, Bangladesh 
                                        </p>
                                    </li>
                                    <li>
                                        <i class="fa fa-phone"></i>
                                        <p><strong>Phone:</strong> +880 111-111-111</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope"></i>
                                        <p><strong>Email:</strong><a href="mailto:support@fifothemes.com">support@fifothemes.com</a></p>
                                    </li>
                                </ul>
                            </section>
                            <section class="col-lg-3 col-md-3 col-xs-12 col-sm-3 footer-four">
                                <h3 class="light">Subscribe</h3>
                                <p>
                                    Subscribe to our email newsletter to receive our news, updates and awesome free files.
                                </p>
                                <form method="get" action="#">
                                    <div class="input-group">
                                        <input type="text" value="mail@example.com" onfocus="if(this.value=='mail@example.com')this.value='';" onblur="if(this.value=='')this.value='mail@example.com';" class="subscribe form-control">
                                        <span class="input-group-btn">
                                        <button class="btn subscribe-btn" type="button">Join</button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form>
                            </section>
                        </div>
                    </div>
                </div>
                <!-- /Footer Top --> 
                <!-- Footer Bottom -->
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                                <p class="credits">&copy; Copyright 2014 by <a href="#">FIFOLAB</a>. All Rights Reserved. </p>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                                <ul class="social social-icons-footer-bottom">
                                    <li class="facebook"><a href="#" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li class="twitter"><a href="#" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li class="dribbble"><a href="#" data-toggle="tooltip" title="Dribble"><i class="fa fa-dribbble"></i></a></li>
                                    <li class="linkedin"><a href="#" data-toggle="tooltip" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="rss"><a href="#" data-toggle="tooltip" title="Rss"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Footer Bottom --> 
            </div>
        </footer>
        <!-- /Footer -->
        <!-- Scroll To Top --> 
        <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
    </div>
    <!-- /Wrap -->
    <!-- Style Switcher -->
    <section id="style-switcher">
        <h2>Style Switcher <a href="#"><i class="fa fa-cogs"></i></a></h2>
        <div>
            <h3>Predefined Colors</h3>
            <ul class="colors">
                <li><a title="Green" class="green" href="#"></a></li>
                <li><a title="Blue" class="blue" href="#"></a></li>
                <li><a title="Orange" class="orange" href="#"></a></li>
                <li><a title="Purple" class="purple" href="#"></a></li>
                <li><a title="Red" class="red" href="#"></a></li>
                <li><a title="Magenta" class="magenta" href="#"></a></li>
                <li><a title="Brown" class="brown" href="#"></a></li>
                <li><a title="Gray" class="gray" href="#"></a></li>
                <li><a title="Golden" class="golden" href="#"></a></li>
                <li><a title="Teal" class="teal" href="#"></a></li>
            </ul>
            <h3>Layout Style</h3>
            <div class="layout-style">
                <select id="layout-style">
                    <option value="1">Wide</option>
                    <option value="2">Boxed</option>
                </select>
            </div>
            <h3>Header Color</h3>
            <div class="header-color">
                <input type='text' class="header-bg" />
            </div>
            <h3>Footer Top Color</h3>
            <div class="header-color">
                <input type='text' class="footer-bg" />
            </div>
            <h3>Footer Bottom Color</h3>
            <div class="header-color">
                <input type='text' class="footer-bottom" />
            </div>
            <h3>Background Image</h3>
            <ul id="bg" class="colors bg">
                <li><a class="bg1" href="#"></a></li>
                <li><a class="bg2" href="#"></a></li>
                <li><a class="bg3" href="#"></a></li>
                <li><a class="bg4" href="#"></a></li>
                <li><a class="bg5" href="#"></a></li>
                <li><a class="bg6" href="#"></a></li>
                <li><a class="bg7" href="#"></a></li>
                <li><a class="bg8" href="#"></a></li>
                <li><a class="bg9" href="#"></a></li>
                <li><a class="bg10" href="#"></a></li>
            </ul>
        </div>
    </section>
    <!-- /Style Switcher -->
    <!-- The Scripts -->
	<jsp:include page="${scripts_categories }"></jsp:include>
</body>
</html>