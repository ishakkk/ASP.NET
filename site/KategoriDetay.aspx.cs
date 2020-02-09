using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class KullaniciDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand cmd = new SqlCommand("Select *from Tbl_Yemekler where Kategoriid=@p1", snf.baglanti());
            cmd.Parameters.AddWithValue("@p1",kategoriid);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}