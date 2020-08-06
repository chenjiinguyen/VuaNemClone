<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="styles/css/registration.css" rel="stylesheet" />
    
     <form id="form1" runat="server">
        <asp:MultiView ID="MViewTrangDangKy" runat="server">
            <asp:View ID="ViewDangKy" runat="server">
                <h2 style="padding-top: 20px; text-align: center; font-weight: bolder; color: #20315C; font-size: 26px; margin-bottom: 20px;">ĐĂNG KÝ THÀNH VIÊN</h2>
                <div class="signup">
                <div class="cont-table" >
                        <table style="width: 100%">
                            <tr>
                                <td text-align: right" style="width: 216px; text-align: right;">Họ và tên đệm <span>(*)&nbsp;&nbsp; </span> </td>
                                <td style="width: 221px">
                                    <asp:TextBox ID="txtHoTenDem" runat="server" Width="212px" Height="24px"></asp:TextBox></td>
                                <td>&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTenDem" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Bắt buộc nhập</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px;">Tên <span>(*)&nbsp;&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:TextBox ID="txtTen" runat="server" Width="212px" Height="24px"></asp:TextBox></td>
                                <td>&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTen" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Bắt buộc nhập</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px;">Tên đăng nhập <span>(*)&nbsp;&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:TextBox ID="txtTenDN" runat="server" Width="212px" Height="24px"></asp:TextBox></td>
                                <td style="color: #FF0000">&nbsp; Gõ không dấu</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px; height: 32px;">Mật khẩu <span>(*)&nbsp;&nbsp; </span></td>
                                <td style="width: 221px; height: 32px;">
                                    <asp:TextBox ID="txtMK" runat="server" Width="212px" TextMode="Password" Height="24px"></asp:TextBox></td>
                                <td style="height: 32px">
                                    &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMK" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Bắt buộc nhập</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px;">Gõ lại mật khẩu <span>(*)&nbsp;&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:TextBox ID="txtNhapLaiMK" runat="server" Width="212px" TextMode="Password" Height="24px"></asp:TextBox></td>
                                <td>
                                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMK" ControlToValidate="txtNhapLaiMK" ErrorMessage="CompareValidator" Text="Mật khẩu phải giống mật khẩu đã gõ!" ForeColor="Red"></asp:CompareValidator>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px;">Địa chỉ email&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    <asp:TextBox ID="txtEmail" runat="server" Width="212px" Height="24px"></asp:TextBox></td>
                                <td>
                                    &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" Text="Địa chỉ email phải đúng định dạng chuẩn" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px;">Điện thoại&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    <asp:TextBox ID="txtSDT" runat="server" Width="212px" Height="24px"></asp:TextBox></td>
                                <td>
                                    &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSDT" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d{10,11}$" Text="SĐT phải có 10 hoặc 11 ký tự số"></asp:RegularExpressionValidator>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 216px;">Ảnh đại diện&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    <asp:FileUpload ID="fileUpImg" runat="server" Width="218px" Height="24px" />
                            
                                </td>
                                <td></td>
                            </tr>
                             <tr>
                               <td style="text-align: right; width: 216px;">Tỉnh/Thành phố <span>(*)&nbsp;&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:DropDownList ID="drTinhThanh" runat="server" Width="212px" style="margin-left: 0px" Height="24px">
                                        <asp:ListItem>Chọn tỉnh</asp:ListItem>
                                        <asp:ListItem>TP HCM</asp:ListItem>
                                        <asp:ListItem>Phú Yên</asp:ListItem>
                                        <asp:ListItem>Đồng Nai</asp:ListItem>
                                        <asp:ListItem>Bình Dương</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="drTinhThanh" ErrorMessage="RequiredFieldValidator">Bắt buộc nhập</asp:RequiredFieldValidator>
                                    &nbsp;</td>
                            </tr>
                             <tr>
                               <td style="text-align: right; width: 216px; height: 26px;">Ngày sinh <span>(*)&nbsp;&nbsp; </span></td>
                                <td style="height: 26px; width: 221px">
                                    <asp:DropDownList ID="drNgSinh" runat="server" Width="53px" Height="24px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="drThang" runat="server" Width="61px" Height="24px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="drNam" runat="server" Width="92px" Height="24px">
                                        <asp:ListItem>2000</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="height: 26px">&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drNgSinh" ErrorMessage="RequiredFieldValidator">Bắt buộc nhập</asp:RequiredFieldValidator>
                                 </td>
                            </tr>
                              <tr>
                               <td style="text-align: right; width: 216px;"><span>(*)</span> <asp:CheckBox ID="checkBox" runat="server" />&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    Tôi đồng ý với các quy định
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                               <td style="text-align: right; width: 216px;"></td>
                                <td colspan="2">
                                     <asp:Button ID="btnGui" runat="server" style="outline:none" Text="GỬI" BackColor="#2490D4" BorderColor="#2490D4" ForeColor="White" Width="80px" Height="33px" />
                                     <asp:Button ID="btnNhapLai" runat="server" style="outline:none; margin-left: 60px" Text="NHẬP LẠI" BorderColor="#2490D4" BackColor="#2490D4" ForeColor="White" Height="36px" Width="81px" />
                                </td>
                            </tr>

                        </table>
                    </div>
                        </div>
            </asp:View>
            <asp:View ID="ViewThongTin" runat="server">
                <div class="cont-table">
                        <h2 style="padding-top: 10px; text-align: center; font-weight: bolder; color: #20315C; font-size: 26px">THÔNG TIN THÀNH VIÊN</h2>
                        <table>
                            <tr>
                                <td style="width: 176px; text-align: right">Họ và tên đệm: <span>&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:Label ID="lbHoTenDem" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 176px;">Tên: <span>&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:Label ID="lbTen" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 176px;">Địa chỉ email:&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    <asp:Label ID="lbEmail" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 176px;">Điện thoại:&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    <asp:Label ID="lbSDT" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 176px;">Ảnh đại diện&nbsp;&nbsp; </td>
                                <td style="width: 221px">
                                    <asp:Image ID="Image1" runat="server" Height="100px" Width="80px" />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 176px;">Tỉnh/Thành phố: <span>&nbsp; </span></td>
                                <td style="width: 221px">
                                    <asp:Label ID="lbTinhThanh" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 176px; height: 26px;">Ngày sinh: <span>&nbsp; </span></td>
                                <td style="height: 26px; width: 221px">
                                    <asp:Label ID="lbNgSinh" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td style="height: 26px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 20%; text-align: right">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
            </asp:View>
        </asp:MultiView>
    </form>

</asp:Content>

