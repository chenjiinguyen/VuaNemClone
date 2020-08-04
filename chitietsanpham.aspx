<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitietsanpham.aspx.cs" Inherits="chitietsanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <form id="form1" runat="server">
            <div class="container">
                 <div class="sitemap">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                     <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="RootToCurrent">
                     </asp:SiteMapPath>
                </div>
                <div class="list-content">
                    <div class="center-content" style="float:right; height: auto; width:100%; background-color: #FFFFFF;">
                       
                        <asp:DataList ID="dataSanPham" runat="server" Width="100%">
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td style="width: 445px">
                                            <asp:Image ID="imgHinhMinhHoa" runat="server" ImageUrl='<%# "styles/images/nem/" + Eval("HINHMINHHOA") %>' Width="100%" />
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
                                            <div style="width:50%;float:left">
                                                <button class="btn-buy">
                                                    MUA NGAY
                                                </button>
                                            </div>
                                            <div style=" width:50%; float:right">
                                                
                                                <table class="thongtin-chitiet" style="width:100%;">
                                                    <tr>
                                                        <td style="width: 50%; height: 18px;">Thương Hiệu</td>
                                                        <td style="height: 18px">
                                                            <asp:Label ID="lbLoai" runat="server" Text='<%# Eval("TENTHUONGHIEU") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 167px">Độ Cứng Mềm</td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENDOCUNG") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 167px">Chất Liệu</td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TENCHATLIEU") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 167px">Đặc Điểm&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TENTHIETKE") %>'></asp:Label>
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
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                       
                    </div>
                </div>
            </div>            
    </form>
</asp:Content>

