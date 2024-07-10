using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace form2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=HEY\\SQLEXPRESS; initial catalog=school; integrated security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into students(name, roll, mobile, email) values ('" + txtName.Text + "','" + TxtRoll.Text + "','" + TxtMobile.Text + "','" + TxtEmail.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            txtName.Text = "";
            TxtRoll.Text = "";
            TxtEmail.Text = "";
            TxtMobile.Text = "";
        }
    }
}
