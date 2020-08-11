<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changagoi.aspx.cs" Inherits="changagoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
            <div class="container">
                 <div class="sitemap">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                     <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="RootToCurrent">
                     </asp:SiteMapPath>
                </div>
                <div class="list-content">
                    <div class="left-content" >  
                        <div class="cdz-block-title">
                            <h3 class="title-block ">THƯƠNG HIỆU</h3>
                        </div>
                        <asp:DataList ID="dataThuongHieu" runat="server">
                            <ItemTemplate>
                                <div style="margin: 10px 10px 0px 10px">
                                    <span style="color: #f6a733; font-size: 16px;">✦</span>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "changagoi.aspx?th=" + Eval("MATHUONGHIEU") %>' Text='<%# Eval("TENTHUONGHIEU") %>' Font-Size="16px"></asp:HyperLink>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                                      
                    </div>
             
                    <div class="center-content" style="float:right; height: auto; width:75%; background-color: #FFFFFF;margin-bottom: 50px;">
                        <asp:DataList ID="dataSanPham" runat="server" Width="100%" RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="10" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" CssClass="dataGrid">
                            <AlternatingItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <ItemTemplate>
                                <div class="arrange-fill arrange-fill-3-item">
                                    <div class="item-product">
                                        <div class="list-image-wrapper">
                                            <div class="productimage listview">
                                                 <asp:HyperLink ID="linkSPIMG" runat="server" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>'>
                                                    <asp:Image ID="imgHinhMinhHoa" runat="server" ImageUrl='<%# "styles/images/thumbnail/" + Eval("HINHMINHHOA") %>' Width="100%" />
                                                </asp:HyperLink>
                                            </div>
                                            
                                        </div>
                                        <div class="tile-content">
                                                <div class="tile-primary">
                                                    <div class="left-content-info">
                                                        <h3 class="product-title listview">
                                                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>'>
                                                                <asp:Label ID="lbSanPham" runat="server" Text='<%# Eval("TENSANPHAM") %>'></asp:Label>
                                                            </asp:HyperLink>
                                                            
                                                        </h3>
                                                        <div class="productprice listview">
                                                            <div class="price-box price-final_price" data-role="priceBox" data-product-id="6885" data-price-box="product-id-6885">
                                                                <div class="normal-price">
                                                                    <span class="price-container price-final_price tax">
                                                                        <span class="price-wrapper ">
                                                                              <asp:Label ID="lbGia" runat="server" Text='<%# string.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"),"{0:C0}", Eval("GIA")) %>' CssClass="price"></asp:Label>
                                                                        </span>
                                                                    </span>
                                                                 </div>  
                                                            </div>
                                                        </div>
                                                        <div class="view-detail">
                                                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>'>
                                                                <span class="list-category">Mua Ngay</span>
                                                            </asp:HyperLink>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <SelectedItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                         </asp:DataList>
                    </div>
                </div>
            </div>
         <script>
             $(document).ready(function () {
                 $('.arrange-fill').unwrap();
             });
         </script>                  
    </form>
</asp:Content>

