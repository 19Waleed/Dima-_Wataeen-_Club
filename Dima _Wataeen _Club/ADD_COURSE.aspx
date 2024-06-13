<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="" CodeBehind="ADD_COURSE.aspx.cs" Inherits="Dima__Wataeen__Club.ADD_COURSE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
        
            <div>
                <!-- هنا يمكنك وضع المحتوى الخاص بصفحتك -->
                <!-- على سبيل المثال -->
                <h1>إضافة دورة جديدة</h1>
                <asp:Label ID="lblCourseName" runat="server" Text="اسم الدورة:"></asp:Label>
                <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
                <asp:Button ID="btnAddCourse" runat="server" Text="إضافة دورة" OnClick="btnAddCourse_Click" />
            </div>
      
    </form>
  </asp:Content>
</body>
</html>
