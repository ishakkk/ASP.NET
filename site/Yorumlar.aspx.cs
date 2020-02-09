using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class Yorumlar : System.Web.UI.Page

    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel5.Visible = false;
            SqlCommand cmd = new SqlCommand("Select *from Tbl_Yorumlar where YorumOnay=1",bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();

            SqlCommand cmd2 = new SqlCommand("Select *from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList5.DataSource = dr2;
            DataList5.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}