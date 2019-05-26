<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="HocTN_TuVanDH.Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Khóa học
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    KHÓA HỌC
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <!-- ##### Top Popular Courses Area Start ##### -->
    <div class="top-popular-courses-area mt-50 section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="border border-success p-1 mb-5">
                        <div class="bg-success py-3 rounded text-center text-uppercase font-weight-bold c-color">tên khóa học</div>
                        <div class="form-group text-center">
                            <asp:TextBox ID="txbCourseName" CssClass="form-control mt-2" runat="server" placeholder="Nhập tên khóa học"></asp:TextBox>
                            <asp:Button ID="btnSearch" CssClass="btn btn-primary mt-2" runat="server" Text="Tìm kiếm" />
                        </div>
                    </div>
                    <div class="border border-success p-1">
                        <div class="bg-success py-3 rounded text-center text-uppercase font-weight-bold mb-2 c-color">Trình độ</div>
                        <div>
                            <asp:Button ID="btnN3" runat="server" CssClass="btn btn-danger form-control" Text="Khóa học N3" />
                        </div>
                        <div>
                            <asp:Button ID="btnN4" runat="server" CssClass="btn btn-warning form-control" Text="Khóa học N4" />
                        </div>
                        <div>
                            <asp:Button ID="bntN5" runat="server" CssClass="btn btn-primary form-control" Text="Khóa học N5" />
                        </div>
                    </div>
                    <div class="border border-success p-1 mt-5">
                        <div class="bg-success py-3 rounded text-center text-uppercase font-weight-bold c-color">Giáo viên</div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlGiaoVien" CssClass="form-control mt-2" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                                <span>Khóa học</span>
                                <h3>Những khóa học hot nhất</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Single Top Popular Course -->
                        <div class="col-12 col-lg-6">
                            <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                                <div class="popular-course-content">
                                    <h5>Business for begginers</h5>
                                    <span>By Simon Smith   |  March 18, 2018</span>
                                    <div class="course-ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                    </div>
                                    <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                                    <a href="#" class="btn academy-btn btn-sm">See More</a>
                                </div>
                                <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-1.jpg);"></div>
                            </div>
                        </div>
                        <!-- Single Top Popular Course -->
                        <div class="col-12 col-lg-6">
                            <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="500ms">
                                <div class="popular-course-content">
                                    <h5>Advanced HTML5</h5>
                                    <span>By Simon Smith   |  March 18, 2018</span>
                                    <div class="course-ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                    </div>
                                    <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                                    <a href="#" class="btn academy-btn btn-sm">See More</a>
                                </div>
                                <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-2.jpg);"></div>
                            </div>
                        </div>
                        <!-- Single Top Popular Course -->
                        <div class="col-12 col-lg-6">
                            <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="600ms">
                                <div class="popular-course-content">
                                    <h5>Marketing 101</h5>
                                    <span>By Simon Smith   |  March 18, 2018</span>
                                    <div class="course-ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                    </div>
                                    <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                                    <a href="#" class="btn academy-btn btn-sm">See More</a>
                                </div>
                                <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-3.jpg);"></div>
                            </div>
                        </div>
                        <!-- Single Top Popular Course -->
                        <div class="col-12 col-lg-6">
                            <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="700ms">
                                <div class="popular-course-content">
                                    <h5>Business for begginers</h5>
                                    <span>By Simon Smith   |  March 18, 2018</span>
                                    <div class="course-ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                    </div>
                                    <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                                    <a href="#" class="btn academy-btn btn-sm">See More</a>
                                </div>
                                <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-4.jpg);"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Popular Courses Area End ##### -->
</asp:Content>
