<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="ChiTietTruongHoc.aspx.cs" Inherits="HocTN_TuVanDH.ChiTietTruongHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Du học
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPage" runat="server">
    DU HỌC
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <div class="top-popular-courses-area mt-50 section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <span>Trường học</span>
                        <h3>
                            <asp:Label ID="lblSchoolName" runat="server" Text="tên trường" CssClass="ctth-school-name"></asp:Label></h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="border border-success p-2 mb-3">
                        <div style="width: 200px; height: 200px;" class="text-center">
                            <asp:Image ID="imgSchool" runat="server" CssClass="img-fluid text-center" />
                        </div>
                        <div class="mt-2">
                            <span class="font-weight-bold">Địa chỉ:</span>
                            <asp:Label ID="lblAddress" runat="server" Text="địa chỉ"></asp:Label>
                        </div>
                        <div class="mt-2">
                            <span class="font-weight-bold">Website:</span>
                            <asp:HyperLink ID="hlkWebsite" runat="server" Target="_blank" ForeColor="Blue"></asp:HyperLink>
                        </div>
                        <div class="mt-2">
                            <span class="font-weight-bold mt-2">Ngành nghề đào tạo:</span>
                            <asp:Label ID="lblNganh" runat="server" Text="ngành nghề đào tạo"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <h3>THÔNG TIN CHI TIẾT</h3>
                    <div>
                        <asp:Label ID="lblTTCT" runat="server" Text="thông tin chi tiết"></asp:Label>
                    </div>
                    <div class="text-danger mt-3 font-bold">
                        Học phí:
                        <asp:Label ID="lblHocPhi" runat="server" Text="0"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
