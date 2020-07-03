﻿using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MobileCenter.Models.BUS;
using MobileCenter.Models.DTO;

namespace MobileCenter.Admins.View
{
    public partial class DangNhapAdmin : System.Web.UI.Page
    {
        //string name = ((My)this.Master).strName;

        protected void Page_Load(object sender, EventArgs e)
        {
            userName.Focus();
        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                NguoiDungDTO nguoidung = new NguoiDungDTO();
                NguoiDungBUS xulydangnhapadmin = new NguoiDungBUS();
                nguoidung.TenDangNhap = userName.Value;
                nguoidung.MatKhau = passWord.Value;
                xulydangnhapadmin._nguoiDung = nguoidung;
                xulydangnhapadmin.LoginWithAdmin();
                if (xulydangnhapadmin.IsAuthenticated)
                {
                    FormsAuthentication.SetAuthCookie(nguoidung.TenDangNhap, false);
                    FormsAuthentication.RedirectFromLoginPage(nguoidung.TenDangNhap, false);
                    Response.Redirect("~/admin/sanpham");
                }
            }
        }
    }
}