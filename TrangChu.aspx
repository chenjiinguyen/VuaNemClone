<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="CSS_Styles/home.css" rel="stylesheet" />
    <link href="CSS_Styles/slideshow.css" rel="stylesheet" />
    <div class="header-center">

        <div>
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <img src="Hinhanh/imgslide/banner-sale50.jpg" style="width: 100%; height: 200px; margin-top: 20px;" />
                </div>

                <div class="mySlides fade">
                    <img src="Hinhanh/imgslide/banner-top5nep.jpg" style="width: 100%; height: 200px; margin-top: 20px;" />
                </div>

                <div class="mySlides fade">
                    <img src="Hinhanh/imgslide/gummi.jpg" style="width: 100%; height: 200px; margin-top: 20px; " />
                </div>

                <div class="mySlides fade">
                    <img src="Hinhanh/imgslide/mua-1-tang-1.jpg" style="width: 100%; height: 200px; margin-top: 20px;" />
                </div>

                <div class="mySlides fade">
                    <img src="Hinhanh/imgslide/banner_top5nemcaosu.jpg" style="width: 100%; height: 200px; margin-top: 20px;" />
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br />

            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
            </div>
        </div>

        <div class="menu-home" style="text-align: center">
            <div class="desktop" style="padding-top: 30px">
                <ul class="cap1" style="background-color: white; width: 74%; height: 170px; margin-left: 176px; margin-top: -10px">
                    <li class="hover-li"><a href="#" style="padding-right: 40px; border-bottom: 2px solid #20315C; letter-spacing: 1px">LOẠI NỆM</a>
                        <div class="list-item" style="margin-left: -200px; margin-top: 10px">
                            <a href="#">
                                <img style="width: 150px; height: 100px; padding-right: 10px" src="Hinhanh/menu_loainem/nembongep.png" alt="Alternate Text" /></a>
                            <a href="#">
                                <img style="width: 150px; height: 100px; padding-right: 10px" src="Hinhanh/menu_loainem/nemcaosu.png" alt="Alternate Text" /></a>
                            <a href="#">
                                <img style="width: 150px; height: 100px; padding-right: 10px" src="Hinhanh/menu_loainem/nemfoam.png" alt="Alternate Text" /></a>
                            <a href="#">
                                <img style="width: 150px; height: 100px" src="Hinhanh/menu_loainem/nemloxo.png" alt="Alternate Text" /></a>
                        </div>
                    </li>
                    <li class="hover-li"><a href="#" style="border-bottom: 2px solid #20315C; letter-spacing: 1px;">THƯƠNG HIỆU</a>
                        <div class="list-item size-img" style="margin-top: 20px; margin-left: -200px">
                            <a href="#">
                                <img style="padding-right: 20px" src="Hinhanh/menu_thuonghieu/aeroflow.png" alt="Alternate Text" /></a>
                            <a href="#">
                                <img style="padding-right: 20px" src="Hinhanh/menu_thuonghieu/dunlopillo.png" alt="Alternate Text" /></a>
                            <a href="#">
                                <img style="padding-right: 20px" src="Hinhanh/menu_thuonghieu/good-night.png" alt="Alternate Text" /></a>
                            <a href="#">
                                <img src="Hinhanh/menu_thuonghieu/therapedic.png" alt="Alternate Text" /></a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <script src="slideshow.js"></script>
</asp:Content>


