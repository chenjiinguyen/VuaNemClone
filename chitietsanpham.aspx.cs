using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chitietsanpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB();
        if (Request["id"].Length > 0 && Request["id"] != null)
        {
            String id = Request["id"];
            String strSQL = "SELECT * FROM DBO.GET_NEM('" + id + "')";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL);
            dataSanPham.DataBind();
        }
        else
        {

        }
        
        
    }
}