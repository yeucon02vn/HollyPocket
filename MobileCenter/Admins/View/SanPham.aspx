﻿<%@ Page Language="C#" MasterPageFile="~/Admins/View/Admin.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="MobileCenter.Admins.View.SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="dtlSanpham" runat="server" RepeatColumns="3" CellPadding="0"  >
        <ItemTemplate>   
                <div class="card hovereffect" style=" margin:10px; justify-content:center; align-items: center;">
                    <asp:Image Style="font-size: 20px; align-items: center" ID="Image2"  runat="server" Height="130px"
                                    ImageUrl='<%# Eval("IdHinhSanPham","~/View/HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' />
                    <div class="card-body" style="text-align:center;">
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#2c2d33" NavigateUrl='<%# Eval("IdSanPham","SuaSanPham.aspx?IdSanPham={0}") %>'
                                Text='<%# Eval("TenSanPham") %>'></asp:HyperLink>
                            <br />
                            <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="#0063d1" Text='<%# Eval("GiaSanPham","{0:###,###,###} VND") %>'></asp:Label>
                            <%--<asp:Label ID="Label4" runat="server" Text='<%# Eval("MoTaSanPham") %>'></asp:Label>--%>
                    </div>
                </div>   
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


