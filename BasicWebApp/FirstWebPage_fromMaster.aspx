<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FirstWebPage_fromMaster.aspx.cs" Inherits="BasicWebApp.FirstWebPage_fromMaster" %>
<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
    </p>
</asp:Content>
