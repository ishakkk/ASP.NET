using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace site
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            cmd.Parameters.AddWithValue("@t1",TxtTarifAd.Text);
            cmd.Parameters.AddWithValue("@t2",TxtMalzemeler.Text);
            cmd.Parameters.AddWithValue("@t3",TxtYapilis.Text);
            cmd.Parameters.AddWithValue("@t4",FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@t5",TxtTarifOneren.Text);
            cmd.Parameters.AddWithValue("@t6 ", TxtMailAdresi.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");

        }
    }
}