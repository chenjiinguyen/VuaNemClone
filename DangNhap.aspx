<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="CSS_Styles/login.css" rel="stylesheet" />
    <h2 style="font-weight: bolder; text-align: center; padding-top: 20px; color: #20315C; font-size: 26px;">Đăng Nhập</h2>
    <div class="signin">          
        <label for="email">Email Address</label>
        <input type="text" placeholder="Enter Email" name="email" id="email" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Enter Email'" />
        <label id="lbpw" for="psw">Password</label>
        <input type="password" placeholder="Password" name="psw" id="psw" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Password'" />
        <label for="remember">
            <input type="checkbox" name="checked" />&nbsp;&nbsp;  Remember me
        </label>
        <div>
            <button type="submit" class="submitbtn">Submit</button>
        </div>
    </div>
</asp:Content>

