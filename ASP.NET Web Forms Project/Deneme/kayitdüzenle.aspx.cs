using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme
{
    public partial class kayitdüzenle : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var id = Request.QueryString["id"];
                HiddenField1.Value = id;
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
                con.Open();
                SqlCommand komut = new SqlCommand("select * from Features where Id='" + id + "'", con);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtModel.Text = dr[1].ToString();
                    txtMarka.Text = dr[2].ToString();
                    txtYıl.Text = dr[3].ToString();
                    txtVites.Text = dr[4].ToString();
                    txtPlaka.Text = dr[5].ToString();

                }
                dr.Close();
                con.Close();
                komut.Dispose();
                con.Dispose();

            }





        }

        protected void Kaydet(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection((CS)))
            {

                string sqlQuery = "Update Features set ModelAdı=@ModelAdı, MarkaAdı=@MarkaAdı, Yıl=@Yıl, Vites=@Vites, Plaka=@Plaka where Id=@Id";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);

                cmd.Parameters.AddWithValue("@ModelAdı", txtModel.Text);
                cmd.Parameters.AddWithValue("@MarkaAdı", txtMarka.Text);
                cmd.Parameters.AddWithValue("@Yıl", txtYıl.Text);
                cmd.Parameters.AddWithValue("@Vites", txtVites.Text);
                cmd.Parameters.AddWithValue("@Plaka", txtPlaka.Text);
                cmd.Parameters.AddWithValue("@Id", HiddenField1.Value);
                con.Open();

                cmd.ExecuteNonQuery();
                con.Close();

                txtModel.Text = "";
                txtMarka.Text = "";
                txtYıl.Text = "";
                txtVites.Text = "";
                txtPlaka.Text = "";
                Response.Redirect("Anasayfa.aspx");
            }


        }
    }
}