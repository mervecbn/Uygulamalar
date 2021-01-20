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
    public partial class yenikayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("insert into Features values(@ModelAdı,@MarkaAdı,@Yıl,@Vites,@Plaka)", con);
            komut.Parameters.Add("@ModelAdı", SqlDbType.NVarChar).Value = txtModel.Text;
            komut.Parameters.Add("@MarkaAdı", SqlDbType.NVarChar).Value = txtMarka.Text;
            komut.Parameters.Add("@Yıl", SqlDbType.Int).Value = txtYıl.Text;
            komut.Parameters.Add("@Vites", SqlDbType.NVarChar).Value = txtVites.Text;
            komut.Parameters.Add("@Plaka", SqlDbType.NVarChar).Value = txtPlaka.Text;
            komut.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            Response.Redirect("Anasayfa.aspx");
        }
    }
}