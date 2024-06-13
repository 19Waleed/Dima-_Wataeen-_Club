<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Digital_product.aspx.cs" Inherits="Dima__Wataeen__Club.Digital_product" %>

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
         body{
             
              background-color: #99764c;
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
<div class="row center page single" style="height: 633px; width: 98%; background-color: #99764c;">
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
           <div class="col-md-4 box3-container">
           <div class="box3">
               <h3><span></span><a href="#">Snapshots from the 2022 league championship</a></h3>
                  <ul class="pgwSlider">
                    <li><img src="img/IMG-2021_1.jpg" />
                    </li>
                <li><img src="img/IMG-2021_4.jpg" />
                    
                    </li>
         <li><img src="img/IMG-2021_2.jpg" />
                   
                    </li>
                <li>
		    <a href="https://www.instagram.com/d_ataeen_club/?igsh=Z2JrdjNzMmowNHky" target="_blank">
                <img src="img/IMG-2021_3.jpg" />
            </a>
                </li>

                  </ul>
                      <div style="clear: both;">
                      </div>
                  
           </div>
   </div>
      <div class="col-md-4 box3-container">
           <div class="box3">
               <h3><span></span><a href="#">Snapshots from the 2023 league championship</a></h3>
                  <ul class="pgwSlider">
                    <li><img src="img/miss__team1.jpeg" />
                    </li>
                <li><img src="img/miss__team2.jpeg" />
                    
                    </li>
         <li><img src="img/miss__team3.jpeg" />
                   
                    </li>
                <li>
		    <a href="https://www.instagram.com/miss__team1?igsh=enM0bmZ5bmVxNTd2" target="_blank">
                <img src="img/miss__team4.jpeg" />
            </a>
                </li>

                  </ul>
                      <div style="clear: both;">
                      </div>
                  
           </div>
   </div>

     <div class="col-md-4 box3-container">
           <div class="box3">
               <h3><span></span><a href="#">Snapshots from the 2024 league championship</a></h3>
                  <ul class="pgwSlider">
                    <li><img src="img/altaawoun1.jpeg" />
                    </li>
                <li><img src="img/altaawoun2.jpeg" />
                    
                    </li>
         <li><img src="img/altaawoun3.jpeg" />
                   
                    </li>
                <li>
		    <a href="https://www.instagram.com/altaawoun92?igsh=MXF5YmRwcndzazA4bw==" target="_blank">
                <img src="img/altaawoun4.jpeg" />
            </a>
                </li>

                    </ul>  
                           <div style="clear: both;">
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




