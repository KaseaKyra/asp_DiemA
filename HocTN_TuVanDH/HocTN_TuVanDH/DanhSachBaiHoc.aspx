<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageChild2.master" AutoEventWireup="true" CodeBehind="DanhSachBaiHoc.aspx.cs" Inherits="HocTN_TuVanDH.DanhSachBaiHoc" %>

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
                <asp:ListView ID="lvwDsBh" runat="server" DataKeyNames="Id" DataSourceID="sqlDataSrcDsBh" GroupItemCount="3">
                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color: #FFFFFF; color: #284775; width: 350px;" class="text-center align-middle p-2">
                            <div>
                                <asp:ImageButton ID="imgbImage" runat="server" ImageUrl='<%# Eval("ImageLink", "CustomImages/Courses/{0}") %>' PostBackUrl='<%# Eval("Id", "VideoBaiHoc.aspx?Id={0}") + "&" + Eval("KhoaHocId", "kh={0}") + "&" + Eval("ThuTuBaiHoc", "thutu={0}") %>' CssClass="img-fluid" />
                            </div>
                            <div>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "VideoBaiHoc.aspx?Id={0}") + "&" + Eval("KhoaHocId", "kh={0}") + "&" + Eval("ThuTuBaiHoc", "thutu={0}") %>'>Bài <%# Eval("ThuTuBaiHoc") %>:  <%# Eval("Name") %></asp:HyperLink>
                            </div>
                            <%--                            Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            <br />
                            KhoaHocId:
                            <asp:Label ID="KhoaHocIdLabel" runat="server" Text='<%# Eval("KhoaHocId") %>' />
                            <br />
                            Link:
                            <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                            <br />
                            ThuTuBaiHoc:
                            <asp:Label ID="ThuTuBaiHocLabel" runat="server" Text='<%# Eval("ThuTuBaiHoc") %>' />
                            <br />
                            ImageLink:
                            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Eval("ImageLink") %>' />
                            <br />--%>
                        </td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="background-color: #999999;">Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            KhoaHocId:
                            <asp:TextBox ID="KhoaHocIdTextBox" runat="server" Text='<%# Bind("KhoaHocId") %>' />
                            <br />
                            Link:
                            <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                            <br />
                            ThuTuBaiHoc:
                            <asp:TextBox ID="ThuTuBaiHocTextBox" runat="server" Text='<%# Bind("ThuTuBaiHoc") %>' />
                            <br />
                            ImageLink:
                            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br />
                        </td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            KhoaHocId:
                            <asp:TextBox ID="KhoaHocIdTextBox" runat="server" Text='<%# Bind("KhoaHocId") %>' />
                            <br />
                            Link:
                            <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                            <br />
                            ThuTuBaiHoc:
                            <asp:TextBox ID="ThuTuBaiHocTextBox" runat="server" Text='<%# Bind("ThuTuBaiHoc") %>' />
                            <br />
                            ImageLink:
                            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br />
                        </td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="background-color: #E0FFFF; color: #333333; width: 350px;" class="text-center align-middle p-2">
                            <div>
                                <asp:ImageButton ID="imgbImage" runat="server" ImageUrl='<%# Eval("ImageLink", "CustomImages/Courses/{0}") %>' PostBackUrl='<%# Eval("Id", "VideoBaiHoc.aspx?Id={0}") + "&" + Eval("KhoaHocId", "kh={0}") + "&" + Eval("ThuTuBaiHoc", "thutu={0}") %>' CssClass="img-fluid" />
                            </div>
                            <div>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "VideoBaiHoc.aspx?Id={0}") + "&" + Eval("KhoaHocId", "kh={0}") + "&" + Eval("ThuTuBaiHoc", "thutu={0}") %>'>Bài <%# Eval("ThuTuBaiHoc") %>:  <%# Eval("Name") %></asp:HyperLink>
                            </div>
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center; font-family: Verdana, Arial, Helvetica, sans-serif;" class="text-success font-bold pt-3">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            <br />
                            KhoaHocId:
                            <asp:Label ID="KhoaHocIdLabel" runat="server" Text='<%# Eval("KhoaHocId") %>' />
                            <br />
                            Link:
                            <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                            <br />
                            ThuTuBaiHoc:
                            <asp:Label ID="ThuTuBaiHocLabel" runat="server" Text='<%# Eval("ThuTuBaiHoc") %>' />
                            <br />
                            ImageLink:
                            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Eval("ImageLink") %>' />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="sqlDataSrcDsBh" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="Proc_GetListBaiHoc" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
