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
        DataTable cart = RemakeDataTable((DataTable)Session["cart"]);

        dataCart.DataSource = cart;
        dataCart.DataBind();
        lbTongTien.Text = string.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", tinhTongTien(cart));
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
        result.Columns.Add("GIABAN", typeof(int));
        result.Columns.Add("TONGTIEN", typeof(int), "SOLUONG * GIABAN");

        for (int i = 0; i < arr.Rows.Count; i++)
        {
            result.Rows.Add(i+1, arr.Rows[i]["MASANPHAM"], arr.Rows[i]["TENSANPHAM"], arr.Rows[i]["HINHMINHHOA"], arr.Rows[i]["SOLUONG"], arr.Rows[i]["GIABAN"]);
            System.Diagnostics.Debug.WriteLine(arr.Rows[i]["TONGTIEN"]);
        }
        return result;

    }

    private float tinhTongTien(DataTable arr)
    {
        float tongTien = 0;
        for (int i = 0; i < arr.Rows.Count; i++)
        {
            tongTien = tongTien + (int)arr.Rows[i]["TONGTIEN"];
        }

        return tongTien;
    }
}