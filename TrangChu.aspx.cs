using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class trangchu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        String strSQL = "SELECT TOP 8 * FROM SANPHAM ORDER BY MASANPHAM ASC";
        dataSanPham.DataSource = sql.queryToDataTable(strSQL);
        dataSanPham.DataBind();
    }
}