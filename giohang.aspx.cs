using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable cart = (DataTable)Session["cart"];

        dataCart.DataSource = RemakeDataTable(cart);
        dataCart.DataBind();
    }

    private DataTable RemakeDataTable(DataTable arr)
    {
        DataTable result = new DataTable();
        result.Columns.Clear();
        result.Rows.Clear();
        result.Columns.Add("STT", typeof(int));
        result.Columns.Add("MASANPHAM", typeof(String));
        result.Columns.Add("TENSANPHAM", typeof(String));
        result.Columns.Add("HINHMINHHOA", typeof(String));
        result.Columns.Add("SOLUONG", typeof(int));
        result.Columns.Add("GIABAN", typeof(float));
        result.Columns.Add("TONGTIEN", typeof(String), "SOLUONG * GIABAN");

        for (int i = 0; i < arr.Rows.Count; i++)
        {
            result.Rows.Add(i, arr.Rows[i]["MASANPHAM"], arr.Rows[i]["TENSANPHAM"], arr.Rows[i]["HINHMINHHOA"], arr.Rows[i]["SOLUONG"], arr.Rows[i]["GIABAN"]);
        }
        return result;
    }
}