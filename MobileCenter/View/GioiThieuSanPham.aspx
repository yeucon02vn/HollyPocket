﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Home.Master" AutoEventWireup="true" CodeBehind="GioiThieuSanPham.aspx.cs" Inherits="MobileCenter.View.GioiThieuSanPham" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:TextBox ID="textSearch" runat="server" CssClass="txtSearch" Height="25px"></asp:TextBox><asp:ImageButton ID="ImageButtonTim" runat="server" ImageUrl="https://localhost:44375/Admins/View/images/tim1.jpg" OnClick="ImageButtonTim_Click" Height="26px" ImageAlign="AbsMiddle" /><br />
    <p><asp:Label ID="lblketqua" runat="server" Font-Bold="True" ForeColor="#400000"></asp:Label></p>
    <div><asp:DataList ID="dtlSanPham" runat="server" RepeatColumns="3" Width="530px" CaptionAlign="Top" HorizontalAlign="Center">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="1px"
                Width="170px" Height="250px">
            <table cellpadding="0" cellspacing="0" style="width:170px">
                <tr>
                    <td style="width: 175px; height: 125px; text-align: center;" align="center">
                        <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl='<%# Eval("IdHinhSanPham","HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' Width="100px" /></td>
                </tr>
                <tr>
                    <td style="width: 175px; height: 22px;" align="center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="True" ForeColor="#330000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 175px" align="center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaSanPham", "{0:##,###,###} VND") %>' ForeColor="#330000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 175px; text-align: center;" align="center">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("IdSanPham","ChiTietSanPham.aspx?IdSanpham={0}") %>' ImageUrl="https://localhost:44375/Admins/View/images/button_detail.jpg" Width="63px">Chi tiết sản phẩm</asp:HyperLink><asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="https://localhost:44375/Admins/View/images/button_buy.gif" Width="100px" NavigateUrl='<%# Eval("IdSanPham","ThemGioHang.aspx?IDSanpham={0}") %>'>Thêm vào giỏ hàng</asp:HyperLink></td>
                </tr>
            </table>
            </asp:Panel>
        </ItemTemplate>
        
    </asp:DataList>
    </div>
    <cc1:CollectionPager ID="CollectionPagerPhanTrang" runat="server" HideOnSinglePage="True" IgnoreQueryString="False" PagingMode="QueryString" ResultsLocation="None" ShowLabel="True" ShowPageNumbers="True" UseSlider="True">
    </cc1:CollectionPager> 
</asp:Content>
