<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="nem.aspx.cs" Inherits="nem" %>

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
                        <asp:DataList ID="dataLoai" runat="server" Width="100%" RepeatColumns="1" RepeatDirection="Horizontal" RepeatLayout="Table" >
                            <ItemTemplate>
                                <table style="border-top: 1px solid #44574D; padding: 25px; width:100%; border-left-color: #44574D; border-left-width: 1px; border-right-color: #44574D; border-right-width: 1px; border-bottom-color: #44574D; border-bottom-width: 1px;">
                                    <tr>
                                        <td rowspan="2" style="width: 30%">
                                            <asp:HyperLink ID="linkSPIMG" runat="server" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>'>
                                                <asp:Image ID="imgHinhMinhHoa" runat="server" ImageUrl='<%# "styles/images/nem/" + Eval("HINHMINHHOA") %>' Width="100%" />
                                            </asp:HyperLink>
                                            
                                        </td>
                                        <td style="padding: 0px 15px; vertical-align: top; width: 70%">
                                            <div>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "chitietsanpham.aspx?id="+Eval("MASANPHAM") %>'>
                                                    <asp:Label ID="lbSanPham" runat="server" ForeColor="#324992" Text='<%# Eval("TENSANPHAM") %>' Font-Bold="True" Font-Size="16px"></asp:Label>
                                                </asp:HyperLink>
                                                
                                            </div>
                                            <div>
                                                <asp:Label ID="lbGia" runat="server" ForeColor="#FF3C3B" Text='<%# string.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"),"{0:C0}", Eval("GIA")) %>' Font-Bold="True" Font-Size="20px"></asp:Label>
                                            </div>
                                            <div style="margin-top:10px">
                                                <div>
                                                    <span style="color: #f6a733;">✦</span>
                                                    <asp:Label ID="lbDacDiem01" runat="server" ForeColor="#20315C" Text='<%# Eval("DACDIEM01") %>' Font-Bold="False" Font-Size="14px"></asp:Label>
                                                </div>
                                                <div style="margin-top:5px">
                                                    <span style="color: #f6a733;">✦</span>
                                                    <asp:Label ID="lbDacDiem02" runat="server" ForeColor="#20315C" Text='<%# Eval("DACDIEM02") %>' Font-Bold="False" Font-Size="14px"></asp:Label>
                                                </div>
                                                <div style="margin-top:5px">
                                                    <span style="color: #f6a733;">✦</span>
                                                    <asp:Label ID="lbDacDiem03" runat="server" ForeColor="#20315C" Text='<%# Eval("DACDIEM03") %>' Font-Bold="False" Font-Size="14px"></asp:Label>
                                                </div>     
                                            </div>                                       
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 20px">
                                            <div class="product-type-key-attributes">
                                                <div class="product-type-key-attribute">
                                                    <div class="icon-brand">
                                                        <img src="styles/images/svg/brand.png">
                                                    </div>
                                                    <div class="product-type-key-attribute-textContainer">
                                                         <div class="product-type-key-attribute-label">Thương hiệu
                                                         </div>
                                                          <div class="product-type-key-attribute-value">
                                                              <asp:Label ID="lbThuongHieu" runat="server" Text='<%# Eval("TENTHUONGHIEU") %>' ></asp:Label>
                                                          </div>

                                                     </div>

                                                </div>
                                                 <div class="product-type-key-attribute">
                                                    <div class="icon-comfort">
                                                         <img src="styles/images/svg/mattress_comfort.png">
                                                    </div>
                                                    <div class="product-type-key-attribute-textContainer">
                                                            <div class="product-type-key-attribute-label">
                                                                Độ cứng mềm
                                                            </div>
                                                            <div class="product-type-key-attribute-value">
                                                              <asp:Label ID="lbDoCung" runat="server" Text='<%# Eval("TENDOCUNG") %>' ></asp:Label>
                                                            </div>
                                                    </div>
                                                 </div> 
                                                <div class="product-type-key-attribute">
                                                    <div class="icon-feature">
                                                        <img src="styles/images/svg/feature/feature_thang.png">
                                                    </div>
                                                    <div class="product-type-key-attribute-textContainer">
                                                         <div class="product-type-key-attribute-label">
                                                             Thiết kế
                                                         </div>
                                                         <div class="product-type-key-attribute-value">
                                                              <asp:Label ID="lbThietKe" runat="server" Text='<%# Eval("TENTHIETKE") %>' ></asp:Label>
                                                         </div>
                                                    </div>
                                                </div> 
                                                <div class="product-type-key-attribute">
                                                    <div class="icon-material">
                                                        <img src="styles/images/svg/material/material_loxo.png">
                                                    </div> 
                                                    <div class="product-type-key-attribute-textContainer">
                                                        <div class="product-type-key-attribute-label">
                                                            Loại
                                                        </div>
                                                         <div class="product-type-key-attribute-value">
                                                              <asp:Label ID="lbChatLieu" runat="server" Text='<%# Eval("TENCHATLIEU") %>' ></asp:Label>
                                                         </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
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
         </script>                  
    </form>
</asp:Content>

