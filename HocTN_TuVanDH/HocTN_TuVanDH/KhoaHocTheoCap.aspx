<%@ Page Title="" Language="C#" MasterPageFile="~/CoursesMasterPage.master" AutoEventWireup="true" CodeBehind="KhoaHocTheoCap.aspx.cs" Inherits="HocTN_TuVanDH.KhoaHocTheoCap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCourseContent" runat="server">
    <asp:ListView ID="lvwKhoaHocTheoCap" runat="server" DataKeyNames="Id" DataSourceID="sqlDataSrcKhtc">
        <AlternatingItemTemplate>
            <div class="row m-2 p-3" style="background-color: #eef3f6">
                <div class="col-md-4">
                    <asp:Image ID="ImgCourse" CssClass="img-fluid popular-course-thumb bg-img" Height="200px" Width="200px" ImageUrl='<%# Eval("ImageLink", "CustomImages/Courses/{0}") %>' runat="server" />
                </div>
                <div class="col-md-8">
                    <h4>
                        <asp:Label ID="NameLabel" CssClass="text-uppercase" runat="server" Text='<%# Eval("Name") %>' />
                    </h4>
                    <div>
                        <asp:Label ID="Giảng_viênLabel" CssClass="text-success" runat="server" Text='<%# Eval("[Giảng viên]") %>' />
                    </div>
                    <div class="text-success">
                        Ngày public: 
                        <asp:Label ID="NgayBatDauLabel" runat="server" Text='<%# Eval("NgayBatDau") %>' />
                    </div>
                    <div>
                        Cấp độ khóa học: 
                    <asp:Label ID="Cấp_độLabel" runat="server" Text='<%# Eval("[Cấp độ]") %>' />
                    </div>
                    <div class="text-danger">
                        Học Phí:
                        <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
                        VND
                    </div>
                    <div class="mt-4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "ChiTietKhoaHoc.aspx?Id={0}") %>'
                            CssClass="btn-lg btn-success">Chi tiết</asp:HyperLink>
                    </div>
                </div>
            </div>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">ImageLink:
            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
                <br />
                Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Cấp độ:
            <asp:TextBox ID="Cấp_độTextBox" runat="server" Text='<%# Bind("[Cấp độ]") %>' />
                <br />
                Giảng viên:
            <asp:TextBox ID="Giảng_viênTextBox" runat="server" Text='<%# Bind("[Giảng viên]") %>' />
                <br />
                HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
                <br />
                NgayBatDau:
            <asp:TextBox ID="NgayBatDauTextBox" runat="server" Text='<%# Bind("NgayBatDau") %>' />
                <br />
                Ghichu:
            <asp:TextBox ID="GhichuTextBox" runat="server" Text='<%# Bind("Ghichu") %>' />
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
            <span style="">ImageLink:
            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
                <br />
                Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Cấp độ:
            <asp:TextBox ID="Cấp_độTextBox" runat="server" Text='<%# Bind("[Cấp độ]") %>' />
                <br />
                Giảng viên:
            <asp:TextBox ID="Giảng_viênTextBox" runat="server" Text='<%# Bind("[Giảng viên]") %>' />
                <br />
                HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
                <br />
                NgayBatDau:
            <asp:TextBox ID="NgayBatDauTextBox" runat="server" Text='<%# Bind("NgayBatDau") %>' />
                <br />
                Ghichu:
            <asp:TextBox ID="GhichuTextBox" runat="server" Text='<%# Bind("Ghichu") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="row m-2 p-3" style="background-color: #E0FFFF">
                <div class="col-md-4">
                    <asp:Image ID="ImgCourse" CssClass="img-fluid popular-course-thumb bg-img" Height="200px" Width="200px" ImageUrl='<%# Eval("ImageLink", "CustomImages/Courses/{0}") %>' runat="server" />
                </div>
                <div class="col-md-8">
                    <h4>
                        <asp:Label ID="Label1" CssClass="text-uppercase" runat="server" Text='<%# Eval("Name") %>' />
                    </h4>
                    <div class="text-success">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("[Giảng viên]") %>' />
                    </div>
                    <div class="text-success">
                        Ngày public: 
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("NgayBatDau") %>' />
                    </div>
                    <div>
                        Cấp độ khóa học: 
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("[Cấp độ]") %>' />
                    </div>
                    <div class="text-danger">
                        Học Phí:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("HocPhi") %>' />
                        VND
                    </div>
                    <div class="mt-4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "ChiTietKhoaHoc.aspx?Id={0}") %>'
                            CssClass="btn-lg btn-success">Chi tiết</asp:HyperLink>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="true" PreviousPageText="<<" />
                        <asp:NumericPagerField CurrentPageLabelCssClass="text-success font-weight-bold" />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="true" ShowPreviousPageButton="False" NextPageText=">>" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6; font-weight: bold; color: #333333;">ImageLink:
            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Eval("ImageLink") %>' />
                <br />
                Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Cấp độ:
            <asp:Label ID="Cấp_độLabel" runat="server" Text='<%# Eval("[Cấp độ]") %>' />
                <br />
                Giảng viên:
            <asp:Label ID="Giảng_viênLabel" runat="server" Text='<%# Eval("[Giảng viên]") %>' />
                <br />
                HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
                <br />
                NgayBatDau:
            <asp:Label ID="NgayBatDauLabel" runat="server" Text='<%# Eval("NgayBatDau") %>' />
                <br />
                Ghichu:
            <asp:Label ID="GhichuLabel" runat="server" Text='<%# Eval("Ghichu") %>' />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="sqlDataSrcKhtc" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="Proc_GetCoursesTheoCap" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="Cap" QueryStringField="cap" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
