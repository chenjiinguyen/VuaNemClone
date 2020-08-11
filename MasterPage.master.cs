using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        int soLuongDonHang = 0;
        if (Session["cart"] != null)
        {
            DataTable cart = (DataTable)Session["cart"];
            soLuongDonHang = cart.Rows.Count;
        }
        viewLogin.ActiveViewIndex = 0;
        if (Session["username"] != null)
        {
            viewLogin.ActiveViewIndex = 1;
            lbTenKH.Text = (String)Session["TenKH"];
        }

        lbSoLuongDonHang.Text = soLuongDonHang.ToString();

        dataNavPK.DataSource = sql.queryToDataTable("SELECT * FROM THUONGHIEU WHERE MALOAI = 'PK'  ORDER BY TENTHUONGHIEU ASC");
        dataNavPK.DataBind();

        dataNavGiuong.DataSource = sql.queryToDataTable("SELECT * FROM THUONGHIEU WHERE MALOAI = 'G'  ORDER BY TENTHUONGHIEU ASC");
        dataNavGiuong.DataBind();

        dataNavNem.DataSource = sql.queryToDataTable("SELECT * FROM THUONGHIEU WHERE MALOAI = 'N'  ORDER BY TENTHUONGHIEU ASC");
        dataNavNem.DataBind();

        dataNavCGG.DataSource = sql.queryToDataTable("SELECT * FROM THUONGHIEU WHERE MALOAI = 'CGG'  ORDER BY TENTHUONGHIEU ASC");
        dataNavCGG.DataBind();


    }
}
