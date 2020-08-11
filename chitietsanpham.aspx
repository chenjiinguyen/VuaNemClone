<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitietsanpham.aspx.cs" Inherits="chitietsanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <form id="form1" runat="server">
            <div class="container">
                 <div class="sitemap">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                     <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="RootToCurrent">
                     </asp:SiteMapPath>
                </div>

               <asp:DataList ID="dataSanPham" runat="server" Width="100%">
                            <ItemTemplate>
                                <div class="list-content" style="margin-bottom: 30px;">
                                    <div class="center-content" style="float:right; height: auto; width:100%; background-color: #FFFFFF;">         
                                      <table style="width:100%;">
                                    <tr>
                                        <td style="width: 445px;padding: 20px;">
                                            <asp:Image ID="imgHinhMinhHoa" runat="server" ImageUrl='<%# "styles/images/thumbnail/" + Eval("HINHMINHHOA") %>' Width="100%" />
                                        </td>
                                        <td style="padding: 20px; vertical-align: top; height: 407px;">
                                            <div>
                                                <asp:Label ID="lbTenSanPham" runat="server" Text='<%# Eval("TENSANPHAM") %>' Font-Size="24px" ForeColor="#525252"></asp:Label>
                                            </div>
                                            <div>
                                                Thương Hiệu: 
                                                <asp:Label ID="lbThuongHieu" runat="server" Text='<%# Eval("TENTHUONGHIEU") %>' ForeColor="#525252"></asp:Label>
                                            </div>
                                            <hr style="margin: 10px 0">
                                            <div>
                                                <asp:Label ID="lbGia" runat="server" ForeColor="#FF3C3B" Text='<%# string.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"),"{0:C0}", Eval("GIA")) %>' Font-Bold="True" Font-Size="28px"></asp:Label>
                                            </div>
                                            <hr style="margin: 10px 0">
                                            <div style="width:40%;float:left;">
                                                <div style="width:90%; padding:20px;">
                                                    <div class='ctrl'>
                                                      <div class='ctrl__button ctrl__button--decrement'>&ndash;</div>
                                                      <div class='ctrl__counter'>
                                                          <asp:TextBox ID="txtSoLuong" runat="server" CssClass="ctrl__counter-input" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" Text="<%# 1 %>"></asp:TextBox>
                                                          <div class='ctrl__counter-num'>1</div>
                                                      </div>
                                                      <div class='ctrl__button ctrl__button--increment'>+</div>
                                                    </div>
                                                </div>
                                                <div style="width:90%; padding:10px 20px;">
                                                    <asp:Button ID="btnMua" runat="server" Text='<%# "MUA NGAY" %>' CommandArgument='<%# Eval("MASANPHAM") %>' CssClass="btn-buy" OnCommand="btnMua_Command" />
                                                 </div>
                                            </div>
                                            <div style=" width:60%; float:right">
                                                
                                               
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                    </div>
                                </div>
                                <div class="list-content">
                                    <div class="center-content" style="float:right; height: auto; width:65%; background-color: #FFFFFF;margin-bottom: 10px; margin-right:10px">         
                                        <div class="cdz-block-title">
                                            <h2 class="title-block ">ĐẶC ĐIỂM SẢN PHẨM</h2>
                                        </div>
                                        <p>
                                            <asp:Label ID="lbThongTin" runat="server" Text='<%# Eval("THONGTIN") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="right-content" style="float:right; height: auto; width:35%; background-color: #FFFFFF;margin-bottom: 10px;">         
                                        <div class="cdz-block-title">
                                            <h2 class="title-block ">THÔNG SỐ KĨ THUẬT</h2>
                                        </div>
                                         <table class="thongtin-chitiet" style="width:100%;padding: 15px 20px 0;">
                                                    <tr>
                                                        <td style="width: 50%; height: 18px;">Thương Hiệu</td>
                                                        <td style="height: 18px">
                                                            <asp:Label ID="lbLoai" runat="server" Text='<%# Eval("TENTHUONGHIEU") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 167px">Bảo Hành</td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text="12 Tháng"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                                
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                       

            </div>            
    </form>
    <script src="styles/js/inputnumber.js"></script>
</asp:Content>

