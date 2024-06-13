<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Club.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Dima__Wataeen__Club.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8"/>
  <title>Dima Wataeen Club</title>
 
       <link href="css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/slider-style.css" rel="stylesheet"/>
      <link rel="stylesheet" href="css/styles.css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <!-----> <div id="slideshow">
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
			<div class="slider" style="left: -14px; top: 0; width: 401%; height: 312px;">
				<figure>
					<img src="img/IMG_2599.PNG" alt="" />
				</figure><!--

				--><figure>
					<img src="img/IMG_2622.JPG" alt="" />
				</figure><!--

				--><figure>
					<img src="img/IMG_2616.PNG" alt="" />
				</figure><!--
				--><figure>
					<img src="img/MR.PNG" alt="" />
				</figure><!--
				--><figure class="auto-style12">
					&nbsp;</figure>
			</div>
		</div>

            </div>
            </td>
        </tr>
        <tr>
            <td>
                <strong><asp:Label ID="LabelUser_Name" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelTeam_ID" runat="server" CssClass="auto-style9" style="color: #FFFFFF; font-size: large" Visible="False"></asp:Label>
                                </strong>
            </td>
        </tr>
    </table>
    </asp:Content>
