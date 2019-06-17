<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDuHoc.master" AutoEventWireup="true" CodeBehind="TkThHocPhiIndex0.aspx.cs" Inherits="HocTN_TuVanDH.TkThHocPhiIndex0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphDSTruong" runat="server">
    <asp:ListView ID="lvwHocPhiIndex0" runat="server" DataSourceID="sdsFee_0">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
            <br />
            ThongTinChiTiet:
            <asp:Label ID="ThongTinChiTietLabel" runat="server" Text='<%# Eval("ThongTinChiTiet") %>' />
            <br />
            GiaTien:
            <asp:Label ID="GiaTienLabel" runat="server" Text='<%# Eval("GiaTien") %>' />
            <br />
            ImageLink:
            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Eval("ImageLink") %>' />
            <br />
            Ndt:
            <asp:Label ID="NdtLabel" runat="server" Text='<%# Eval("Ndt") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Website:
            <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
            <br />
            ThongTinChiTiet:
            <asp:TextBox ID="ThongTinChiTietTextBox" runat="server" Text='<%# Bind("ThongTinChiTiet") %>' />
            <br />
            GiaTien:
            <asp:TextBox ID="GiaTienTextBox" runat="server" Text='<%# Bind("GiaTien") %>' />
            <br />
            ImageLink:
            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
            <br />
            Ndt:
            <asp:TextBox ID="NdtTextBox" runat="server" Text='<%# Bind("Ndt") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />Website:
            <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
            <br />ThongTinChiTiet:
            <asp:TextBox ID="ThongTinChiTietTextBox" runat="server" Text='<%# Bind("ThongTinChiTiet") %>' />
            <br />GiaTien:
            <asp:TextBox ID="GiaTienTextBox" runat="server" Text='<%# Bind("GiaTien") %>' />
            <br />ImageLink:
            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
            <br />Ndt:
            <asp:TextBox ID="NdtTextBox" runat="server" Text='<%# Bind("Ndt") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
            <br />
            ThongTinChiTiet:
            <asp:Label ID="ThongTinChiTietLabel" runat="server" Text='<%# Eval("ThongTinChiTiet") %>' />
            <br />
            GiaTien:
            <asp:Label ID="GiaTienLabel" runat="server" Text='<%# Eval("GiaTien") %>' />
            <br />
            ImageLink:
            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Eval("ImageLink") %>' />
            <br />
            Ndt:
            <asp:Label ID="NdtLabel" runat="server" Text='<%# Eval("Ndt") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
            <br />
            ThongTinChiTiet:
            <asp:Label ID="ThongTinChiTietLabel" runat="server" Text='<%# Eval("ThongTinChiTiet") %>' />
            <br />
            GiaTien:
            <asp:Label ID="GiaTienLabel" runat="server" Text='<%# Eval("GiaTien") %>' />
            <br />
            ImageLink:
            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Eval("ImageLink") %>' />
            <br />
            Ndt:
            <asp:Label ID="NdtLabel" runat="server" Text='<%# Eval("Ndt") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="sdsFee_0" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="Proc_GetListDuHocByHocPhi_0" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
