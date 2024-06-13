<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Club_Competitions_For_Teams.aspx.cs" Inherits="Dima__Wataeen__Club.Club_Competitions_For_Teams" %>

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
             height: 68px;
             width: 12%;
         }
       

         body{
             
              background-color: #99764c;
         }
         .auto-style3 {
             overflow: hidden;
             text-align: center;
             margin: 20px auto;
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
<div class="row center page single" style="height: 633px; width: 98%; background-color: #AC8657;">
    <h3 class="page-title"><img class="right-img" src="img/right.png" />  The Competitions For The Club's Teams <span>  </span> <img class="left-img" src="img/left.png" /><a href="Default.aspx" class="return">Back Home</a></h3>
    <div class="auto-style9">
   
         <div class="row works">
               <div class="auto-style3">&nbsp;<div class="border" style="width: 102%; height: 70px; font-size: large; color: #FFFFFF; text-align: center; background-color: #AC8657; margin-right: 50px;"><strong><img src="img/logo.png" class="auto-style2" />Champions Of The Finals</strong></div>
               </div>
                <div class="col-md-12 block-row">
                <div class="col-md-6">
               <div class="block">
                   <div class="outer-img">
                   <img src="img/al_taLOGO.jpeg" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">The club league final was reached by Al-Taawoun team and Miss Sports team</h3>
                
                   </div>
               </div>
                </div> 
                                    <div class="col-md-6">
               <div class="block">
                   <div class="outer-img">
                   <img src="img/Al-Wahda_Al-Hilal.jpeg" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">Determining third and fourth place in the golden square between Al-Wahda and Al-Hilal teams</h3>
              
                   </div>
               </div>
                </div> 
                    
                    </div> 
                               <div class="col-md-12 block-row">
                <div class="col-md-6">
               <div class="block">
                   <div class="outer-img">
                   <img src="img/slide4.jpeg" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">The Al-Taawoun team reached the podium in the first championship cup</h3>
                  
                   </div>
               </div>
                </div> 
                                    <div class="col-md-6">
               <div class="block">
                   <div class="outer-img">
                   <img src="img/Al-Taawoun_Al-Ittihad.jpeg" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">Super League between the Al-Taawoun team and the Al-Ittihad team</h3>
                   </div>
               </div>
                </div> 
            </div> 
           </div>
            </div>         
                </div> 
       </div>
     </div>
     </div>
            </div> 
      
    </form>

</body>
</html>

