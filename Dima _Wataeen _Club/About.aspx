<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Dima__Wataeen__Club.about" %>

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
         .auto-style7 {
             width: 80%;
             margin: auto;
             height: 628px;
              background: #99764c;
         }
         .auto-style8 {
             border: 4px outset #C0C0C0;
width: 51%;
             padding: 5px 5px 4px 5px;
             height: 246px;
             float: left;
              background: #808080;
             z-index: 1;
             margin-left: 0px;
             margin-top: 0;
         }
         .auto-style9 {
             border-style: solid;
             position: relative;
             min-height: 1px;
             width: 95%;
             right: 0px;
             top: 0px;
             height: 546px;
             margin-top: 0px;
             padding-left: 0px;
             padding-right: 0px;
             text-align: justify;
             background-color: #99764c;
         }
         .auto-style10 {
             word-spacing: 5px;
             direction: ltr;
             height: 224px;
             margin-right: 0;
             color: #FFFFFF;
             font-size: large;
             line-height: 1px;
             margin-bottom: 0;
         }
         .auto-style11 {
             line-height: 150%;
             direction: ltr;
             text-align: center;
              background-color: #99764c;
         }
         .auto-style12 {
             background-color: #FFFFFF;
         }
         body {
             background-color:#99764c ;
         }

      
         .newStyle1 {
             border-color: #FF0000;
         }

      
     </style>
</head>
<body>
    <form id="form" runat="server">
        <div class="auto-style12">
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

  <div class="auto-style7">
<div class="row center page single" style="height: 43px; width: 98%; background-color: #CA9662;">
    <h3 class="page-title"><img class="right-img" src="img/right.png" />  About AS <span>  </span> <img class="left-img" src="img/left.png" /><a href="Default.aspx" class="return">Back Home</a></h3>
    <div class="auto-style9">
   
        <p class="auto-style11">
   
       </p>
    <p class="auto-style10"><strong>Dima Wataeen  Club is a new club whose declaration was officially approved by the government,
        represented by the Ministry of Sports and Youth Affairs in the Sultanate of Oman, in the year 2021, by a ministerial
        decision from the Minister of Sports and Youth Affairs. It belongs to the North Al Sharqiyah Governorate, the state of 
        Dimma and Al-Taaiyin. It contains a large number of private sports teams, ranging in number from 30 to 38 sports teams,
        and each team contains no less <img class="auto-style8" src="img/logo4.PNG"/>than 80 members. It is divided into many committees such as the Sports Committee, the 
        Competitions Committee, the Social Committee, the Administrative Committee, the Financial Representative, and the Secretary.
        There are many facilities in The club, such as the official headquarters, stadiums, many commercial properties, and many devices and equipment,
        in addition to the human staff that operates and employs talents and capabilities and gains a good reputation. The club provides all sports, cultural,
        and social activities for the Wilayat of Dimma and Al-Taiyan. After obtaining official notification from the government, the actual work began.
        The new club must be good at using advanced technology in managing the club and preserving its capabilities and the infrastructure and sports staff it possesses.&nbsp;
        </strong>

     </p>
    &nbsp;</div>

 </div>
          
           </div>
     
    </form>
</body>
</html>

