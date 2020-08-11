using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giohang : System.Web.UI.Page
{
    ConnectDB sql = new ConnectDB();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["username"] == null)
        {
            viewLogin.ActiveViewIndex = 0;
        }
        else {
            viewLogin.ActiveViewIndex = 1;
            DataTable data = sql.queryToDataTable("SELECT * FROM KHACHHANG WHERE USERNAME = '" + Session["username"] + "'");
            txtUserEmail.Text = (String)data.Rows[0]["EMAIL"];
            txtUserHoTen.Text = (String)data.Rows[0]["HOTEN"];
            txtUserSDT.Text = (String)data.Rows[0]["SDT"];
        }
        

        if (!IsPostBack)
        {
            if (Session["cart"] != null)
            {
                DataTable cart = (DataTable)Session["cart"];
                DataBind(cart);
                lbThanhTien.Text = "Thành Tiền";
                lbTongTien.Text = string.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", tinhTongTien(cart));

            }
        }



    }

    private void DataBind(DataTable cart)
    {
        dataCart.DataSource = RemakeDataTable(cart);
        dataCart.DataBind();
        lbThanhTien.Text = "Thành Tiền";
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

    private DataTable UnRemakeDataTable(DataTable arr)
    {
        DataTable result = new DataTable();
        result.Columns.Clear();
        result.Rows.Clear();
        result.Columns.Add("MASANPHAM", typeof(String));
        result.Columns.Add("TENSANPHAM", typeof(String));
        result.Columns.Add("HINHMINHHOA", typeof(String));
        result.Columns.Add("SOLUONG", typeof(int));
        result.Columns.Add("GIABAN", typeof(int));
        result.Columns.Add("TONGTIEN", typeof(int), "SOLUONG * GIABAN");

        for (int i = 0; i < arr.Rows.Count; i++)
        {
            result.Rows.Add(arr.Rows[i]["MASANPHAM"], arr.Rows[i]["TENSANPHAM"], arr.Rows[i]["HINHMINHHOA"], arr.Rows[i]["SOLUONG"], arr.Rows[i]["GIABAN"]);
        }
        return result;
    }

    private float tinhTongTien(DataTable arr)
    {
        float tongTien = 0;
        for (int i = 0; i < arr.Rows.Count; i++)
        {
            tongTien = tongTien + float.Parse((String)arr.Rows[i]["TONGTIEN"]);
        }

        return tongTien;
    }

    private int Contain(DataTable arr, String MASANPHAM)
    {
        for (int i = 0; i < arr.Rows.Count; i++)
        {
            if (arr.Rows[i]["MASANPHAM"].Equals(MASANPHAM))
                return i;
        }
        return -1;
    }

    protected void dataCart_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Tang")
        {
            String id = ((Label)e.Item.FindControl("lbMSP")).Text;
            DataTable cart = (DataTable)Session["cart"];
            int index = Contain(cart, id);
            cart.Rows[index]["SOLUONG"] = (int)cart.Rows[index]["SOLUONG"] + 1;

            Session["cart"] = cart;
            DataBind(cart);
        }

        if (e.CommandName.ToString() == "Giam")
        {
            String id = ((Label)e.Item.FindControl("lbMSP")).Text;
            DataTable cart = (DataTable)Session["cart"];
            int index = Contain(cart, id);
            if((int)cart.Rows[index]["SOLUONG"] != 1)
                cart.Rows[index]["SOLUONG"] = (int)cart.Rows[index]["SOLUONG"] - 1;
            else
                cart.Rows[index].Delete();

            Session["cart"] = cart;
            DataBind(cart);
        }
    }


    protected void btnMua_Click(object sender, EventArgs e)
    {
        String username = (String)Session["username"];
        String now = DateTime.Now.ToString();

        String sqlTaoMaHoaDon = "INSERT INTO HOADON(username,ngaytao) VALUES ('" + username + "','" + now + "')";
        bool result = sql.queryToExec(sqlTaoMaHoaDon);
        if (result)
        {
            int maHD = (int)sql.queryToDataTable("SELECT * FROM HOADON WHERE username = '" + username + "' AND ngaytao = '" + now + "'").Rows[0]["MAHD"];
            DataTable cart = (DataTable)Session["cart"];
            for (int i = 0; i < cart.Rows.Count; i++)
            {
                sql.queryToExec("INSERT INTO CHITIETHOADON VALUES("+maHD+",'"+cart.Rows[i]["MASANPHAM"]+"',"+cart.Rows[i]["SOLUONG"]+")");
            }
            Session.Remove("cart");
            Response.Redirect(Request.RawUrl);  
        }

    }
}