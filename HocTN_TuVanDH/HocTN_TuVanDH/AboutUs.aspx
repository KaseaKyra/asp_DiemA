﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="HocTN_TuVanDH.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Giới thiệu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    GIỚI THIỆU
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <!-- ##### About Us Area Start ##### -->
    <section class="about-us-area mt-50 section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <span>Giới thiệu</span>
                        <h3>Chúng tôi là Academy</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod. Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis. Ut in iaculis enim, et pulvinar mauris. Etiam tristique magna eget velit consectetur, a tincidunt velit dictum. Cras vulputate metus id felis ornare hendrerit. Maecenas sodales suscipit ipsum.</p>
                </div>
                <div class="col-12 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <p>Vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod. Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis. Ut in iaculis enim, et pulvinar mauris. Etiam tristique magna eget velit consectetur, a tincidunt velit dictum. Cras vulputate metus id felis ornare hendrerit. Maecenas sodales suscipit ipsum.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="about-slides owl-carousel mt-100 wow fadeInUp" data-wow-delay="600ms">
                        <img src="img/bg-img/bg-3.jpg" alt="">
                        <img src="img/bg-img/bg-2.jpg" alt="">
                        <img src="img/bg-img/bg-1.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### About Us Area End ##### -->
    <!-- ##### Team Area Start ##### -->
    <section class="teachers-area section-padding-0-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <span>Giới thiệu</span>
                        <h3>Gặp gỡ các giáo viên tại trung tâm</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Single Teachers -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-teachers-area text-center mb-100 wow fadeInUp" data-wow-delay="400ms">
                        <!-- Thumbnail -->
                        <div class="teachers-thumbnail">
                            <a href="#">
                                <img class="img-fluid" src="img/bg-img/tea1.jpg" alt=""></a>
                        </div>
                        <!-- Meta Info -->
                        <div class="teachers-info mt-30">
                            <a href="#">
                                <h5>Maria D. Smith</h5>
                            </a>
                            <span>Marketing Proffesor</span>
                        </div>
                    </div>
                </div>
                <%--            <div class="row">
                <div class="col-12">
                    <div class="view-all text-center wow fadeInUp" data-wow-delay="800ms">
                        <a href="#" class="btn academy-btn">All Teachers</a>
                    </div>
                </div>
            </div>--%>
            </div>
    </section>
    <!-- ##### Features Area Start ##### -->
</asp:Content>
