﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Home.Master" AutoEventWireup="true" CodeBehind="SanPhamTheoDanhMuc.aspx.cs" Inherits="MobileCenter.View.SanPhamTheoDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DataList ID="dtlSanPhamDM" runat="server" RepeatColumns="3"  CaptionAlign="Top" HorizontalAlign="Center">
        <ItemTemplate>
            <div  class="card hovereffect" style=" margin: 20px; justify-content:center; align-items: center; padding-left: 50px; padding-right: 50px; ">
                <asp:Panel ID="Panel1" runat="server" BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="0.1px"
                Width="170px" Height="250px" box-shadow="5px">
            <table cellpadding="0" cellspacing="0" style="display: flex; justify-content: center; align-items: center; "> 
                <tr>
                    <td style=" text-align: center; padding-top: 10px; padding-left: 100px; " align="center">
                        <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl='<%# Eval("IdHinhSanPham","HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' Width="100px" /></td>
                </tr>
                <tr>
                    <td style="padding-top: 10px;" align="center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="True" ForeColor="#2c2d33"></asp:Label></td>
                </tr>
                <tr>
                    <td style=" padding-top: 10px; font-size: 15px" align="center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaSanPham", "{0:##,###,###} VND") %>' ForeColor="#0275d8"></asp:Label></td>
                </tr>
                <tr>
                    <td style="text-align: center; display: flex;" align="center">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("IdSanPham","ChiTietSanPham.aspx?IdSanpham={0}") %>'  ><button type="button" class="btn btn-outline-primary" style="margin-right:10px; margin-left: 10px; border-radius: 2.286em; font-size:14px;">Chi tiết đơn hàng</button></asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("IdSanPham","ThemGioHang.aspx?IDSanpham={0}") %>'><button type="button" class="btn btn-outline-primary" style="margin-right:10px; border-radius: 2.286em; font-size:14px;padding-left: 30px; padding-right: 30px;">Mua hàng</button></asp:HyperLink></td>
                </tr>
            </table>
            </asp:Panel>
            </div>
                  
          
        </ItemTemplate>
        
    </asp:DataList>

</asp:Content>
