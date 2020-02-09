using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            Panel2.Visible = false;
            SqlCommand cmd = new SqlCommand("select *from tbl_tarifler where TarifDurum=0", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();

            SqlCommand cmd2 = new SqlCommand("Select *from tbl_tarifler where TarifDurum=1", bgl.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList4.DataSource = dr2;
            DataList4.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Panel4.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Panel2.Visible = false;
        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}