<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>board</title>
   <script src="/resources/bootstrap/js/respond.js"></script>
        <script src="/resources/bootstrap/js/jquery.number.min.js"></script>
        <script src="/resources/bootstrap/js/jssor.slider.mini.js"></script>
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
			
			<jsp:include page="${nav_bar }"></jsp:include>
            <!-- /Header --> 
            <!-- Main Section -->
            <section id="main">
                <!-- Title, Breadcrumb -->
                <div class="breadcrumb-wrapper">
                    <div class="pattern-overlay">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <h2 class="title">게시판</h2>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <div class="breadcrumbs pull-right">
                                        <ul>
                                            <li>현재 위치</li>
                                            <li><a href="../index.jsp">메인</a></li>
                                            <li><a href="#">게시판</a></li>
                                            <li>상세 보기</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
        <!-- Main Content -->
        <p>
        <p>
        <p>
		<center>
		<table border="0" width="700">
			<tr>
				<td align="left">
					<a href="insert.do">글쓰기</a>
				</td>
			</tr>
		</table>
		
		<table  width="700" class="table table-hover" style="width: 70% ">
			<tr>
				<th width="10%">번호</th>
				<th width="45%">제목</th>
				<th width="15%">이름</th>
				<th width="20%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
			
			<!-- model.addAttribute("list", list); -->
			<c:forEach var="vo" items="${list }">
				<tr id="dataTr">
					<td width="10%" align="center">${vo.no }</td> 
					<td width="45%" align="left">
						<a href="content.do?no=${vo.no }">${vo.subject }</a>
					</td> 
					<td width="15%" align="center">${vo.name }</td>
					<td width="20%" align="center">
						<fmt:formatDate value="${vo.regdate }"
							pattern="yyyy-MM-dd"
						/>
					</td>
					<td width="10%" align="center">${vo.hit }</td>
				</tr>		
			</c:forEach>
		</table>
		
		<table border="0" width="700">
			<tr>
				<td align="right">
				 <div class="form-group" style="">
                     <ul class="pagination">
                     	<li class="pagination"><a href="board.do?page=${curpage>1 ? curpage-1:curpage }"><</a></li>
                     		
                     		
                     	<li class="pagination"><a href="board.do?page=${curpage<totalpage ? curpage+1:curpage }">></a></li>
                     </ul>
                  </div>
					<!-- model.addAttribute("curpage", curpage) 이전 페이지-->
					<!-- model.addAttribute("totalpage", totalpage); -->
		
					${curpage } page / ${totalpage } pages
				</td>
			</tr>
		</table>
	</center>
                <!-- /Main Content -->
                <!-- /Title, Breadcrumb -->
<!--                 Main Content
                <div class="content margin-top60 margin-bottom60">
                    <div class="container">
                        <div class="row">
                            <div class="posts-block col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                 Single Post
                                <article class="post hentry">
                                    <div class="post-image">
                                        <a href="img/blog/blog-post1.jpg" data-rel="prettyPhoto">
                                        <span class="img-hover"></span>
                                        <span class="fullscreen"><i class="fa fa-plus"></i></span>
                                        <img src="img/blog/blog-post1.jpg" alt="">
                                        </a>
                                    </div>
                                    <header class="post-header">
                                        <h2>Nobis at incidunt nisi consequatur cum</h2>
                                        <div class="blog-entry-meta">
                                            <div class="blog-entry-meta-date">
                                                <i class="fa fa-clock-o"></i>
                                                <span class="blog-entry-meta-date-month">August</span>
                                                <span class="blog-entry-meta-date-day">23,</span>
                                                <span class="blog-entry-meta-date-year">2014</span>
                                            </div>
                                            <div class="blog-entry-meta-author">
                                                <i class="fa fa-user"></i>
                                                <a href="#" class="blog-entry-meta-author">John Doe</a>
                                            </div>
                                            <div class="blog-entry-meta-tags">
                                                <i class="fa fa-tags"></i>
                                                <a href="#">Web Design</a>,
                                                <a href="#">Branding</a>
                                            </div>
                                            <div class="blog-entry-meta-comments">
                                                <i class="fa fa-comments"></i>
                                                <a href="#" class="blog-entry-meta-comments">3 comments</a>
                                            </div>
                                        </div>
                                    </header>
                                    <div class="post-content">
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </p>
                                        <br>
                                        <p>
                                            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
                                        </p>
                                        <br>
                                        <p>
                                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
                                        </p>
                                        <br>
                                        <blockquote>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus enim veritatis, suscipit sapiente similique delectus perferendis natus praesentium, sunt quisquam eos. Fugit aut nisi dolores blanditiis fuga, soluta velit repudiandae.</p>
                                        </blockquote>
                                    </div>
                                </article>
                                 /Single Post
                                Star
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
                                Star  
                                Comments Section
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
                                /Comments Section
                                Star
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
                                Star  
                                Reply Section
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
                                /Reply Section
                            </div>
                            Sidebar 
                            <div class="sidebar col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                Search Widget
                                <div class="widget search-form">
                                    <div class="input-group">
                                        <input type="text" value="검색" onfocus="if(this.value=='Search...')this.value='';" onblur="if(this.value=='')this.value='Search...';" class="search-input form-control">
                                        <span class="input-group-btn">
                                        <button type="submit" class="subscribe-btn btn"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                    /input-group
                                </div>
                                /Search Widget 
                                Tab
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
                                /Tab
                                Testimonials Widget
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
                                /Testimonials Widget
                                Text Widget
                                <div class="widget text">
                                    <h3 class="title">Text Widget</h3>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <p>Fugiat dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum mas justo sitters amet risus. Cras mattis cosi sectetut amet fermens etrsaters tum aecenas faucib sadips amets.</p>
                                        </div>
                                    </div>
                                </div>
                                /Text Widget                            
                                Category Widget
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
                                /Category Widget
                                Tag Cloud Widget
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
                                /Tag Cloud Widget                      
                                Ads Widget
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
                                /Ads Widget
                            </div>
                            /Sidebar 
                        </div>
                    </div>
                </div>
                Main Content end
            </section>
            /Main Section -->
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