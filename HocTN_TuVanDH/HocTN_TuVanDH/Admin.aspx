<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HocTN_TuVanDH.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row text-center">
        <div class="col-md-3">
            <div class="clearfix p-3 mb-2 bg-success text-white" style="height: 100px;">
                <div class="float-left">
                    <i class="fas fa-user-graduate fa-4x"></i>
                </div>
                <div class="float-right">
                    <asp:Label ID="lblHocVien" runat="server" Text="0"></asp:Label>
                    học viên
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="clearfix p-3 mb-2 bg-primary text-white" style="height: 100px">
                <div class="float-left">
                    <i class="fas fa-chalkboard-teacher fa-4x"></i>
                </div>
                <div class="float-right">
                    <asp:Label ID="lblGiangVien" runat="server" Text="0"></asp:Label>
                    giảng viên
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="clearfix p-3 mb-2 bg-danger text-white" style="height: 100px;">
                <div class="float-left">
                    <i class="fas fa-school fa-4x"></i>
                </div>
                <div class="float-right">
                    <asp:Label ID="lblKhoaHoc" runat="server" Text="0"></asp:Label>
                    khóa học
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="clearfix p-3 mb-2 bg-warning text-white" style="height: 100px;">
                <div class="float-left">
                    <i class="fas fa-book fa-4x"></i>
                </div>
                <div class="float-right">
                    <asp:Label ID="lblBaiHoc" runat="server" Text="0"></asp:Label>
                    bài học
                </div>
            </div>
        </div>
    </div>
    <%--TOP 5 KHÓA HỌC ĐÔNG HỌC VIÊN NHẤT--%>
    <h4 class="mt-5">TOP 5 KHÓA HỌC ĐÔNG HỌC VIÊN NHẤT</h4>
    <div class="row">
        <div class="col-12">
            <table class="table table-hover table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Mã khóa học</th>
                        <th scope="col">Tên khóa học</th>
                        <th scope="col">Số học viên</th>
                        <th scope="col">Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <%--TOP 5 GIÁO VIÊN DẠY NHIỀU KHÓA HỌC NHẤT--%>
    <h4 class="mt-5">TOP 5 GIÁO VIÊN DẠY NHIỀU KHÓA HỌC NHẤT</h4>

    <%--TOP 5 GIÁO VIÊN CÓ NHIỀU HỌC VIÊN NHẤT--%>
    <h4 class="mt-5">TOP 5 GIÁO VIÊN CÓ NHIỀU HỌC VIÊN NHẤT</h4>

    <%--TOP 5 HỌC VIÊN HỌC NHIỀU NHẤT--%>
    <h4 class="mt-5">TOP 5 HỌC VIÊN HỌC NHIỀU NHẤT</h4>

</asp:Content>
