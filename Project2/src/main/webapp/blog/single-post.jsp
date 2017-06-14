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
                                                <span class="blog-entry-meta-date-month">August</span>
                                                <span class="blog-entry-meta-date-day">23,</span>
                                                <span class="blog-entry-meta-date-year">2014</span>
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
                                        주소: ${sessionScope.postVO.addr }
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
                                <div class="widget tabs">
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
                                </div>
                                <!-- /Tab -->
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
            <!-- Modal -->
            <section id="modals">
                <!-- Login Modal -->
                <div class="modal login fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="form-signin-heading modal-title" id="myModalLabel">Login</h2>
                            </div>
                            <form method="post" id="login">
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" id="username" name="username" type="text" placeholder="Username" value="" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <input class="form-control" type="email" id="email" name="email" placeholder="Email" value="" required>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="modal-footer">
                                    <a href="password-recovery.html" class="pull-left">(Lost Password?)</a>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-color">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Login Modal -->
                <!-- Registration Modal -->
                <div class="modal register fade" id="registrationModal" tabindex="-1" role="dialog" aria-labelledby="registrationModal" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h2 class="form-signin-heading modal-title" id="registrationModalLabel">Create a new account</h2>
                        </div>
                        <form method="post" id="registration">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="text" value="" class="form-control" placeholder="First Name">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" value="" class="form-control" placeholder="Last Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="text" value="" class="form-control" placeholder="E-mail Address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="password" value="" class="form-control" placeholder="Password">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="password" value="" class="form-control" placeholder="Re-enter Password">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-color">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Registration Modal -->
            </section>
            <!-- /Modal -->
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
	<jsp:include page="${scripts_blog }"></jsp:include>
</body>
</html>