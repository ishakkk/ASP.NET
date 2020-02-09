using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1 ", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    TxtAd.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    TxtIcerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Tbl_Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where yorumid=@p3",bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1",TxtIcerik.Text);
            cmd.Parameters.AddWithValue("@p2","true");
            cmd.Parameters.AddWithValue("@p3",id);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}