<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="D_T.aspx.cs" Inherits="Dima__Wataeen__Club.D_T" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add_Player</title>
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 723px;
            margin: 0 auto;
        }
        .auto-style2 {
            width: 820px;
            margin-left: auto;
            margin-right: auto;
            height: 854px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 65px;
            width: 535px;
            margin-left: auto;
            margin-right: auto;
        }
        .label {
            text-align: right;
            width: 30%;
            margin-right: 2%;
            display: inline-block;
        }
        .input {
            width: 65%;
            display: inline-block;
            text-align: left;
        }
        .buttons-container {
            text-align: center;
            margin-top: 20px;
        }
        </style>
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
         .auto-style9 {
             position: relative;
             min-height: 1px;
             width: 95%;
             right: 0px;
             top: 0px;
             height: 1017px;
             margin-top: 0px;
             padding-left: 0px;
             padding-right: 0px;
             text-align: justify;
             background-color: #99764c;
    
         }
               body {
             background-color:#99764c ;
         }
         .auto-style16 {
             position: relative;
             min-height: 1px;
             width: 95%;
             right: 0px;
             top: 0px;
             height: 1017px;
             margin-top: 0px;
             padding-left: 0px;
             padding-right: 0px;
             text-align: justify;
             background-color: #FFFFFF;
             color: #FF3300;
         }
         .auto-style17 {
             width: 357px;
         }
         .auto-style18 {
             width: 73px;
         }
         .auto-style19 {
             width: 357px;
             text-align: left;
         }
         .auto-style20 {
             font-size: x-large;
             margin-right: 0;
         }
         .auto-style21 {
             width: 73px;
             height: 41px;
         }
         .auto-style22 {
             width: 357px;
             height: 41px;
         }
         .auto-style23 {
             height: 41px;
         }
         .auto-style24 {
             width: 73px;
             height: 40px;
         }
         .auto-style25 {
             width: 357px;
             height: 40px;
         }
         .auto-style26 {
             height: 40px;
         }
         .auto-style27 {
             width: 357px;
             text-align: left;
             height: 40px;
         }
         .auto-style28 {
             color: #FFFFFF;
             font-size: x-large;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
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
<div class="row center page single" style="height: 1108px;">
    <h3 class="page-title"><img class="right-img" src="img/right.png" />  Add Player <span>  </span> <img class="left-img" src="img/left.png" /><a href="Home.aspx" class="return">Back Home</a></h3>
    <div class="auto-style9">

        <div class="auto-style1"> 
            <h1 class="auto-style3">&nbsp;<asp:Image ID="Image1" src="img/logo.png"  runat="server" Height="68px" Width="102px" /> 
            </h1>
            
            <div class="auto-style2">
                <br />

                 <table class="nav-justified">
                     <tr>
                         <td class="auto-style18">&nbsp;</td>
                         <td class="auto-style17">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style18">&nbsp;</td>
                         <td class="auto-style17">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                 </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="checkbox-container">
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="checkbox-container">
                </div>
                <br />
    

                <br />
            </div>
        </div>
        </div>
            <strong>
                                <asp:Label ID="Full_Nmae" runat="server" CssClass="auto-style16" style="font-size: large"></asp:Label>
                                </strong>
    </div>
    </form>
</body>
</html>

