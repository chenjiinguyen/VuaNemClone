using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for ConnectDB
/// </summary>
public class ConnectDB
{
    SqlConnection conn = null;

    public ConnectDB()
    {
        String connectSQL = ConfigurationManager.ConnectionStrings["qlNem"].ConnectionString;
        this.conn = new SqlConnection(connectSQL);
    }

    public DataTable queryToDataTable(String strQuery)
    {
        DataTable result = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(strQuery, conn);
        da.Fill(result);
        return result;
    }

    public bool queryToExec(String strQuery)
    {
        try
        {
            SqlCommand cmd = new SqlCommand(strQuery, conn);
            conn.Open();
            int a = cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
            return Convert.ToBoolean(a);
        }
        catch (Exception ex)
        {
            return false;
        }
    }


}