using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chitietsanpham : System.Web.UI.Page
{
    ConnectDB sql = new ConnectDB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            if (Request["id"].Length > 0 && Request["id"] != null)
            {
                String id = Request["id"];
                String strSQL = "SELECT * FROM DBO.GET_NEM('" + id + "')";
                dataSanPham.DataSource = sql.queryToDataTable(strSQL);
                dataSanPham.DataBind();
            }
        }
        
        
        
        
    }
    protected void btnMua_Command(object sender, CommandEventArgs e)
    {
        String id = Request["id"];
        String strSQL = "SELECT * FROM DBO.GET_NEM('" + id + "')";
        DataTable sp = sql.queryToDataTable(strSQL);

        var btn = (Button)  sender;
        var item   = (DataListItem) btn.NamingContainer;
        String imgUrl = ((Image)item.FindControl("imgHinhMinhHoa")).ImageUrl;
        int intSoLuong = Int16.Parse(((TextBox)item.FindControl("txtSoLuong")).Text);
        if (Session["cart"] == null)
        {
            DataTable cart = new DataTable();
            cart.Columns.Clear();
            cart.Rows.Clear();

            cart.Columns.Add("MASANPHAM", typeof(String));
            cart.Columns.Add("TENSANPHAM", typeof(String));
            cart.Columns.Add("HINHMINHHOA", typeof(String));
            cart.Columns.Add("SOLUONG", typeof(int));
            cart.Columns.Add("GIABAN", typeof(float));
            cart.Columns.Add("TONGTIEN", typeof(String), "SOLUONG * GIABAN");

            cart.Rows.Add(id, sp.Rows[0]["TENSANPHAM"], imgUrl, intSoLuong, sp.Rows[0]["GIA"]);

            Session["cart"] = cart;
        }
        else
        {
            DataTable cart = (DataTable)Session["cart"];
            int index = Contain(cart, id);
            if (index == -1)
            {
                cart.Rows.Add(id, sp.Rows[0]["TENSANPHAM"], imgUrl, intSoLuong, sp.Rows[0]["GIA"]);
            }
            else
            {
                cart.Rows[index]["SOLUONG"] = (int)cart.Rows[index]["SOLUONG"] + intSoLuong;
            }

            Session["cart"] = cart;
        }
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
}