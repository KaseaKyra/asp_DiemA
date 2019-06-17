<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="VideoBaiHoc.aspx.cs" Inherits="HocTN_TuVanDH.VideoBaiHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    KHÓA HỌC
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <div class="top-popular-courses-area section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="mb-4 font-bold text-success">
                        <asp:Label ID="lblName" runat="server" Text="Tên video"></asp:Label>
                    </h2>
                    <asp:Literal ID="ltrVideo" runat="server"></asp:Literal>
                    <div class="my-5 row">
                        <div class="col-md-4 clearfix">
                            <asp:Button ID="btnPre" runat="server" Text="Bài trước" CssClass="btn btn-warning float-left" OnClick="btnPre_Click" />
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:Button ID="btnDsBh" runat="server" Text="Quay lại danh sách bài học" CssClass="btn btn-primary" OnClick="btnDsBh_Click" />
                        </div>
                        <div class="col-md-4 clearfix">
                            <asp:Button ID="btnNext" runat="server" Text="Bài sau" CssClass="btn btn-danger float-right" OnClick="btnNext_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
