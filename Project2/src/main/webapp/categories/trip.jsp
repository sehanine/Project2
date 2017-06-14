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
                                                        <a href="single-post.do?no=2" class="swap-image">
                                                        <img src="img/trip/roadtripposter.png" title="iPhone 5s 64 GB" alt="iPhone 5s 64 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <!-- /Swap image -->
                                                    <a href="img/trip/roadtripposter.png" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=2">로드 트립</a></h3>
                                                        <div class="price">
                                                        
                                                            <span class="price-new">$150</span>
                                                        
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            로드 트립은 먹고 자고 차만 타고 이동하는 의미 없는 여행 입니다.
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
                                                        <a href="single-post.do?no=3" class="swap-image">
                                                        <img src="http://www.cjry.ca/wp-content/uploads/2016/09/Movie-night-clipart.png" title="iPhone 4 16 GB" alt="iPhone 4 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=3" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=3">Movie night</a></h3>
                                                        <div class="price">
                                                            
                                                            <span class="price-new">$100</span>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            닥치고 영화 보는날! 말걸기 없음, 팝콘 처먹기 금지, 화장실가면 사형
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
                                                        <a href="single-post.do?no=6" class="swap-image">
                                                        <img src="https://a0.muscache.com/im/pictures/b7b034c4-b90f-4413-b8d2-2c09d5be1a04.jpg?aki_policy=xl_poster" title="Small TV Box" alt="Small TV Box" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=6" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=6">Barcelona Sunset</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$90</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                        </div>
                                                        <p class="description">
                                                            9 years ago I quit my job to start living my dream; to buy a wooden sailing boat and live on the sea. Now I spend my time sailing, exploring new places & meeting people.
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
                                                        <a href="single-post.do?no=7" class="swap-image">
                                                        <img src="https://a0.muscache.com/ac/pictures/a357914a-eadb-4d19-856d-89f99aa77c32.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70" title="Box Stereo Remote" alt="Box Stereo Remote" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=7" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=7">Box Stereo Remote</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$30</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-3.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            겨울에는 송은아트상이 개최됩니다. 4명의 파이널 리스트 작가들이 선정되어 전시를 열게 되고, 전시 후에 우승자가 선별돼요.
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
                                                        <a href="single-post.do?no=8" class="swap-image">
                                                        <img src="http://static.barcelonaovertime.com/image/cache/data/Routes/Barcelona%20sea/COLONdef-960x410.jpg" title="iPhone 5s 16 GB" alt="iPhone 5s 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=8" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=8"></a></h3>
                                                        <div class="price">
                                                            <span class="price-new">$26</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 2 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            There are a few ways to get to the Port Olimpic on public transportation: metro (Line L4), bus (V21, V27, 45, 59, and 92), as well as a taxi.
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
                                                        <a href="single-post.do?no=9" class="swap-image">
                                                        <img src="https://a0.muscache.com/im/pictures/8fd84859-8712-468b-9a7f-338dab1761da.jpg?aki_policy=xl_poster" title="Huawei Smart Mobile" alt="Huawei Smart Mobile" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=9" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=9">Jazz Hands</a></h3>
                                                        <div class="price">
                                                          
                                                            <span class="price-new">$30</span>
                                                          
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            We’ll welcome you into a beautiful private apartment in one of the most artistic neighbourhoods of Barcelona. The exact address will be provided upon booking.
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
                                                        <a href="single-post.do?no=10" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/26/1815126_image2_1.jpg" title="LG G-Flex 16 GB" alt="LG G-Flex 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a class="pav-colorbox btn btn-theme-default cboxElement" href="product-view.html"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=10">굴구지 피래미 축제</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$100</span>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            물 맑고 인심 좋은 천혜의 고장 굴구지산촌마을에서 제10회 굴구지 피래미축제를 개최한다. 울진의 젖줄 왕피천이 굽이굽이 흘러가는 굴구지산촌마을은 40세대 70여명이 옹기종기 모여 사는 곳이다. 아름다운 자연경관을 지닌 곳으로 우리나라 최고의 트래킹 코스로 각광받는 곳이기도 하다. 산촌생태마을 조성사업 및 테마형 체험시범관광마을인 굴구지 산촌마을에서 펼쳐지는 피래미축제를 통해 마음과 몸에 쌓인 스트레스를 날리고 가족과 함께 동심으로 돌아가 보자.
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
                                                        <a href="single-post.do?no=11" class="swap-image">
                                                        <img src="https://a0.muscache.com/im/pictures/984bce40-1488-4243-baaa-04e4a17a5caf.jpg?aki_policy=xl_poster" title="iMac 27" alt="iMac 27" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=11" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=11">Organic Cooking</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$100</span>
                                                            <span class="price-new">$75</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-3.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                           
                                                        	Dinner ？？We'll cook a 3 course meal using seasonal organic products from local farms - some from our own gardenWine ？？Everything organic.Coffee/tea & cake ？？
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
                                                        <a href="single-post.do?no=12" class="swap-image">
                                                        <img src="https://a0.muscache.com/im/pictures/19e2bbd9-69f7-48b8-896f-421679a6aff7.jpg?aki_policy=xl_poster" title="Smart TV Box" alt="Smart TV Box" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=12" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=12">Bike ride</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$70</span>

                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-4.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            From my studio in Sasazuka we will cross Kanana Steet and explore the temple area of Eifuku and the young town of Meidaimae
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
                                                        <a href="single-post.do?no=13" class="swap-image">
                                                        <img src="http://tong.visitkorea.or.kr/cms/resource/70/2493870_image2_1.jpg" title="LG Monitor 32 Inch" alt="LG Monitor 32 Inch" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=13" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=13">진안국 마을축제 2017</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$100</span>
                                                            <span class="price-new">$80</span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-2.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            올해로 10회째를 맞이하는 진안군마을축제는, 침체되어가는 농촌에 활력을 불어넣는 일을 하는 마을만들기의 과정으로서 주민의 역량을 강화하고 자율적, 생산적 공동체 형성을 위하여 주민스스로가 학습하며 만들어가는 ‘주민
축제 이다
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
                                                        <a href="single-post.do?no=14" class="swap-image">
                                                        <img src="https://a0.muscache.com/im/pictures/d5453178-6dc4-4641-9f7c-bef2021ebb95.jpg?aki_policy=xl_poster" title="iPhone 5s 32 GB" alt="iPhone 5s 32 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=14" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=14">Shibuya Street Style</a></h3>
                                                        <div class="price">
                                                            <span class="special-price">$71</span>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <div class="rating">
                                                            <img src="img/shop/stars-5.png" alt="Based on 1 reviews.">
                                                        </div>
                                                        <p class="description">
                                                            Going to Pizza Slice! ？？We end our travels in Minami-Aoyama and get a bite at Pizza Slice and talk style, wardrobe, or anything! Whole pie on me!
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
                                                        <a href="single-post.do?no=15" class="swap-image">
                                                        <img src="https://a0.muscache.com/im/pictures/e4809c9d-0dcd-4cc5-9b50-248845c77c61.jpg?aki_policy=xl_poster" title="iPhone 4 16 GB" alt="iPhone 4 16 GB" class="front">
                                                        </a>
                                                    </div>
                                                    <a href="single-post.do?no=15" class="pav-colorbox btn btn-theme-default cboxElement"><em class="fa fa-plus"></em><span>View Product</span></a>
                                                </div>
                                                <div class="product-meta">
                                                    <div class="left">
                                                        <h3 class="name"><a href="single-post.do?no=15">Legends & Mysteries</a></h3>
                                                        <div class="price">
                                                            <span class="price-old">$95</span>
                                                            <span class="price-new">$80</span>
                                                            
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
  		<jsp:include page="${footer }"></jsp:include>
        <!-- /Footer -->
        <!-- Scroll To Top --> 
        <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
    </div>
    <!-- /Wrap -->
   
    <!-- The Scripts -->
	<jsp:include page="${scripts_categories }"></jsp:include>
</body>
</html>