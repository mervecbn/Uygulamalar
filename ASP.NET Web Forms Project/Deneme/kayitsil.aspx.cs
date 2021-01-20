using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme
{
    public partial class kayitsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"];
                HiddenField1.Value = id;
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
                con.Open();
                SqlCommand komut = new SqlCommand("select * from Features where Id='" + id + "'", con);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = dr[1].ToString() + " " + "Markalı" + " " + dr[2].ToString() + " " + "Model" + " " + dr[5].ToString() + " " + "Plakalı aracı silmek istediğinizden eminmisiniz?";
                }
                dr.Close();
                con.Close();
                komut.Dispose();
                con.Dispose();

            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string con = "Data Source=localhost;Initial Catalog=Deneme;Integrated Security=True";
            SqlConnection baglanti = new SqlConnection(con);
            SqlCommand sorgu = new SqlCommand();
            sorgu.Connection = baglanti;
            baglanti.Open();
            sorgu.CommandText = "DELETE FROM Features WHERE Id='" + HiddenField1.Value + "'";
            sorgu.ExecuteNonQuery();



            Response.Redirect("Anasayfa.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");

        }
    }
}