﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="MobileCenter.Admins.View.ThemSanPham" MasterPageFile="~/Admins/View/Admin.Master" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 820px">

            <td style="width: 200px" align="center">
                Tên Sản Phẩm</td>
            <td style="width: 620px">
                <asp:TextBox ID="txtTenSanPham" class="form-control" runat="server" Width="250px" Height="30px" style=" font-size:15px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                    ErrorMessage="Tên sản phẩm không để trống" ControlToValidate="txtTenSanPham"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 19px" align="center">
                Danh Mục Sản Phẩm</td>
            <td style="width: 620px; height: 19px">
                <asp:DropDownList ID="dropDanhMucSanPham" runat="server" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 200px" align="center">
                Mô Tả Sản Phẩm</td>
            <td style="width: 620px">
                <CKEditor:CKEditorControl ID="CKEditorControlMoTa" runat="server"></CKEditor:CKEditorControl>
        </tr>
        <tr>
            <td style="width: 200px" align="center">
                Giá Sản Phẩm</td>
            <td style="width: 620px">
                <asp:TextBox ID="txtGia" class="form-control" runat="server" Width="250px" Height="30px" style="margin-top:20px; font-size:15px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Giá sản phẩm không để trống" ControlToValidate="txtGia">Giá sản phẩm không để trống</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 22px" align="center">
                Hình Sản Phẩm</td>
            <td style="width: 620px; height: 22px">
                <asp:FileUpload ID="fileuploadHinhSanPham" runat="server" Width="297px" /></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 24px;">
            </td>
            <td style="width: 620px; height: 24px;">
                <asp:Button class="btn btn-outline-primary" type="submit" style ="margin-top:20px; margin-right:100px; font-size:15px" ID="btnCapNhat" runat="server" Text="Cập nhật" OnClick="btnCapNhat_Click" />
                <asp:Button class="btn btn-outline-primary" type="submit" style ="margin-top:20px; font-size:15px" ID="BtnBoQua" runat="server" Text="Bỏ qua" OnClick="BtnBoQua_Click" /></td>
        </tr>
    </table>
</asp:Content>
