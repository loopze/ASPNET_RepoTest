<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FirstWebPage_fromMaster.aspx.cs" Inherits="BasicWebApp.FirstWebPage_fromMaster" %>
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
</asp:Content>
