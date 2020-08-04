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
        String strSQL = "SELECT * FROM DBO.GET_LIST_NEM()";
        dataLoai.DataSource = sql.queryToDataTable(strSQL);
        dataLoai.DataBind();


        strSQL = "SELECT * FROM NEM_DOCUNG";
        rbDoThoaiMai.DataSource = sql.queryToDataTable(strSQL);
        rbDoThoaiMai.DataTextField = "TENDOCUNG";
        rbDoThoaiMai.DataValueField = "MADOCUNG";
        rbDoThoaiMai.DataBind();
    }
}