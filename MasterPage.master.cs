using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int soLuongDonHang = 0;
            if (Session["cart"] != null)
            {
                DataTable cart = (DataTable)Session["cart"];
                soLuongDonHang = cart.Rows.Count;
            }

            lbSoLuongDonHang.Text = soLuongDonHang.ToString();
        }

    }
}
