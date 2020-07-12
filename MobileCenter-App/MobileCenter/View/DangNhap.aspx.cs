﻿using MobileCenter.Admins.View;
using MobileCenter.App_User;
using MobileCenter.Models.BUS;
using MobileCenter.Models.DTO;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileCenter.View
{
    public partial class DangNhap : NguoiDungHienTai
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            textUsername.Focus();
            ((Home)this.Master).isVisible = false;
            string a = Request.Cookies["ReturnURL"].Value;
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                NguoiDungDTO nguoiDung = new NguoiDungDTO();
                NguoiDungBUS nguoiDungBUS = new NguoiDungBUS();
                nguoiDung.TenDangNhap = textUsername.Value;
                nguoiDung.MatKhau = textMatKhau.Value;
                nguoiDungBUS._nguoiDung = nguoiDung;
                nguoiDungBUS.LoginWithUser();
                //labelMessage.Text = "Đăng nhập thành công!";

                if (nguoiDungBUS.IsInvalid)
                {
                    base._NguoiDungHienTai = nguoiDungBUS._nguoiDung;
                    Label lblWelcome = (Label)Master.FindControl("lblchao");
                    lblWelcome.Text = "Xin chào, " + base._NguoiDungHienTai.HoTen;
                    if (Request.Cookies["ReturnURL"].Value == "add-bill")
                    {
                        Response.Redirect(Request.Cookies["ReturnURL"].Value);                     
                    }
                    else
                    {
                        Response.Redirect("~/customer/invoice");
                    }
                    
                }
                else
                {
                    //labelMessage.Text = "Đăng nhập không thành công!";
                }   
            }
        }
    }
}