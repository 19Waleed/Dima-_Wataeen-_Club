<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dima__Wataeen__Club.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <meta charset="utf-8"/>
      <title>Dima Wataeen Club</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/style.css" rel="stylesheet"/>
      <link href="css/slider-style.css" rel="stylesheet"/>
      <link rel="stylesheet" href="css/styles.css" />
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png"/>
      <link rel="shortcut icon" href="img/favicon.png"/>
     <style type="text/css">
         .auto-style1 {
             height: 28px;
             width: 95px;
         }
         .auto-style2 {
             right: 0px;
             top: 0px;
         }
         .auto-style3 {
             height: 33px;
             width: 39px;
         }
         .auto-style4 {
             background-color: #FF0000;
         }
         .auto-style5 {
             width: 90%;
             margin: auto;
             height: 3px;
         }
           body {
             background-color:#99764c ;
         }
     </style>
</head>
<body>
    <form id="form" runat="server">
        <div>
        </div>
      <div class="row clearfix header">
               <div class="col-md-12 column header-top">
                   <div class="center">

                            <div class="col-md-4 column logo" style="right: 0px; top: 0px">
                     <a class="orb" >
                        Dima Wataeen Club <img src="img/logo.png"   class="auto-style1" /></a> 
                   </div>

                 
                          <div class="col-md-4 column lang">
                         &nbsp;
                   </div>
                 
                         </div>
               </div>
                <div class="col-md-12 column header-bottom">
                   <div class="center">
                            <div class="col-md-2 column last-news ">
                          <h3 class="auto-style4">New news</h3>
                   </div>
                                 <div class="col-md-7 column marquee">
                         <marquee>
                         <a href="#">Programmer 19F18961 Waleed Al-Siyabi, a bachelor’s degree student in software technology. He is designing a special website and application for the club, which he will test on May 20, 2024</a>
                             
                         </marquee>
                       
                   </div>
                    <div class="col-md-3 column social">
                        <ul>
                        <li><a href="https://www.facebook.com/alansar.team/"></a></li>
                        <li><a href="https://x.com/D_ataeen_club"></a></li>
                        <li><a href="https://www.youtube.com/watch?app=desktop&v=4rida5HKDEs"></a></li>   
                        <li><a href="https://www.instagram.com/d_ataeen_club/?igsh=Z2JrdjNzMmowNHky"></a></li>  
                        <li><a href="https://wa.me/99446197"> <img src="img/whatsapp-.png" class="auto-style3"/> </a></li> 
    
                        </ul>
                      
                   </div>
           
                 
                         </div>
               </div>
          
          
      </div>
<span id="sl_play" class="sl_command"></span> 
<span id="sl_pause" class="sl_command"></span> 
<span id="sl_i1" class="sl_command sl_i"></span> 
<span id="sl_i2" class="sl_command sl_i"></span> 
<span id="sl_i3" class="sl_command sl_i"></span> 
<span id="sl_i4" class="sl_command sl_i"></span>
            
	<div id="slideshow">
			<a class="play_commands pause" href="#sl_pause" title="Maintain paused">Pause</a>
		<a class="play_commands play" href="#sl_play" title="Play the animation">Play</a>
		<a class="commands prev commands1" href="#sl_i4" title="Go to last slide">&lt;</a>
		<a class="commands next commands1" href="#sl_i2" title="Go to 2nd slide">&gt;</a>
		<a class="commands prev commands2" href="#sl_i1" title="Go to 1rst slide">&lt;</a>
		<a class="commands next commands2" href="#sl_i3" title="Go to 3rd slide">&gt;</a>
		<a class="commands prev commands3" href="#sl_i2" title="Go to 2nd slide">&lt;</a>
		<a class="commands next commands3" href="#sl_i4" title="Go to 4th slide">&gt;</a>
		<a class="commands prev commands4" href="#sl_i3" title="Go to 3rd slide">&lt;</a>
		<a class="commands next commands4" href="#sl_i1" title="Go to first slide">&gt;</a>
		

		
		<div class="container">
			<div class="c_slider"></div>
			<div class="slider" style="left: 0; top: 0">
				<figure>
					<img src="img/slide.jpeg" alt="" />
				</figure><!--

				--><figure>
					<img src="img/slide1.jpeg" alt="" />
				</figure><!--

				--><figure>
					<img src="img/slide2.jpeg" alt="" />
				</figure><!--
				--><figure>
					<img src="img/slide3.jpeg" alt="" />
				</figure><!--
				--><figure>
					<img src="img/slide4.jpeg" alt="" />
				</figure>
			</div>
		</div>

     
		
		<span id="timeline"></span>
		
		<ul class="dots_commands"><!--
			--><li><a title="Show slide 1" href="#sl_i1">Slide 1</a></li><!--
			--><li><a title="Show slide 2" href="#sl_i2">Slide 2</a></li><!--
			--><li><a title="Show slide 3" href="#sl_i3">Slide 3</a></li><!--
			--><li><a title="Show slide 4" href="#sl_i4">Slide 4</a></li><!--
			--><li><a title="Show slide 4" href="#sl_i4">Slide 5</a></li>
		</ul>
          
                 <div class="row clearfix" id="bar" style="right: -25px; top: 0px; width: 96%">
                          <div id="drop" aria-orientation="vertical">
              main menu
            </div>
                  <ul class="nav nav-tabs">

                 <li>
                        <a href="#" aria-orientation="vertical" class="auto-style2">More</a>
                          <div id="drop-list">ٍ
                    
                    
                     <div class="drop-list"><a href="LoginApp.aspx">Application</a></div>
                     </div><!--drop-list--> 
                     </li>
                             <li >
                        <a href="CV_Programmer.aspx">CV Programme</a>
                          </li>
                                           <li>
                        <a href="contact.aspx">Contact</a>
                     </li>
                        <li>
                        <a href="About.aspx">About</a>
                        
                     </li>
                        <li>
                        <a href="Digital_product.aspx">Digital Product</a>
                        
                     </li>
                     
                      <li>
                        <a href="Club_Competitions_For_Teams.aspx">Competitions Teams</a>
                     </li>
                        <li>
                        <a href="Champions_League.aspx">Champions League</a>
                     </li>
                       
                        <li class="auto-style2">
                        <a href="Articles_Outside_TheClub.aspx">Articles Outside Club</a>
                     </li>
                  </ul>
            </div>
		
	</div>
         <div class="auto-style5">

       <div class="row">
            <div class="col-md-4 box3-container"> 
       </div> 

       <div id="border"></div>
      </div>
         </div>  
 
<script>

    var bottom_of_object = $('.outer').offset().top + $('.outer').outerHeight();
    var bottom_of_window = $(window).scrollTop() + $(window).height();
    if (bottom_of_window > bottom_of_object) {
        $('.right').animate({ 'opacity': '1', 'right': '0px' }, 1000);
        $('.left').animate({ 'opacity': '1', 'left': '0px' }, 1000);
        $('.top').animate({ 'opacity': '1', 'top': '0px' }, 1000);
        $('.bottom').animate({ 'opacity': '1', 'bottom': '0px' }, 1000);
        $('.scale').animate({ 'width': '100%', 'height': '100%' }, 1000);
    }

</script>
 <script type="text/javascript" src="js/jquery.min.js"></script>
      <script type="text/javascript" src="js/bootstrap.min.js"></script>
      <script type="text/javascript" src="js/scripts.js"></script>
      <script type="text/javascript" src="js/slider-js.js"></script>
       <script type="text/javascript">
           $('.pgwMenu').pgwMenu();
           $('a[data-goto]').click(function () { pgwjs.goTo($(this).attr('data-goto')); });
           var pgwSlider = $('.pgwSlider').pgwSlider(); function reloadSlider() { var newConfig = {}; var listPosition = $('input[name=\"listPosition\"]:checked').val(); if (listPosition == 'none') { newConfig.displayList = false; } else { newConfig.listPosition = listPosition; } newConfig.selectionMode = $('input[name=\"selectionMode\"]:checked').val(); newConfig.transitionEffect = $('input[name=\"transitionEffect\"]:checked').val(); if ($('#displayControls:checked').val() == 'true') { newConfig.displayControls = true; } if ($('#verticalCentering:checked').val() == 'true') { newConfig.verticalCentering = true; } if ($('#adaptiveHeight:checked').val() == 'true') { newConfig.adaptiveHeight = true; } if ($('#maxHeight:checked').val() == 'true') { newConfig.maxHeight = 300; } pgwSlider.reload(newConfig); } $('.sliderConfig input').bind('change', function () { reloadSlider() }); (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-59412371-1', 'auto'); ga('send', 'pageview');
       </script>
<script>
    $(function () {
        $('.says-loop:gt(0)').hide();
        setInterval(function () {
            $('.says-loop:first-child').fadeOut()
                .next().fadeIn()
                .end().appendTo('.says');
        },
            3000);
    });
</script>
    </form>
</body>
</html>

