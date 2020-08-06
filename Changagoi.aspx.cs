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
        if (Request["th"] != null)
        {
            String th = Request["th"];
            String strSQL = "SELECT * FROM SANPHAM WHERE MALOAI = 'CGG' AND MATHUONGHIEU = '"+ th +"'";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL);
            dataSanPham.DataBind();
        }
        else
        {
            String strSQL = "SELECT * FROM SANPHAM WHERE MALOAI = 'CGG'";
            dataSanPham.DataSource = sql.queryToDataTable(strSQL);
            dataSanPham.DataBind();
        }
        

        String strSQL2 = "SELECT * FROM THUONGHIEU WHERE MALOAI = 'CGG'";
        dataThuongHieu.DataSource = sql.queryToDataTable(strSQL2);
        dataThuongHieu.DataBind();
    }


    
       
}