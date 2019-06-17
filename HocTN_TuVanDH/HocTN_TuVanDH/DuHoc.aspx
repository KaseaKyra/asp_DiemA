<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDuHoc.master" AutoEventWireup="true" CodeBehind="DuHoc.aspx.cs" Inherits="HocTN_TuVanDH.DuHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphDSTruong" runat="server">
    <asp:ListView ID="lvwSchool" runat="server" DataKeyNames="Id" DataSourceID="dataSrcSchool">
        <AlternatingItemTemplate>
            <div style="background-color: #FFFFFF; color: #284775;" class="row border border-success clearfix p-3 m-3">
                <div class="col-md-3">
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("[Link ảnh]", "CustomImages/Schools/{0}") %>' />
                </div>
                <div class="pl-3 col-md-4">
                    <h3 class="font-weight-bold">
                        <asp:Label ID="Tên_trườngLabel" runat="server" Text='<%# Eval("[Tên trường]") %>' />
                    </h3>
                    <div class="text-warning font-weight-bold">
                        Học phí: 
                       <asp:Label ID="Giá_tiềnLabel" runat="server" Text='<%# Eval("[Giá tiền]") %>' />
                        <span>&#165;</span>
                    </div>
                    <div>
                        Ngành đào tạo:
                        <asp:Label ID="Ngành_đào_tạoLabel" runat="server" Text='<%# Eval("[Ngành đào tạo]") %>' />
                    </div>
                    <div class="mt-4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "ChiTietTruongHoc.aspx?Id={0}") %>'
                            CssClass="btn-lg btn-success">Chi tiết</asp:HyperLink>
                    </div>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblTtcb" runat="server" Text='<%# Eval("[Thông tin cơ bản]").ToString().Length > 250 ? Eval("[Thông tin cơ bản]").ToString().Substring(0,250) + "..." :  Eval("[Thông tin cơ bản]").ToString() %>' />
                </div>
            </div>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">Link ảnh:
                            <asp:TextBox ID="Link_ảnhTextBox" runat="server" Text='<%# Bind("[Link ảnh]") %>' />
                <br />
                Tên trường:
                            <asp:TextBox ID="Tên_trườngTextBox" runat="server" Text='<%# Bind("[Tên trường]") %>' />
                <br />
                Giá tiền:
                            <asp:TextBox ID="Giá_tiềnTextBox" runat="server" Text='<%# Bind("[Giá tiền]") %>' />
                <br />
                Ngành đào tạo:
                            <asp:TextBox ID="Ngành_đào_tạoTextBox" runat="server" Text='<%# Bind("[Ngành đào tạo]") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="Ghi_chúTextBox" runat="server" Text='<%# Bind("[Ghi chú]") %>' />
                <br />
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Thông tin cơ bản:
                 <asp:TextBox ID="Thông_tin_cơ_bảnTextBox" runat="server" Text='<%# Bind("[Thông tin cơ bản]") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Link ảnh:
                            <asp:TextBox ID="Link_ảnhTextBox" runat="server" Text='<%# Bind("[Link ảnh]") %>' />
                <br />
                Tên trường:
                            <asp:TextBox ID="Tên_trườngTextBox" runat="server" Text='<%# Bind("[Tên trường]") %>' />
                <br />
                Giá tiền:
                            <asp:TextBox ID="Giá_tiềnTextBox" runat="server" Text='<%# Bind("[Giá tiền]") %>' />
                <br />
                Ngành đào tạo:
                            <asp:TextBox ID="Ngành_đào_tạoTextBox" runat="server" Text='<%# Bind("[Ngành đào tạo]") %>' />
                <br />
                Ghi chú:
                            <asp:TextBox ID="Ghi_chúTextBox" runat="server" Text='<%# Bind("[Ghi chú]") %>' />
                <br />
                Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Thông tin cơ bản:
                 <asp:TextBox ID="Thông_tin_cơ_bảnTextBox" runat="server" Text='<%# Bind("[Thông tin cơ bản]") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
            </span>
        </InsertItemTemplate>
        <%--ItemTemplate--%>
        <ItemTemplate>
            <div style="background-color: #E0FFFF; color: #333333;" class="row border border-success clearfix p-3 m-3">
                <div class="col-md-3">
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("[Link ảnh]", "CustomImages/Schools/{0}") %>' />
                </div>
                <div class="pl-3 col-md-4">
                    <h3 class="font-weight-bold">
                        <asp:Label ID="Tên_trườngLabel" runat="server" Text='<%# Eval("[Tên trường]") %>' />
                    </h3>
                    <div class="text-warning font-weight-bold">
                        Học phí: 
                        <asp:Label ID="Giá_tiềnLabel" runat="server" Text='<%# Eval("[Giá tiền]") %>' />
                        <span>&#165;</span>
                    </div>
                    <div>
                        Ngành đào tạo:
                        <asp:Label ID="Ngành_đào_tạoLabel" runat="server" Text='<%# Eval("[Ngành đào tạo]") %>' />
                    </div>
                    <div class="mt-4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "ChiTietTruongHoc.aspx?Id={0}") %>'
                            CssClass="btn-lg btn-success">Chi tiết</asp:HyperLink>
                    </div>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblTtcb" runat="server" Text='<%# Eval("[Thông tin cơ bản]").ToString().Length > 250 ? Eval("[Thông tin cơ bản]").ToString().Substring(0,250) + "..." :  Eval("[Thông tin cơ bản]").ToString() %>' />
                </div>
            </div>
        </ItemTemplate>
        <%--end ItemTemplate--%>
        <%--PHẤN TRANG--%>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="True" PreviousPageText="<<" />
                        <asp:NumericPagerField CurrentPageLabelCssClass="text-success font-weight-bold" />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="True" ShowPreviousPageButton="False" NextPageText=">>" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <%--END PHẤN TRANG--%>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6; font-weight: bold; color: #333333;">Link ảnh:
                <asp:Label ID="Link_ảnhLabel" runat="server" Text='<%# Eval("[Link ảnh]") %>' />
                <br />
                Tên trường:
                 <asp:Label ID="Tên_trườngLabel" runat="server" Text='<%# Eval("[Tên trường]") %>' />
                <br />
                Giá tiền:
                <asp:Label ID="Giá_tiềnLabel" runat="server" Text='<%# Eval("[Giá tiền]") %>' />
                <br />
                Ngành đào tạo:
               <asp:Label ID="Ngành_đào_tạoLabel" runat="server" Text='<%# Eval("[Ngành đào tạo]") %>' />
                <br />
                Ghi chú:
                            <asp:Label ID="Ghi_chúLabel" runat="server" Text='<%# Eval("[Ghi chú]") %>' />
                <br />
                Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Thông tin cơ bản:
                 <asp:TextBox ID="Thông_tin_cơ_bảnTextBox" runat="server" Text='<%# Bind("[Thông tin cơ bản]") %>' />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="dataSrcSchool" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="Proc_GetListDuHoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
