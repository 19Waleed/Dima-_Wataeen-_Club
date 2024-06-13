<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles_Outside_TheClub.aspx.cs" Inherits="Dima__Wataeen__Club.Articles_Outside_TheClub" %>

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
             position: relative;
             min-height: 1px;
             float: left;
             width: 50%;
             text-align: left;
             padding-left: 15px;
             padding-right: 15px;
         }
         .auto-style3 {
             line-height: 150%;
             direction: ltr;
         }
         .col-md-6{
             background-color:#99764c ;
         }
         .auto-style2{
             background-color:#99764c ;
         }
           body {
             background-color:#99764c ;
         }
         .auto-style4 {
             right: 0px;
             top: 0px;
         }
         .auto-style5 {
             width: 91%;
             margin: auto;
             height: 749px;
              background-color:#99764c ;
         }
         .auto-style7{
             background-color:#99764c ;
         }
         .details{
             background-color:#99764c ;
         }
      .accordion-inner-row{
             background-color:#99764c ;
         }
      
         .accordion-toggle {
             border: 4px outset #C0C0C0;
    
              background: #808080;
             
                          }
         .auto-style8 {
             line-height: 150%;
             direction: ltr;
             text-align: center;
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
           
</form>
    <div class="auto-style5">
 
<div class="row">
   <div id="border" class="auto-style1">
       </div>
  <div class="auto-style7">
<div class="row center page single" style="height: 731px; width: 98%; background-color: #CE9D6C;">
    <h3 class="page-title"><img class="right-img" src="img/right.png" />  Articles outside the Club <span>  </span> <img class="left-img" src="img/left.png" /><a href="Default.aspx" class="return">Back Home</a></h3>
    <div class="auto-style9">
                           <div id="border" class="auto-style1">

       </div>
           </p>
                      <div class="row articles">
               <div class="small-header">
               <h3>Articles outside</h3>
                   <div class="border"></div>
               </div>
                <div class="auto-style4">
                                                              <div class="auto-style2">

                <div class="accordion-group">
                  <div class="accordion-heading">
                      <p class="auto-style8">
     

                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">  
The most suspended </a>
                      </p>
                  </div>
                  <div style="height: 0px;" id="collapseOne" class="accordion-body collapse">
                    <div class="accordion-inner">
                                            <div class="accordion-inner-row">

                  <a href="#"></a> 
                   <div class="details">
                       <h3 class="auto-style3">The name sports competitions remains</h3>
                     
                   </div>
                                           </div>
                                                                    <div class="accordion-inner-row">

                  <a href="#"></a> 
                   <div class="details">
                       <h3>Dima and Al-Taiyin Club, the future of sports teams for development </h3>
                 
                   </div>
                                           </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                      <p class="auto-style8">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
Common questions                   </a>
                      </p>
                  </div>
                  <div style="height: 0px;" id="collapseTwo" class="accordion-body collapse">
                    <div class="accordion-inner">
                                            <div class="accordion-inner-row">

                  <a href="#"></a> 
                                                <div class="details">
                       <h3 class="auto-style3">How many teams are affiliated with the Dima and Al-Taei Club?</h3>
                                                   
                   </div>
                                           </div>
                                                                    <div class="accordion-inner-row">

                  <a href="#"></a> 
                   <div class="details">
                       <h3 class="auto-style3">Who is the club's first president ? </h3>
                    
                   </div>
                                           </div>
                    </div>
                  </div>
                </div>
                </div>
              
  </div>
           
                <div class="col-md-6">
               <div class="block">
                   <div class="outer-img">
                   <img src="img/alwatan_logo.png" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">Al-Watan newspaper reported the club’s official notification</h3>
                     
                   </div>
               </div>
                            <div class="block">
                   <div class="outer-img">
                   <img src="img/OmanToday_logo.png" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">Oman newspaper today publishes Al-Taiyeen to a new club</h3>
                    
                   </div>
               </div>
                            <div class="block">
                   <div class="outer-img">
                   <img src="img/Alshabibih_logo .png" />
                   </div>
                   <div class="details">
                       <h3 class="text-center">Alshabibih Magazine, Dima and Al-Taieen Club, forms the first management</h3>
                
                   </div>
               </div>
                </div> 
                                    
 </div> 
         </div> 
     </div> 

            
 </div> 

    </div> 
                      
          
        
           </div>
  
   

</body>
</html>

