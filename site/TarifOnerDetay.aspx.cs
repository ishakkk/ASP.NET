using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
          
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select *from Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();


                SqlCommand cmd2 = new SqlCommand("Select *from Tbl_Kategoriler",bgl.baglanti());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where tarifid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand cmd2 = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();


            SqlCommand cmd3 = new SqlCommand("Update tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1",bgl.baglanti());
            cmd3.Parameters.AddWithValue("@p1",id);
            cmd3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}