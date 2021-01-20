using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=Deneme;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("select* from Features", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }


        }


        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)

        {
            if (e.CommandName == "Duzenle")
            {
                var id = e.CommandArgument;
                Response.Redirect("/kayitdüzenle.aspx?id=" + id);
            }
            if (e.CommandName == "Sil")
            {
                var id = e.CommandArgument;
                Response.Redirect("/kayitsil.aspx?id=" + id);
            }

            Response.Redirect("yenikayit.aspx");
        }
    }
}