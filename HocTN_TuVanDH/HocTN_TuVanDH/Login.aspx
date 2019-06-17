<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HocTN_TuVanDH.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="CustomCSS/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 py-2 wrap-content">
                    <h2 class="text-center">HỆ THỐNG QUẢN LÝ</h2>
                    <div class="text-center">
                        <img class="img-fluid" src="CustomImages/login.png" />
                    </div>
                    <%--tên đăng nhập--%>
                    <div class="form-group">
                        <label for="txbUsername">
                            Tên đăng nhập:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server"
                                ErrorMessage="(*)"
                                ControlToValidate="txbUsername"
                                CssClass="error"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                runat="server" ErrorMessage="Định dạng email không đúng"
                                ControlToValidate="txbUsername"
                                CssClass="error"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </label>
                        <asp:TextBox ID="txbUsername" runat="server" CssClass="form-control"
                            placeholder="Nhập email hoặc password"></asp:TextBox>
                    </div>
                    <%--mật khẩu--%>
                    <div class="form-group">
                        <label for="txbPassword">
                            Mật khẩu:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server"
                                ErrorMessage="(*)"
                                ControlToValidate="txbPassword"
                                CssClass="error"></asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="txbPassword" runat="server" CssClass="form-control" TextMode="Password">
                        </asp:TextBox>
                    </div>
                    <%--nút đăng nhập--%>
                    <div class="form-group">
                        <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập Hệ Thống"
                            CssClass="form-control btn btn-primary" OnClick="btnLogin_Click" />
                    </div>
                    <%--<asp:Label ID="Label1" runat="server" Text="Label" CssClass="text-danger"></asp:Label>--%>
                    <%--nút hủy--%>
                    <div class="clearfix">
                        <div class="float-left">
                            <asp:Button ID="btnCancel" runat="server" Text="Hủy Bỏ"
                                CssClass="btn btn-danger" />
                        </div>
                        <div class="float-right">
                            <asp:CheckBox ID="cbForgetPass" runat="server" Text="Nhớ mật khẩu" />
                            <a href="#">Quên mật khẩu</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
