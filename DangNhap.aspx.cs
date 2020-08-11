using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        DataTable logIn = sql.queryToDataTable("SELECT * FROM KHACHHANG WHERE (USERNAME = '" + txtEmailAndUsername.Text +"' OR EMAIL ='" + txtEmailAndUsername.Text +"') AND MATKHAU = '"+ txtPassword.Text +"'");
        if (logIn.Rows.Count == 1)
        {
            Session["TenKH"] = logIn.Rows[0]["HOTEN"];
            Session["username"] = logIn.Rows[0]["USERNAME"];
            Response.Redirect("TrangChu.aspx");
        }
        else
        {
            lbThongBao.Text = "Thông tin đăng nhập sai !!!";
        }
    }
}