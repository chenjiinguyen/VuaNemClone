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
                    <div class="left" style="height: auto; width: 25%; text-align: left; float:left; background-color: #FFFFFF;">  
                        <button type="button" class="collapsible collapsible-active">Độ Thoải Mái</button>
                        <div class="collapsible-content">
                            <asp:RadioButtonList ID="rbDoThoaiMai" runat="server" Font-Underline="False" Width="100%"></asp:RadioButtonList>
                        </div>

                                      
                    </div>
             
                    <div class="center-content" style="float:right; height: auto; width:75%; background-color: #FFFFFF;margin-bottom: 50px;">
                        <asp:DataList ID="dataLoai" runat="server" Width="100%" RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="10" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" >
                            <AlternatingItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <ItemTemplate>
                                <div class="arrange-fill">
                                    <div class="item-product">
                                        <div class="list-image-wrapper">
                                            <div class="productimage listview">
                                                 <asp:HyperLink ID="linkSPIMG" runat="server" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>'>
                                                    <asp:Image ID="imgHinhMinhHoa" runat="server" ImageUrl='<%# "styles/images/nem/" + Eval("HINHMINHHOA") %>' Width="100%" />
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
             var coll = document.getElementsByClassName("collapsible");
             var i;
             for (i = 0; i < coll.length; i++) {
                 coll[i].addEventListener("click", function () {
                     this.classList.toggle("collapsible-active");
                     var content = this.nextElementSibling;
                     if (content.style.maxHeight) {
                         content.style.maxHeight = null;
                     } else {
                         content.style.maxHeight = content.scrollHeight + "px";
                     }
                 });
             }
            
             $(document).ready(function () {
                 $('.arrange-fill').unwrap();
                 $('#ContentPlaceHolder1_dataLoai').css({ "display": "flex", "flex-flow": "wrap" ,"align-items":"center","justify-content":"center"});
             });
         </script>                  
    </form>
</asp:Content>

