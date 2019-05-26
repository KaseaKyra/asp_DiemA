<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DS_LoaiNd.aspx.cs" Inherits="HocTN_TuVanDH.Form.DS_LoaiNd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="mb-5">DANH SÁCH PHÂN LOẠI NGƯỜI DÙNG</h4>
    <div class="row">
        <div class="col-12">
            Tổng số bản ghi: 
            <asp:Label ID="lblSumRecord" runat="server" Text="0"></asp:Label>
            <table class="table table-hover table-bordered table-striped">
                <thead class="thead-dark text-center">
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Mã loại</th>
                        <th scope="col">Tên loại</th>
                        <th scope="col">Sửa</th>
                        <th scope="col">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="ltrLoaiNd" runat="server"></asp:Literal>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
