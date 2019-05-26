<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HocTN_TuVanDH.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    Liên hệ
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPage" runat="server">
    LIÊN HỆ
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <!-- ##### Google Maps ##### -->
    <div class="map-area wow fadeInUp" data-wow-delay="300ms">
        <div id="googleMap"></div>
    </div>
    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-content">
                        <div class="row">
                            <!-- Contact Information -->
                            <div class="col-12 col-lg-5">
                                <div class="contact-information wow fadeInUp" data-wow-delay="400ms">
                                    <div class="section-heading text-left">
                                        <%--<span>The Best</span>--%>
                                        <h3>Liên hệ với chúng tôi</h3>
                                        <p class="mt-30">Lacinia, lacinia la cus non, fermen tum nisi. Donec et sollicitudin. Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis. Ut in iaculis enim, et pulvinar mauris.</p>
                                    </div>
                                    <!-- Contact Social Info -->
                                    <div class="contact-social-info d-flex mb-30">
                                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    </div>

                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info d-flex">
                                        <div class="contact-icon mr-15">
                                            <i class="icon-placeholder"></i>
                                        </div>
                                        <p>
                                            4127/ 5B-C Mislane Road,<br>
                                            Gibraltar, UK
                                        </p>
                                    </div>

                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info d-flex">
                                        <div class="contact-icon mr-15">
                                            <i class="icon-telephone-1"></i>
                                        </div>
                                        <p>
                                            Main: 203-808-8613
                                            <br>
                                            Office: 203-808-8648
                                        </p>
                                    </div>

                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info d-flex">
                                        <div class="contact-icon mr-15">
                                            <i class="icon-contract"></i>
                                        </div>
                                        <p>office@yourbusiness.com</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Contact Form Area -->
                            <div class="col-12 col-lg-7">
                                <div class="contact-form-area wow fadeInUp" data-wow-delay="500ms">
                                    <%--<form action="#" method="post">--%>
                                    <%--         <input type="text" class="form-control" id="name" placeholder="Name">
                                    <input type="email" class="form-control" id="email" placeholder="E-mail">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    <button class="btn academy-btn mt-30" type="submit">Contact Us</button>--%>
                                    <%--</form>--%>
                                    <h3>Email</h3>
                                    <p>Gửi email để nhận những thông tin hữu ích về các khóa học cũng như nhận tư vấn du học</p>
                                    <asp:TextBox ID="txbEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                    <asp:Button ID="btnSubmit" runat="server" Text="Gửi" CssClass="btn academy-btn mt-30" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->
</asp:Content>
