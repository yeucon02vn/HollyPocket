﻿using MobileCenter.App_User;
using MobileCenter.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileCenter.View
{
    public partial class DonHangKhachHang : NguoiDungHienTai
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ((Home)this.Master).isVisible = false;
                if (base._NguoiDungHienTai == null)
                    ((Home)this.Master).isLogIn = true;
                else
                    ((Home)this.Master).isLogIn = false;

                Label lblWelcome = (Label)Master.FindControl("lblchao");
                //lblWelcome.Text = "Xin chào, " + base._NguoiDungHienTai.HoTen;
                HienThiDonHang();
            }
        }

        private void HienThiDonHang()
        {
            DonHangBUS donHangBUS = new DonHangBUS();
            donHangBUS._nguoiDung = _NguoiDungHienTai;

            try
            {
                donHangBUS.SelectByIdNguoiDung();
            }
            catch
            {
                Response.Redirect("Trangloi.aspx");
            }
            gridviewOrders.DataSource = donHangBUS.KetQua;
            gridviewOrders.DataBind();
        }
        protected void ImageButtontrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("~");

        }

        protected void gridviewOrders_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewOrders.PageIndex = e.NewPageIndex;
            HienThiDonHang();
        }
    }
}