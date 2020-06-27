﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Home.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="MobileCenter.View.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 600px">
        <tr>
            <td style="width: 200px; height: 21px">
                <span style="color: #000000">
                Họ Và Tên</span></td>
            <td style="width: 400px; height: 21px" align="left">
                <asp:TextBox ID="textHoTen" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textHoTen"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 40px">
                <span style="color: #000000">
                Tên Đăng Nhập</span></td>
            <td style="width: 400px; height: 40px" align="left">
                <asp:TextBox ID="textTenDangNhap" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textTenDangNhap"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px">
                <span style="color: #000000">
                Thành Phố</span></td>
            <td style="width: 400px" align="left">
                <asp:TextBox ID="textThanhPho" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textThanhPho"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 26px">
                <span style="color: #000000">
                Quận Huyện</span></td>
            <td style="width: 400px; height: 26px" align="left">
                <asp:TextBox ID="textQuanHuyen" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textQuanHuyen"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px">
                <span style="color: #000000">
                Tên Đường Phố</span></td>
            <td style="width: 400px" align="left">
                <asp:TextBox ID="textTenDuongPho" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textTenDuongPho"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator></td>
        </tr>
        
        <tr>
            <td style="width: 200px">
                <span style="color: #000000">Mật Khẩu</span></td>
            <td style="width: 400px" align="left">
                <asp:TextBox ID="textMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="textMatKhau"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="textMatKhau"
                    ErrorMessage="Mật khẩu nhập lại không khớp"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px">
                <span style="color: #000000">
                Nhập Lại Mật Khẩu</span></td>
            <td style="width: 400px" align="left">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px">
                <span style="color: #000000">
                Email</span></td>
            <td style="width: 400px" align="left">
                <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="textEmail"
                    ErrorMessage="Không đúng định dạng"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px">
                <span style="color: #000000">Số Điện Thoại</span></td>
            <td style="width: 400px" align="left">
                <asp:TextBox ID="textSoDienThoai" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px; height: 26px;">
            </td>
            <td style="width: 400px; height: 26px;" align="left">
                <asp:ImageButton ID="btnDangKy" runat="server" ImageUrl="~/images/button_dangky.jpg" OnClick="btnDangKy_Click" /></td>
        </tr>
    </table>
</asp:Content>

