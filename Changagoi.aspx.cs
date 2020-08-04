using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changagoi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ConnectDB sql = new ConnectDB(); 
        String strSQL = "SELECT * FROM DBO.GET_LIST_NEM()";
        dataLoai.DataSource = sql.queryToDataTable(strSQL);
        dataLoai.DataBind();
    }
}