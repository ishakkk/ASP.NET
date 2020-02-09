using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];

                SqlCommand komut = new SqlCommand("Select *From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            SqlCommand cmd = new SqlCommand("Select *From Tbl_Yemekler",bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            if (islem == "sil")
            {
                SqlCommand cmd2 = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());
                cmd2.Parameters.AddWithValue("@p1",id);
                cmd2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

           
          
        
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("işlem tamam");

            //Kategori sayısını arttırma

            SqlCommand cmd = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1",bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}