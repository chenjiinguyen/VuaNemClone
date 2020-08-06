using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        if (Request["th"] != null)
        {
            String th = Request["th"];
            String strSQL = "SELECT * FROM DBO.GET_NEM_BY_TH('" + th + "')";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL);
            dataSanPham.DataBind();
        }else
        {
            String strSQL1 = "SELECT * FROM DBO.GET_LIST_NEM()";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL1);
            dataSanPham.DataBind();
        }
        
        


        String strSQL2 = "SELECT * FROM THUONGHIEU WHERE MALOAI = 'N'";
        dataThuongHieu.DataSource = sql.queryToDataTable(strSQL2);
        dataThuongHieu.DataBind();
    }
}