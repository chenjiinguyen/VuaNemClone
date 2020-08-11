<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <link href="styles/css/login.css" rel="stylesheet" />
    <h2 style="font-weight: bolder; text-align: center; padding-top: 20px; color: #20315C; font-size: 26px; margin-bottom: 20px;">Đăng Nhập</h2>
    <div class="signin">          
        <label for="email">Username or Email</label>
        <asp:TextBox ID="txtEmailAndUsername" CssClass="txtLogin" runat="server"></asp:TextBox>
        <label id="lbpw" for="psw">Password</label>
        <asp:TextBox ID="txtPassword" CssClass="txtLogin" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lbThongBao" runat="server" ForeColor="Red"></asp:Label>
        <div>
            <asp:Button ID="btnSubmit" CssClass="submitbtn" runat="server" Text="Login" OnClick="btnSubmit_Click" />
        </div>
    </div>
    </form>
</asp:Content>

