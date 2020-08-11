<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="giohang.aspx.cs" Inherits="giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
            <div class="container">
                 <div class="sitemap">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                     <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="CurrentToRoot">
                     </asp:SiteMapPath>
                </div>
                <div class="list-content">
                    <div class="left" style="height: auto;flex: 0 0 60%; max-width: 60%; text-align: left; float:left; background-color: #FFFFFF;margin-right: 10px;height: auto">     
                        <asp:MultiView ID="viewLogin" runat="server">
                            <asp:View ID="Guest" runat="server">
                                <div id="info-customer">
                                    <div class="infor-customer">
                                        <div class="title-block">
                                            <p class="number">*</p>
                                            <span>VUI LÒNG ĐĂNG NHẬP & ĐĂNG KÝ NẾU CHƯA TẠO TÀI KHOẢN</span>
                                        </div>
                                        <div style="display:flex;justify-content:flex-start;padding: 20px;">
                                            <a href="dangnhap.aspx" class="btn-buy" style="width:50%; margin-right:20px;">ĐĂNG NHẬP</a>
                                            <a href="dangky.aspx" class="btn-buy" style="width:50%;  margin-left:20px;">ĐĂNG KÝ</a>

                                        </div>

                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="User" runat="server">
                                <div id="info-customer">
                                    <div class="infor-customer">
                                        <div class="title-block">
                                            <p class="number">1</p>
                                            <span>THÔNG TIN KHÁCH HÀNG</span>
                                        </div>
                                        <div class="personal-information">
                                            <div class="wapper">
                                                <div class="information">
                                                    <div class="title-input">Họ tên*</div>
                                                    <asp:TextBox ID="txtUserHoTen" runat="server" ToolTip="Họ tên *" CssClass="saveinfo" ReadOnly="True"></asp:TextBox>
                                                </div>
                                                <div class="information">
                                                    <div class="title-input">Email*</div>
                                                    <asp:TextBox ID="txtUserEmail" runat="server" ToolTip="Email *" CssClass="saveinfo" ReadOnly="True"></asp:TextBox>

                                                </div>
                                                <div class="information">
                                                    <div class="title-input">Số điện thoại*</div>
                                                    <asp:TextBox ID="txtUserSDT" runat="server" ToolTip="Số điện thoại *" CssClass="saveinfo" ReadOnly="True"></asp:TextBox>
                                                </div>

                                            </div>

                                        </div>
                                        <div style="width:50%;margin: auto;margin-top:30px;">
                                             <asp:Button ID="btnMua" runat="server" Text='ĐẶT HÀNG'  CssClass="btn-buy" OnClick="btnMua_Click" />

                                        </div>

                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
             
                    <div class="center-content" style="float:right; height: auto; width:40%; background-color: #FFFFFF;margin-bottom: 50px;padding: 20px;">
                        <asp:DataList ID="dataCart" runat="server" Width="100%" RepeatColumns="1" RepeatDirection="Horizontal" RepeatLayout="Table" OnItemCommand="dataCart_ItemCommand" >
                            <ItemTemplate>
                                <asp:Label ID="lbMSP" runat="server" Text='<%# Eval("MASANPHAM") %>' Visible="False"></asp:Label>
                                <table style="width:100%;padding: 15px 5px;">
                                    <tr>
                                        <td colspan="3" style="padding-bottom: 10px;">
                                            <asp:HyperLink ID="hpTenSanPham" runat="server" ForeColor="#020315" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>' Text='<%# Eval("STT")+"."+Eval("TENSANPHAM") %>' Font-Bold="True" Font-Size="18px"></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" style="width: 150px;padding: 0 10px">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HINHMINHHOA") %>' Width="100%" />
                                        </td>
                                        <td style="vertical-align: bottom; padding-left: 10px">
                                            <span>Giá Tiền</span>
                                        </td>
                                        <td style="vertical-align: bottom;text-align: right; padding-right: 10px">
                                            <span>
                                                <asp:Label ID="lbGiaTien" runat="server" Text='<%# Eval("SOLUONG") +" x "+string.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"),"{0:C0}", Eval("GIABAN")) %>' ></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: center; padding-left: 10px">
                                            <span>Số Lượng</span>
                                        </td>
                                        <td >
                                          <div style="display: flex;justify-content: flex-end;align-items: flex-end;">
                                              <div class='c_ctrl'>
                                                      <asp:Button ID="btnGiam" runat="server" Text="-" CommandName="Giam" CssClass="c_ctrl__button c_ctrl__button--decrement"></asp:Button>
                                                      <div class='c_ctrl__counter'>
                                                          <asp:TextBox ID="txtSoLuong" runat="server" CssClass="c_ctrl__counter-input" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" Text='<%# Eval("SOLUONG") %>'></asp:TextBox>
                                                          <asp:Label ID="lbCount"   runat="server" CssClass="c_ctrl__counter-num" Text='<%# Eval("SOLUONG") %>'></asp:Label>
                                                      </div>
                                                      <asp:Button ID="btnTang" runat="server" Text="+" CommandName="Tang" CssClass="c_ctrl__button c_ctrl__button--increment"></asp:Button>
                                                    </div>
                                          </div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>

                        </asp:DataList>
                        <div style="width:100%;display:flex;justify-content:space-between; margin-top: 50px;">
                            <div>
                                <asp:Label ID="lbThanhTien" runat="server"  Font-Size="16px" ForeColor="#20315c"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="lbTongTien" runat="server" Font-Bold="True" Font-Size="16px" ForeColor="#FF2C2C"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
     <script src="styles/js/inputnumber_c.js"></script>           
    </form>
</asp:Content>

