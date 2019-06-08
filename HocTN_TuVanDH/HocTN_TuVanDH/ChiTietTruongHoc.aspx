<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="ChiTietTruongHoc.aspx.cs" Inherits="HocTN_TuVanDH.ChiTietTruongHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Du học
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    DU HỌC
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div>
                <asp:Label ID="lblSchoolName" runat="server" Text="tên trường"></asp:Label>
            </div>
            <div>
                <div>
                    <asp:Image ID="imgSchool" runat="server" CssClass="img-fluid" />
                </div>
                <div>
                    <asp:Label ID="lblAddress" runat="server" Text="địa chỉ"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblWebsite" runat="server" Text="website"></asp:Label>
                </div>
            </div>
            <div>NGÀNH NGHỀ ĐÀO TẠO</div>
            <div>
                <asp:Label ID="lblNganh" runat="server" Text="ngành nghề đào tạo"></asp:Label>
            </div>
        </div>
        <div class="col-md-8">
            <div>THÔNG TIN CHI TIẾT</div>
            <div>
                <asp:Label ID="lblTTCT" runat="server" Text="thông tin chi tiết"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblHocPhi" runat="server" Text="0"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
