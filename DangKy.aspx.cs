using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MViewTrangDangKy.ActiveViewIndex = 0;
    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        String SQLstr = "INSERT INTO KHACHHANG(USERNAME, HOTEN, EMAIL, MATKHAU, SDT) VALUES ('" + txtTenDN.Text + "', N'" + txtHoTen.Text + "', '" + txtEmail.Text + "', '" + txtMK.Text + "', '" + txtSDT.Text + "')";
        if(sql.queryToExec(SQLstr))
        {
            Session["TenKH"] = txtHoTen.Text;
            Session["username"] = txtTenDN.Text;
            Response.Redirect("TrangChu.aspx");
        }
        
    }
}

