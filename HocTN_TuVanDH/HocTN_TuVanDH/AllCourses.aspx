<%@ Page Title="" Language="C#" MasterPageFile="~/CoursesMasterPage.master" AutoEventWireup="true" CodeBehind="AllCourses.aspx.cs" Inherits="HocTN_TuVanDH.AllCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCourseContent" runat="server">
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
    </div>
</asp:Content>
