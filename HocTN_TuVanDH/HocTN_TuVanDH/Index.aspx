<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChildIndex.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HocTN_TuVanDH.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <!-- ##### Top Feature Area Start ##### -->
    <div class="top-features-area wow fadeInUp" data-wow-delay="300ms">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="features-content">
                        <div class="row no-gutters">
                            <!-- Single Top Features -->
                            <div class="col-12 col-md-4">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                    <i class="icon-agenda-1"></i>
                                    <h5>Khóa học chất lượng</h5>
                                </div>
                            </div>
                            <!-- Single Top Features -->
                            <div class="col-12 col-md-4">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                    <i class="icon-assistance"></i>
                                    <h5>Giáo viên giàu kinh nhiệm</h5>
                                </div>
                            </div>
                            <!-- Single Top Features -->
                            <div class="col-12 col-md-4">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                    <i class="icon-telephone-3"></i>
                                    <h5>Hỗ trợ nhiệt tình</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Feature Area End ##### -->
    <!-- ##### Course Area Start ##### -->
    <div class="academy-courses-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <h3>Khóa học tiếng Nhật online</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="800ms">
                        <div class="course-icon">
                            <i class="icon-message"></i>
                        </div>
                        <div class="ml-2 course-content">
                            <h4 class="mb-3">KHÓA HỌC N5</h4>
                            <p>Khởi đầu cùng khóa học N5</p>
                            <asp:Button ID="btnN5" runat="server" Text="Chi tiết" CssClass="btn btn-success px-5" PostBackUrl="KhoaHocTheoCap.aspx?cap=1"  />
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="800ms">
                        <div class="course-icon">
                            <i class="icon-message"></i>
                        </div>
                        <div class="ml-2 course-content">
                            <h4 class="mb-3">KHÓA HỌC N4</h4>
                            <p>Nâng cao cùng khóa học N4</p>
                            <asp:Button ID="btnN4" runat="server" Text="Chi tiết" CssClass="btn btn-success px-5" PostBackUrl="KhoaHocTheoCap.aspx?cap=2" />
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="800ms">
                        <div class="course-icon">
                            <i class="icon-message"></i>
                        </div>
                        <div class="ml-2 course-content">
                            <h4>KHÓA HỌC N5</h4>
                            <p class="mb-3">Bứt phá cùng khóa học N3</p>
                            <asp:Button ID="btnN3" runat="server" Text="Chi tiết" CssClass="btn btn-success px-5" PostBackUrl="KhoaHocTheoCap.aspx?cap=3"  />
                        </div>
                    </div>
                </div>
                <!-- ends Single Course Area -->
            </div>
        </div>
    </div>
    <!-- ##### Course Area End ##### -->
    <!-- ##### Testimonials Area Start ##### -->
    <div class="testimonials-area section-padding-100 bg-img bg-overlay my-3" style="background-image: url(img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto white wow fadeInUp" data-wow-delay="300ms">
                        <span>Đánh giá của học viên</span>
                        <h3>Hãy xem những học viên đã nói gì về trung tâm của chúng tôi</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="400ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t1.jpg" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>Các giáo viên thật tuyêt vời</h5>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>
                            <h6><span>Đinh Thị Hải Yến,</span> Học sinh</h6>
                        </div>
                    </div>
                </div>
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="500ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t2.jpg" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>Easy and user friendly courses</h5>
                            <p>Retiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                            <h6><span>Shawn Gaines,</span> Student</h6>
                        </div>
                    </div>
                </div>
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="600ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t3.jpg" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>I just love the courses here</h5>
                            <p>Nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio ves tibul.</p>
                            <h6><span>Ross Cooper,</span> Student</h6>
                        </div>
                    </div>
                </div>
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="700ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t4.jpg" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>One good academy</h5>
                            <p>Vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibu lum est mat tis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio ves tibul. Etiam nec odio vestibulum est mat tis effic iturut magnaNec odio vestibulum est mattis effic iturut magna.</p>
                            <h6><span>James Williams,</span> Student</h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="load-more-btn text-center wow fadeInUp" data-wow-delay="800ms">
                        <a href="#" class="btn academy-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Testimonials Area End ##### -->
</asp:Content>
