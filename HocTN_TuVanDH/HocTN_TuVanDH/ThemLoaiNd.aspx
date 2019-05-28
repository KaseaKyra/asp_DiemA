<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ThemLoaiNd.aspx.cs" Inherits="HocTN_TuVanDH.Form.LoaiNd.ThemLoaiNd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-12 clearfix">
            <h4>Tên loại người dùng:</h4>
            <div class="form-group">
                <asp:TextBox ID="txbLoaiNd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn btn-primary float-right" OnClick="btnThem_Click" />
        </div>
    </div>
</asp:Content>
