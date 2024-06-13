<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Club_news.aspx.cs" Inherits="Dima__Wataeen__Club.Club_news" %>

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
             width: 90%;
             height: 21px;
         }
         .auto-style2 {
             height: 84px;
             width: 12%;
         }
         .auto-style3 {
             position: relative;
             min-height: 1px;
             float: left;
             width: 50%;
             right: 0px;
             top: 0px;
             padding-left: 15px;
             padding-right: 15px;
         }
     </style>
     </head>
<body>
    <form id="form" runat="server">
        <div>
        
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
 
<span id="sl_play" class="sl_command"></span> 
<span id="sl_pause" class="sl_command"></span> 
<span id="sl_i1" class="sl_command sl_i"></span> 
<span id="sl_i2" class="sl_command sl_i"></span> 
<span id="sl_i3" class="sl_command sl_i"></span> 
<span id="sl_i4" class="sl_command sl_i"></span>
           
<div class="center">
 
<div class="row">
   <div id="border" class="auto-style1">
       </div>
  <div class="auto-style7">
<div class="row center page single" style="height: 633px; width: 98%;">
    <h3 class="page-title"><img class="right-img" src="img/right.png" />  Digital product <span>  </span> <img class="left-img" src="img/left.png" /><a href="Default.aspx" class="return">Back Home</a></h3>
    <div class="auto-style9">
        <p class="auto-style11">                    
           </p>
         <p class="auto-style11"> 
              <div id="border" class="auto-style1">

       </div>
              <div id="border" class="auto-style1">

       </div>
                           <div id="border" class="auto-style1">

       </div>
           </p>
           
                      <div class="row articles">
               <div class="small-header">
               <h3>مقالات</h3>
                   <div class="border"></div>
                     <img src="img/logo.png" class="auto-style2" />
               </div>
                <div class="col-md-12 block-row">
                                                              <div class="col-md-6">

                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
الاكثر تعليقا                    </a>
                  </div>
                  <div style="height: 0px;" id="collapseOne" class="accordion-body collapse">
                    <div class="accordion-inner">
                                            <div class="accordion-inner-row">

                  <a href="#"><img src="img/football_players_sport_fight_ultra_3840x2160_hd-wallpaper-185971.jpg" /></a> 
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد ادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد </h3>
                      <a href="single.html">المزيد</a>
                   </div>
                                           </div>
                                                                    <div class="accordion-inner-row">

                  <a href="#"><img src="img/football_players_sport_fight_ultra_3840x2160_hd-wallpaper-185971.jpg" /></a> 
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد ادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد </h3>
                       <a href="single.html">المزيد</a>
                   </div>
                                           </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
الاسئلة الشائعة                     </a>
                  </div>
                  <div style="height: 0px;" id="collapseTwo" class="accordion-body collapse">
                    <div class="accordion-inner">
                                            <div class="accordion-inner-row">

                  <a href="#"><img src="img/football_players_sport_fight_ultra_3840x2160_hd-wallpaper-185971.jpg" /></a> 
                                                <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد ادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد </h3>
                                                    <a href="single.html">المزيد</a>
                   </div>
                                           </div>
                                                                    <div class="accordion-inner-row">

                  <a href="#"><img src="img/football_players_sport_fight_ultra_3840x2160_hd-wallpaper-185971.jpg" /></a> 
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد ادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد </h3>
                        <a href="single.html">المزيد</a>
                   </div>
                                           </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
الاكثر مشاهدة                    </a>
                  </div>
                  <div style="height: auto;" id="collapseThree" class="accordion-body in collapse">
                    <div class="accordion-inner">
                                            <div class="accordion-inner-row">

                  <a href="#"><img src="img/football_players_sport_fight_ultra_3840x2160_hd-wallpaper-185971.jpg" /></a> 
                                                <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد ادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد </h3>
                                                    <a href="#">المزيد</a>
                   </div>
                                           </div>
                                                                    <div class="accordion-inner-row">

                  <a href="#"><img src="img/football_players_sport_fight_ultra_3840x2160_hd-wallpaper-185971.jpg" /></a> 
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد ادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد </h3>
                        <a href="single.html">المزيد</a>
                   </div>
                                           </div>
 
                    </div>
                  </div>
                </div>
                                                                  <H3 class="table-title" >جدول الدورى</H3>
                                                                  <table>
                                                                  <tr>
                                                                   <th>م</th> 
                                                                       <th>الفريق</th> 
                                                                       <th>نقاط</th> 
                                                                       <th>لعب</th> 
                                                                       <th>اهداف</th> 
                                                                 </tr>
                                                                      <tr>
                                                                      <td>1</td>
                                                                       <td>الاهلى</td> 
                                                                          <td>3</td>
                                                                          <td>3</td>
                                                                          <td>9</td>
                                                                      </tr>
                                                                               <tr>
                                                                      <td>1</td>
                                                                       <td>الاهلى</td> 
                                                                          <td>3</td>
                                                                          <td>3</td>
                                                                          <td>9</td>
                                                                      </tr>
                                                                               <tr>
                                                                      <td>1</td>
                                                                       <td>الاهلى</td> 
                                                                          <td>3</td>
                                                                          <td>3</td>
                                                                          <td>9</td>
                                                                      </tr>
                                                                                             <tr>
                                                                      <td>1</td>
                                                                       <td>الاهلى</td> 
                                                                          <td>3</td>
                                                                          <td>3</td>
                                                                          <td>9</td>
                                                                      </tr>
                                                                  </table>
              
  </div>
           
                <div class="col-md-6">
               <div class="block">
                   <div class="outer-img">
                   <img src="img/hd-football-pictureshd-football-background-hd-wallpapers-5k1gmfwd-728x455.jpg" />
                   </div>
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد</h3>
                      <a href="single.html">المزيد</a>
                   </div>
               </div>
                            <div class="block">
                   <div class="outer-img">
                   <img src="img/hd-football-pictureshd-football-background-hd-wallpapers-5k1gmfwd-728x455.jpg" />
                   </div>
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد</h3>
                      <a href="single.html">المزيد</a>
                   </div>
               </div>
                            <div class="block">
                   <div class="outer-img">
                   <img src="img/hd-football-pictureshd-football-background-hd-wallpapers-5k1gmfwd-728x455.jpg" />
                   </div>
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد</h3>
                     <a href="single.html">المزيد</a>
                   </div>
               </div>
                                   <div class="block">
                   <div class="outer-img">
                   <img src="img/hd-football-pictureshd-football-background-hd-wallpapers-5k1gmfwd-728x455.jpg" />
                   </div>
                   <div class="details">
                       <h3>نادى العربى الرياضى يقوم بانشاء موقع الكترونى جديد</h3>
                      <a href="single.html">المزيد</a>
                   </div>
               </div>
                </div> 
                                    

            
                    
                    </div> 
             
                          
                          
           </div>
                    <div class="row three-blocks">
                                                                                        <div class="col-md-4">
                                 <div class="inner">
                    <div class="three-blocks-header">
<img src="img/news.png" /><h3>قالوا عن النادى فى الصحف والمجلات</h3>
</div>
                                            <div class="col-md-12 says">
                                                <div class="says-loop">
<h3>جريدة الاهرام</h3>
                                                <p>نادى العربى من الاندية المجتهدة الواعدة فى العالم  . . . </p>
  <a href="single.html">المزيد</a>
                                            </div>
                                                                                                <div class="says-loop">
<h3>اليوم السابع</h3>
                                                <p> صدارة الدورى العربى تنتظر نادى العربى الرياضى . . . </p>
  <a href="single.html">المزيد</a>
                                            </div>
                                                  </div>
  </div>
</div> 
 
                                        <div class="col-md-4 thebest">
                                 <div class="inner">
                    <div class="three-blocks-header">
<img src="img/shoes.png" /><h3>الاستفتاء الشهرى الخاص بأفضل لاعب هذا الشهر</h3>
</div>
                                            <div class="col-md-12 form">
                                                <form action="" method="post">
                                                    
    <div class="col-md-6">
         <div class="player">
        <input type="radio" name="a" /> إبراهيم سعيد </div>
                                                </div>
                                                    
             <div class="auto-style3">
         <div class="player">
        <input type="radio" name="a" /> إبراهيم سعيد </div>
                                                </div>
                                                    <div class="col-md-6">
         <div class="player">
        <input type="radio" name="a" /> إبراهيم سعيد </div>
                                                </div>
                                                    <div class="col-md-6">
         <div class="player">
        <input type="radio" name="a" /> إبراهيم سعيد </div>
                                                </div>
           <div style="clear:both;">
               <input type="submit" name="submit" value="تصويت" />
                                                    </div>                                     
                                                </form>

                                            </div>
  </div>
</div> 
                                        <div class="col-md-4">
                                 <div class="inner">
                    <div class="three-blocks-header">
<img src="img/icon.png" /><h3>الوقت المتبقى على المباراة القادمة</h3>
</div>
                                     <div id="vs">
                                        <img class="vs" src="img/bar.png" />
                                         <span class="vs">vs</span>
                                        <img class="vs" src="img/bar.png" />
                                     </div>
                                            <div class="col-md-12 time">
                                            <div class="col-md-4">
                                                <span>5</span> : ايام
                                                </div>
                                                       <div class="col-md-4">
                                                <span>7</span> : ساعات
                                                </div>
                                                       <div class="col-md-4">
                                                <span>10</span> : دقائق
                                                </div>
                                            </div>
  </div>
</div>   
</div>





    </div> 
  </div>  
    &nbsp;</div>

 </div>  
           </div>
            </div>
    </form>

</body>
</html>
