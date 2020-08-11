<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="styles/css/home.css" rel="stylesheet" />
    <link href="styles/css/slideshow.css" rel="stylesheet" />
    <div class="container">
        <div>
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <img src="styles/images/imgslide/banner-sale50.jpg" style="width: 100%; height: 400px; margin-top: 20px;" />
                </div>

                <div class="mySlides fade">
                    <img src="styles/images/imgslide/banner-top5nep.jpg" style="width: 100%; height: 400px; margin-top: 20px;" />
                </div>

                <div class="mySlides fade">
                    <img src="styles/images/imgslide/gummi.jpg" style="width: 100%; height: 400px; margin-top: 20px; " />
                </div>

                <div class="mySlides fade">
                    <img src="styles/images/imgslide/mua-1-tang-1.jpg" style="width: 100%; height: 400px; margin-top: 20px;" />
                </div>

                <div class="mySlides fade">
                    <img src="styles/images/imgslide/banner_top5nemcaosu.jpg" style="width: 100%; height: 400px; margin-top: 20px;" />
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
            </div>
        </div>

        <div class="list-content">
            <div class="center-content" style="padding: 10px; float:right; height: auto; width:100%; background-color: #FFFFFF; margin-bottom: 50px;margin-top: 20px;">
                <div class="cdz-block-title" style=" margin-bottom: 20px;">
                    <h2 class="title-block ">SẢN PHẨM MỚI</h2>
                </div>
            <asp:DataList ID="dataSanPham" runat="server" Width="100%" RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="10" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" CssClass="dataGrid" >
                <AlternatingItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <ItemTemplate>
                    <div class="arrange-fill arrange-fill-4-item">
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
        <div class="list-content">
            <div class="center-content" style="padding: 10px; float:right; height: auto; width:100%; background-color: #FFFFFF; margin-bottom: 10px;margin-top: 20px;">
                <div class="top-footer">
                    <h2 class="title">Tại sao lại chọn Vua Nệm</h2>
                    <div class="benefit">
                        <div class="benefit-item">
                            <div class="image">
                                <a href="#">
                                     <img src="styles/images/top-footer/footer_top_1.png" width="101" height="70">
                                </a>
                            </div>
                            <p>
                                60 giây<br>
                                <span> chọn nệm</span>
                            </p>
                            <p class="detail">
                                Cùng Vua Nệm đi tìm chiếc nệm phù hợp nhất với bạn và gia đình chỉ trong vài bước duy nhất
                            </p>
                        </div>
                        <div class="benefit-item">
                            <div class="image free-trial-image"><a href="#"><img src="styles/images/top-footer/footer_top_2.png" width="101" height="70"></a></div>
                            <p class="free-trial">365 đêm<br><span> nằm thử</span></p>
                            <p class="detail">Hãy “làm quen” với người bạn đồng hành trong hành trình đi tìm giấc mơ đẹp nào</p>
                        </div>
                        <div class="benefit-item">
                            <div class="image"><a href="#"><img src="styles/images/top-footer/footer_top_31.png" width="101" height="70"></a></div>
                            <p>Trả góp<br><span> 0% lãi suất</span></p>
                            <p class="detail">Ngủ ngon mà vẫn dày ví, xua tan nỗi lo tài chính khi sử dụng những sản phẩm cao cấp, chất lượng</p>
                        </div>
                        <div class="benefit-item">
                            <div class="image"><a href="#"><img src="styles/images/top-footer/footer_top_4.png" width="101" height="70"></a></div>
                            <p>Vận chuyển<br><span> miễn phí</span></p>
                            <p class="detail">Giao hàng tận giường, miễn phí các đơn hàng từ 1.000.000đ trở lên đối với tất cả sản phẩm</p>
                            </div>
                        </div>
                </div>
             </div>
        </div>

    </div>

    <script src="styles/js/slideshow.js"></script>
    <script>
        $(document).ready(function () {
            $('.arrange-fill').unwrap();
            $('#ContentPlaceHolder1_dataSanPham').css({ "display": "flex", "flex-flow": "wrap", "align-items": "center", "justify-content": "flex-start" });
        });
    </script>   
</asp:Content>


