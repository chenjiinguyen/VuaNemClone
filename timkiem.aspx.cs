using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class timkiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        if (Request["q"] != null)
        {
            String q = Request["q"];
            String strSQL1 = "SELECT * FROM SANPHAM WHERE TENSANPHAM LIKE N'%" + q + "%'";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL1);
            dataSanPham.DataBind();

            String strSQL2 = "SELECT COUNT(*) AS NUM, N'" + q + "' AS KEYWORD FROM SANPHAM WHERE TENSANPHAM LIKE N'%" + q + "%'";
            dataSearch.DataSource = sql.queryToDataTable(strSQL2);
            dataSearch.DataBind();
        }
        else
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}