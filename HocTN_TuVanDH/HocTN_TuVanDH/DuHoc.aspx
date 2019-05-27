<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="DuHoc.aspx.cs" Inherits="HocTN_TuVanDH.DuHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Du học
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    DU HỌC
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
                            <asp:TextBox ID="txbCourseName" CssClass="form-control mt-2" runat="server" placeholder="Nhập tên trường học"></asp:TextBox>
                            <asp:Button ID="btnSearchSchool" CssClass="btn btn-primary mt-2" runat="server" Text="Tìm kiếm" />
                        </div>
                    </div>
                    <div class="border border-success p-1 mt-5">
                        <div class="bg-success py-3 rounded text-center text-uppercase font-weight-bold c-color">Chi phí/năm</div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlGiaoVien" CssClass="form-control mt-2" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="border border-success p-1 mt-5">
                        <div class="bg-success py-3 rounded text-center text-uppercase font-weight-bold c-color">Phân loại du học</div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlPhanLoai" CssClass="form-control mt-2" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="border border-success p-1 mt-5">
                        <div class="bg-success py-3 rounded text-center text-uppercase font-weight-bold c-color">Thành phố</div>
                        <div class="form-group form-check">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Đinh Thị Hải Yến" CssClass="form-check-input" />
                        </div>
                        <div class="text-center">
                            <asp:Button ID="btnSearchCity" runat="server" Text="Tìm Kiếm" CssClass="btn btn-primary" OnClick="btnSearchCity_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                                <span>Trường học</span>
                                <h3>Những trường học tốt nhất</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row py-3 border border-success">
                        <div class="col-md-2 clearfix">
                            <img class="img-fluid" src="img/blog-img/lb-1.jpg" style="width: 100px; height: 100px;" />
                        </div>
                        <div class="col-md-10">
                            <h4>TRUONG NHAT NGU KYOSHIN</h4>
                            <p>
                                <span>
                                    <asp:Label ID="lblLoaiDh" runat="server" Text="Loại du học"></asp:Label>
                                </span>
                                <br />

                                <span>
                                    <asp:Label ID="lblGiaTien" runat="server" Text="Giá tiền"></asp:Label>
                                </span>
                                <br />
                                <span>
                                    <asp:Label ID="lblGioiThieu" runat="server" Text="Giá tiền"></asp:Label>
                                </span>
                            </p>
                            <asp:Button ID="btnChiTiet" runat="server" Text="Chi tiết" CssClass="btn btn-success" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Popular Courses Area End ##### -->
</asp:Content>
