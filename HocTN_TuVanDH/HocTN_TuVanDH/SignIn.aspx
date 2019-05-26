<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="HocTN_TuVanDH.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="CustomCSS/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-5">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 py-2 clearfix wrap-content">
                    <h2 class="text-center">ĐĂNG KÝ HỌC VIÊN</h2>
                    <p class="text-center"><i class="fas fa-users fa-5x"></i></p>
                    <%--tên đăng nhập--%>
                    <div class="form-group">
                        <label for="txbUsername" class="font-weight-bold">
                            Họ tên:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server"
                                ErrorMessage="(*)"
                                ControlToValidate="txbName"
                                CssClass="error" Text="(*)"></asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="txbName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <%--tên đăng nhập--%>
                    <%--NĂM SINH--%>
                    <div class="form-group">
                        <span class="font-weight-bold">Năm sinh:</span>
                        <br />
                        Ngày:
                        <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
                        <span class="ml-md-5">Tháng:</span>
                        <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
                        <span class="ml-md-5">Năm:</span>
                        <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
                    </div>
                    <%--NĂM SINH--%>
                    <%--GIỚI TÍNH--%>
                    <div class="form-group">
                        <span class="font-weight-bold">Giới tính:</span>
                        <br />
                        <asp:RadioButton ID="rbMale" runat="server" Text="Nam" Checked="true" GroupName="gender" />
                        <asp:RadioButton ID="rbFemale" runat="server" Text="Nữ" GroupName="gender" CssClass="ml-md-5" />
                    </div>
                    <%--GIỚI TÍNH--%>
                    <%--EMAIL--%>
                    <div class="form-group">
                        <span class="font-weight-bold">Email:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="(*)" ControlToValidate="txbEmail" CssClass="error"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                runat="server"
                                ErrorMessage="(*)" ControlToValidate="txbEmail" CssClass="error" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </span>
                        <br />
                        <asp:TextBox ID="txbEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <%--EMAIL--%>
                    <%--SỐ ĐIỆN THOẠI--%>
                    <div class="form-group">
                        <span class="font-weight-bold">Số điện thoại:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="(*)"
                                CssClass="error"
                                ControlToValidate="txbPhone"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txbPhone"
                                CssClass="error"
                                ErrorMessage="(*)"
                                ValidationExpression="(0)\d{9}"></asp:RegularExpressionValidator>
                        </span>
                        <br />
                        <asp:TextBox ID="txbPhone" runat="server" CssClass="form-control" placeholder="Số điện thoại"></asp:TextBox>
                    </div>
                    <%--SỐ ĐIỆN THOẠI--%>
                    <%--MẬT KHẨU--%>
                    <div class="form-group">
                        <span class="font-weight-bold">Mật khẩu:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ErrorMessage="(*)"
                                CssClass="error"
                                ControlToValidate="txbPassword"></asp:RequiredFieldValidator>
                        </span>
                        <br />
                        <asp:TextBox ID="txbPassword" runat="server" CssClass="form-control" placeholder="Mật khẩu" 
                            TextMode="Password"></asp:TextBox>
                    </div>
                    <%--ENDS MẬT KHẨU--%>
                    <%--NHẬP LẠI MẬT KHẨU--%>
                    <div class="form-group">
                        <span class="font-weight-bold">Nhập lại mật khẩu:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ErrorMessage="(*)"
                                CssClass="error"
                                ControlToValidate="txbRePassword"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToCompare="txbPassword" ControlToValidate="txbRePassword" CssClass="error"></asp:CompareValidator>
                        </span>
                        <br />
                        <asp:TextBox ID="txbRePassword" runat="server" CssClass="form-control" placeholder="Nhập lại mật khẩu" 
                            TextMode="Password"></asp:TextBox>
                    </div>
                    <%--ENDS NHẬP LẠI MẬT KHẨU--%>
                    <div class="float-right">
                        <asp:Button ID="btnSignIn" runat="server" Text="Đăng ký" CssClass="btn btn-success px-4" OnClick="btnSignIn_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="btn btn-danger" />
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
