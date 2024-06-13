<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Champions_League.aspx.cs" Inherits="Dima__Wataeen__Club.Champions_League" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>Dima Wataeen Club</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/slider-style.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="img/favicon.png" />
    <style type="text/css">
        .auto-style3 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            right: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
            height: 326px;
            background-color: #AC8657;
        }

        .auto-style6 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 42%;
            right: -317px;
            top: -490px;
            height: 313px;
            padding: 0px;
            text-align: center;
          background-color: #AC8657;
        }

        .auto-style7 {
            background-color: #FFFFFF;
        }

        .auto-style9 {
            color: #FF0000;
            background-color: #AC8657;
        }

        .auto-style10 {
            height: 84px;
            width: 34%;
        }

        .auto-style11 {
            width: 61%;
            height: 48px;
            margin-right: 0%;
            background-color: #0000FF;
            color: #FF0000;
            margin-bottom: 12px;
        }

        .auto-style12 {
            overflow: hidden;
            height: 83px;
            background-color: #0000FF;
        }

        .auto-style13 {
            height: 91px;
        }

        .auto-style14 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 33.33333333333333%;
            right: 0px;
            top: 0px;
            padding: 0px;
            height: 3px;
        }

        .auto-style15 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 99%;
            right: 3px;
            top: 10px;
            padding-left: 15px;
            padding-right: 15px;
            height: 156px;
        }

        .auto-style16 {
            width: 90%;
            margin: auto;
            height: 80px;
        }

        .auto-style17 {
            width: 395px;
            height: 54px;
            margin-left: 2px;
            text-align: left;
            margin-right: 34px;
        }

        .auto-style18 {
            width: 291px;
            height: 48px;
            margin-top: 6px;
            margin-bottom: 0px;
            text-align: left;
        }

        .auto-style19 {
            height: 113px;
            width: 126px;
            margin-bottom: 3px;
            margin-left: 0px;
            margin-right: 1px;
            margin-top: 7px;
        }

        .auto-style20 {
            background: url('img/circle.png') no-repeat;
            width: 178px;
            height: 188px;
            float: right;
            background-size: contain;
            text-align: right;
        }

        .auto-style21 {
            height: 115px;
            margin-left: 47px;
            margin-bottom: 0px;
            width: 145px;
            margin-right: 37px;
            margin-top: 4px;
        }

        .auto-style22 {
            color: #FF0000;
            background-color: #0000FF;
        }

        .auto-style23 {
            background-color: #0000FF;
            font-size: large;
            font-weight: normal;
        }

          body {
             background-color:#99764c ;
         }
        .auto-style27 {
            background-color: #AC8657;
        }
        .auto-style28 {
            background: url('img/circle.png') no-repeat;
            width: 175px;
            height: 176px;
            float: right;
            background-size: contain;
            text-align: right;
        }
        .auto-style29 {
            width: 795px;
        }
        .auto-style30 {
            height: 40px;
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style31 {
            background-color: #FFFFFF;
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

            <div class="auto-style16">

                <div class="row">
                    <div class="auto-style7">
                        <div class="row center page single" style="height: 719px; width: 98%;">
                            <h3 class="page-title">
                                <img class="right-img" src="img/right.png" />
                                Champions League news <span> </span>
                                <img class="left-img" src="img/left.png" /><a href="Default.aspx" class="return">Back Home</a></h3>
                            <div class="auto-style9">
                                
                      <div class="row articles">
                          <div class="small-header">
                              <h3>Lead Of league</h3>
                              <div class="border"></div>
                          </div>
                          <div class="auto-style27">
                              <div class="auto-style3">

                                  <h3 class="table-title">League Table</h3>
                                  <table class="auto-style29">
                                      <tr>
                                          <th>n</th>
                                          <th>Team</th>
                                          <th>Points</th>
                                          <th>Play</th>
                                          <th>Goals</th>
                                      </tr>
                                      <tr>
                                          <td class="auto-style31">1</td>
                                          <td class="auto-style31">Altaeawun </td>
                                          <td class="auto-style31">21</td>
                                          <td class="auto-style31">5</td>
                                          <td class="auto-style31">10</td>
                                      </tr>
                                      <tr>
                                          <td class="text-center">2</td>
                                          <td class="text-center">Alahlaa</td>
                                          <td class="text-center">17</td>
                                          <td class="text-center">5</td>
                                          <td class="text-center">6</td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style31">3</td>
                                          <td class="auto-style31">Alaitihad </td>
                                          <td class="auto-style31">16</td>
                                          <td class="auto-style31">5</td>
                                          <td class="auto-style31">6</td>
                                      </tr>
                                      <tr>
                                          <td class="text-center">4</td>
                                          <td class="text-center">Nahdat </td>
                                          <td class="text-center">8</td>
                                          <td class="text-center">5</td>
                                          <td class="text-center">4</td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style30">5</td>
                                          <td class="auto-style30">Alwahda</td>
                                          <td class="auto-style30">6</td>
                                          <td class="auto-style30">5</td>
                                          <td class="auto-style30">4</td>
                                      </tr>
                                  </table>

                              </div>

                          </div>

                          <div class="auto-style15">
                              <div class="block">
                                  <div class="auto-style28">
                                      &nbsp;<img src="img/Waleed1.jpg" class="auto-style21" />
                                  </div>
                                  <div class="details" style="width: 26%; height: 102px; background-color: #0000FF;">
                                      <h3 class="auto-style18">Waleed Al-Siyabi won the best player of the week</h3>
                                      &nbsp;
                  
                                  </div>
                                  &nbsp;
                   <div class="auto-style20">
                       &nbsp;<img src="img/al_taLOGO.jpeg" class="auto-style19" />
                                  </div>

                                  <div class="details" style="width: 40%; height: 110px; margin-left: 0; background-color: #0000FF;">
                                      <h3 class="auto-style17">Al-Taawoun team with the highest points in the club round. The table lists the five best teams at the top of the standings</h3>

                                  </div>
                              </div>

                          </div>

                      </div>

                            </div>
                            <div class="row three-blocks" style="height: 2px; margin-top: 0px; margin-bottom: 0px">
                                <div class="auto-style14">
                                </div>

                                <div class="auto-style6">
                                    <div class="inner">
                                        <div class="auto-style12">
                                            <img src="img/icon.png" class="auto-style10" /><h3 class="auto-style11"><span class="auto-style23"><strong><em>Time remaining for the next match</em></strong></span> <span class="auto-style22"></span></h3>
                                        </div>
                                        <div id="vs" class="auto-style13">
                                            <img class="vs" src="img/Alahlaa.jpg" />
                                            <span class="vs">vs</span>
                                            <img class="vs" src="img/Altaeawun.png" />
                                        </div>
                                        <div class="col-md-12 time">
                                            <div class="col-md-4">
                                                <span>5</span> : Days
                                            </div>
                                            <div class="col-md-4">
                                                <span>7</span> : Hours
                                            </div>
                                            <div class="col-md-4">
                                                <span>10</span> : Minutes
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


