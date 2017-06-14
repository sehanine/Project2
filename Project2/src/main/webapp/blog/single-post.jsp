<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>single-post</title>
<!-- css import see /web_contents/css_components.jsp -->
	<jsp:include page="${css_blog }"></jsp:include>
<!-- css import see /web_contents/css_components.jsp -->

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALLMohZAbxWMtIL3--4x6C4ctVBxG7lc4&callback=initMap"
  type="text/javascript"></script>
<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
<script type="text/javascript">
    function initialize() {
     
        var mapOptions = {
                            zoom: 16, // 지도를 띄웠을 때의 줌 크기
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("map-canvas"), // div의 id과 값이 같아야 함. "map-canvas"
                                    mapOptions);
         
        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
     
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( '주소 여기에 기입!',
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding *****************************************************
        var address= "${sessionScope.postVO.addr }";
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // 마커로 사용할 이미지(변수)
                                title: '${sessionScope.postVO.addr }', // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
                                position: results[0].geometry.location
                            });
 
                var content = "${sessionScope.postVO.addr }"; // 말풍선 안에 들어갈 내용
             
                // 마커를 클릭했을 때의 이벤트.
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });
        // Geocoding // *****************************************************
         
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>
<body>
    <body class="blog">
        <div class="page-mask">
            <div class="page-loader">
                <div class="spinner"></div>
                로딩중
            </div>
        </div>
        <!-- Wrap -->
        <div class="wrap">
            <!-- Header -->
			<%@ include file="../web_components/nav_bar.jsp"%>
            <!-- /Header --> 
            <!-- Main Section -->
            <section id="main">
                <!-- Title, Breadcrumb -->
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">블로그 페이지</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재 위치</li>
                                            <li><a href="../index.jsp">메인</a></li>
                                            <li><a href="#">블로그</a></li>
                                            <li>상세 보기</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Title, Breadcrumb -->
                <!-- Main Content -->
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                            <div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <!--  Single Post -->
                                <article class="post hentry">
                                    <div class="post-image">

                                        <a href="${sessionScope.postVO.trip_pictures }" data-rel="prettyPhoto">

                                        <span class="img-hover"></span>
                                        <span class="fullscreen"><i class="fa fa-plus"></i></span>

                                        <img src="${sessionScope.postVO.trip_pictures }" alt="">

                                        </a>
                                    </div>
                                    <header class="post-header">
                                        <h2>${sessionScope.postVO.title }</h2>
                                        <div class="blog-entry-meta">
                                            <div class="blog-entry-meta-date">
                                                <i class="fa fa-clock-o"></i>
                                                <span class="blog-entry-meta-date-month">June</span>
                                                <span class="blog-entry-meta-date-day">23,</span>
                                                <span class="blog-entry-meta-date-year">2017</span>
                                            </div>
                                            <div class="blog-entry-meta-author">
                                                <i class="fa fa-user"></i>
                                                <a href="#" class="blog-entry-meta-author">${sessionScope.postVO.email }</a>
                                            </div>
                                            <div class="blog-entry-meta-tags">
                                                <i class="fa fa-tags"></i>
                                                <a href="#">${sessionScope.postVO.hash }</a>,
                                                <a href="#">${sessionScope.postVO.hash }</a>
                                            </div>
                                            <div class="blog-entry-meta-comments">
                                                <i class="fa fa-usd"></i>
                                                <a href="#" class="blog-entry-meta-comments">${sessionScope.postVO.cost } /person  &nbsp;</a>
                                            </div>
                                            
                                            <div class="blog-entry-meta-comments">
                                                <i class="fa fa-users"></i>
                                                <a href="#" class="blog-entry-meta-comments">max ${sessionScope.postVO.participants } </a>
                                            </div>
                                        </div>
                                    </header>
                                    <div class="post-content">
                                        <p>
                                           언어: ${sessionScope.postVO.lang }
                                        </p>
                                        <br>
                                        <p>
                                        카테고리: ${sessionScope.postVO.category }
                                        </p>
                                        <br>
                                        <p>
            	기관명: ${sessionScope.postVO.organization }
                                        </p>
                                        <br>
                                        <p>
                                        주의사항: ${sessionScope.postVO.cautions }
                                        </p>
                                        <br>
                                        <blockquote>
                                            <p>일정표: ${sessionScope.postVO.itinerary }</p>
                                        </blockquote>
                                    </div>
                                    <button id="favorite" type="button" class="btn btn-success">즐겨찾기</button>
                                    <button id="purchase" type="button" class="btn btn-success">구매하기</button>
                                </article>
                                <!--  /Single Post -->
                                <!-- Star -->
                                <div class="star">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="star-divider">
                                                <div class="star-divider-icon">
                                                    <i class=" fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Star -->  
                                <!-- Comments Section -->
                                <div class="comment-wrapper">
                                    <h3 class="title">Comments</h3>
                                    <div class="clearfix"></div>
                                    <div class="comments-sec">
                                        <ol class="commentlist">
                                            <li>
                                                <div class="comment" id="2">
                                                    <div class="avatar">
                                                        <img alt="" src="img/team/team-member-3.jpg">
                                                    </div>
                                                    <div class="comment-des">
                                                        <div class="arrow-comment">
                                                        </div>
                                                        <div class="comment-by">
                                                            <strong>Loren Simpson</strong><span class="date">July 30, 2014</span><span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
                                                        </div>
                                                        <p>
                                                            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
                                                        </p>
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="comment" id="4">
                                                    <div class="avatar">
                                                        <img alt="" src="img/team/team-member-4.jpg">
                                                    </div>
                                                    <div class="comment-des">
                                                        <div class="arrow-comment">
                                                        </div>
                                                        <div class="comment-by">
                                                            <strong>Indy Parker</strong><span class="date">July 30, 2014</span><span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
                                                        </div>
                                                        <p>
                                                            Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
                                                        </p>
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="comment" id="1">
                                                    <div class="avatar">
                                                        <img alt="" src="img/team/team-member-2.jpg">
                                                    </div>
                                                    <div class="comment-des">
                                                        <div class="arrow-comment">
                                                        </div>
                                                        <div class="comment-by">
                                                            <strong>Simon Jones</strong><span class="date">July 30, 2014</span><span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
                                                        </div>
                                                        <p>
                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                        </p>
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                </div>
                                                <ol class="childlist">
                                                    <li>
                                                        <div class="comment" id="3">
                                                            <div class="avatar">
                                                                <img alt="" src="img/team/team-member-1.jpg">
                                                            </div>
                                                            <div class="comment-des">
                                                                <div class="arrow-comment">
                                                                </div>
                                                                <div class="comment-by">
                                                                    <strong>Admin</strong><span class="date">July 30, 2014</span><span class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></span>
                                                                </div>
                                                                <p>
                                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                                </p>
                                                            </div>
                                                            <div class="clearfix">
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ol>
                                                <div class="clearfix">
                                                </div>
                                            </li>
                                        </ol>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                <!-- /Comments Section -->
                                <!-- Star-->
                                <div class="star">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="star-divider">
                                                <div class="star-divider-icon">
                                                    <i class=" fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Star -->  
                                <!-- Reply Section -->
                                <div class="reply">
                                    <h3 class="title">Leave a reply</h3>
                                    <form class="reply" id="reply">
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <input class="form-control" type="text" value="" placeholder="Name" required>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <input class="form-control" type="text" value="" placeholder="Email" required>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <input class="form-control" type="text" placeholder="Website" value="">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <textarea class="form-control" rows="3" cols="40" placeholder="Comment" required></textarea>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <button class="btn btn-color pull-right" type="submit">Post Reply</button>
                                        <div class="clearfix">
                                        </div>
                                    </form>
                                </div>
                                <!-- /Reply Section -->
                            </div>
                            <!-- Sidebar --> 
                            <div class="sidebar col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <!-- Search Widget -->
                                <div class="widget search-form">
                                    <div class="input-group">
                                        <input type="text" value="검색" onfocus="if(this.value=='Search...')this.value='';" onblur="if(this.value=='')this.value='Search...';" class="search-input form-control">
                                        <span class="input-group-btn">
                                        <button type="submit" class="subscribe-btn btn"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </div>
                                <!-- /Search Widget  -->
                                <!-- Tab -->
<!--                                 <div class="widget tabs">
                                    <div id="horizontal-tabs">
                                        <ul class="tabs">
                                            <li id="tab1" class="current">Popular</li>
                                            <li id="tab2">Recent</li>
                                            <li id="tab3">Comments</li>
                                        </ul>
                                        <div class="contents">
                                            <div class="tabscontent" id="content1" style="display: block;">
                                                <ul class="posts">
                                                    <li>
                                                        <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></a>
                                                        <p><a href="#">Lorem Ipsum is simply dummy text.</a></p>
                                                        <span class="color">27 July 2014</span>
                                                    </li>
                                                    <li>
                                                        <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></a>
                                                        <p><a href="#">Lorem Ipsum is simply dummy text.</a></p>
                                                        <span class="color">30 July 2014</span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tabscontent" id="content2">
                                                <ul class="posts">
                                                    <li>
                                                        <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></a>
                                                        <p><a href="#">Lorem Ipsum is simply dummy text.</a></p>
                                                        <span class="color">27 July 2014</span>
                                                    </li>
                                                    <li>
                                                        <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></a>
                                                        <p><a href="#">Lorem Ipsum is simply dummy text.</a></p>
                                                        <span class="color">30 July 2014</span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tabscontent" id="content3">
                                                <ul class="posts">
                                                    <li>
                                                        <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></a>
                                                        <p><a href="#">Lorem Ipsum is simply dummy text.</a></p>
                                                        by <span class="color">wptuts+</span>
                                                    </li>
                                                    <li>
                                                        <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></a>
                                                        <p><a href="#">Lorem Ipsum is simply dummy text.</a></p>
                                                        by <span class="color">wptuts+</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <!-- /Tab -->
                                <!-- Google Map -->
                                <div>
                                <h3 class="title">주소</h3>
                               		 <div id="map-canvas" style="width: 100%; height: 500px" title="여행 위치"></div>
                                </div></br></br>
                                <!-- /Google Map -->
                                <!-- Testimonials Widget -->
                                <div class="row">
                                    <div class="testimonials widget">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="testimonials-title">
                                                <h3 class="title">Testimonials</h3>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div id="testimonials-carousel" class="testimonials-carousel carousel slide">
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="testimonial item">
                                                            <p>
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                                            </p>
                                                            <div class="testimonials-arrow">
                                                            </div>
                                                            <div class="author">
                                                                <div class="testimonial-image "><img alt="" src="img/testimonial/team-member-1.jpg"></div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">Monica Sing</span></a> FIFO Themes
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="testimonial item">
                                                            <p>
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                                            </p>
                                                            <div class="testimonials-arrow">
                                                            </div>
                                                            <div class="author">
                                                                <div class="testimonial-image "><img alt="" src="img/testimonial/team-member-2.jpg"></div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">Monzurul Haque</span></a> FIFO Themes
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="testimonial item">
                                                            <p>
                                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                                            </p>
                                                            <div class="testimonials-arrow">
                                                            </div>
                                                            <div class="author">
                                                                <div class="testimonial-image "><img alt="" src="img/testimonial/team-member-3.jpg"></div>
                                                                <div class="testimonial-author-info">
                                                                    <a href="#"><span class="color">Carol Johansen</span></a> FIFO Themes
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Testimonials Widget -->
                                <!-- Text Widget -->
                                <div class="widget text">
                                    <h3 class="title">Text Widget</h3>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <p>Fugiat dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum mas justo sitters amet risus. Cras mattis cosi sectetut amet fermens etrsaters tum aecenas faucib sadips amets.</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Text Widget -->                            
                                <!-- Category Widget -->
                                <div class="widget category">
                                    <h3 class="title">Categories</h3>
                                    <ul class="category-list slide">
                                        <li><a href="#">Web Design</a></li>
                                        <li><a href="#">Graphic Design</a></li>
                                        <li><a href="#">Illustration</a></li>
                                        <li><a href="#">Logo Design</a></li>
                                        <li><a href="#">Wordpress Themes</a></li>
                                    </ul>
                                </div>
                                <!-- /Category Widget -->
                                <!-- Tag Cloud Widget -->
                                <div class="widget tags">
                                    <h3>Tag Cloud</h3>
                                    <ul class="tag-cloud">
                                        <li><a class="btn btn-xs btn-primary" href="#">Design</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Amazing</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Colors</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Responsive</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Multipurpose</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Clean</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Wordpress</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Bootstrap</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Themes</a></li>
                                        <li><a class="btn btn-xs btn-primary" href="#">Retina Ready</a></li>
                                    </ul>
                                </div>
                                <!--/Tag Cloud Widget -->                      
                                <!-- Ads Widget -->
                                <div class="widget ads">
                                    <h3 class="title">Advertisement</h3>
                                    <div class="ads-img row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <img class="img-thumbnail" alt="" src="img/ads-small.jpg">
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <img class="img-thumbnail" alt="" src="img/ads-small.jpg">
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <img class="img-thumbnail" alt="" src="img/ads-small.jpg">
                                        </div>
                                    </div>
                                </div>
                                <!-- /Ads Widget -->
                            </div>
                            <!-- /Sidebar --> 
                        </div>
                    </div>
                </div>
                <!-- Main Content end-->
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
	<jsp:include page="${scripts_blog }"></jsp:include>
	<script type="text/javascript">
		$("#favorite").click(function () {
			alert("즐겨찾기에 추가 되었습니다.");
		});
		$("#purchase").click(function () {
			alert("구매 페이지로 이동 합니다.");
		});
	</script>
</body>
</html>