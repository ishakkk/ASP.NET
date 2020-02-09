using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if(Page.IsPostBack==false)
            {
                SqlCommand cmd = new SqlCommand("Select *From Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1",id);
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    SqlCommand komut = new SqlCommand("Select *From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/"+FileUpload1.FileName));
            SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3 ,Kategoriid=@p4 ,YemekResim=@p6 where Yemekid=@p5",bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1",TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2",TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p6","~/resimler/"+FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@p5",id);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}