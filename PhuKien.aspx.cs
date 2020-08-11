using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhuKien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        if (Request["th"] != null)
        {
            String th = Request["th"];
            String strSQL = "SELECT * FROM SANPHAM WHERE MALOAI = 'PK' AND MATHUONGHIEU = '" + th + "'";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL);
            dataSanPham.DataBind();
        }
        else
        {
            String strSQL = "SELECT * FROM SANPHAM WHERE MALOAI = 'PK'  ORDER BY MALOAI ASC";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL);
            dataSanPham.DataBind();
        }


        String strSQL2 = "SELECT * FROM THUONGHIEU WHERE MALOAI = 'PK'  ORDER BY TENTHUONGHIEU ASC";
        dataThuongHieu.DataSource = sql.queryToDataTable(strSQL2);
        dataThuongHieu.DataBind();
    }
}