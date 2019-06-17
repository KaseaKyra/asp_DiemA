<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="ChiTietKhoaHoc.aspx.cs" Inherits="HocTN_TuVanDH.ChiTietKhoaHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Khóa học
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    KHÓA HỌC
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <div class="top-popular-courses-area mt-50 section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div>
                        <asp:Label ID="lblCourseName" runat="server" Text="Tên khóa học"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblGVName" runat="server" Text="tên giáo viên"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblGtGv" runat="server" Text="giới thiệu giáo viên"></asp:Label>
                    </div>
                </div>
                <div class="col-md-8">
                    <asp:Literal ID="ltrVideoGioiThieu" runat="server"></asp:Literal>
                    <div class="mt-3">
                        <asp:Label ID="lblGTKhoaHoc" runat="server" Text="giới thiệu khóa học"></asp:Label>
                    </div>
                    <div class="mt-5">
                        <asp:Button ID="btnHoc" runat="server" Text="Mua khóa học" CssClass="btn academy-btn" OnClick="btnHoc_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
