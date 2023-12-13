using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    String Today;
    protected void Page_Load(object sender, EventArgs e)
    {
        Today = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //try
        //{

            cn.Open();
            cmd = new SqlCommand("Proc_register", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@mode", SqlDbType.VarChar, 20));
            cmd.Parameters.Add("@Fname", txtfname.Value);
            cmd.Parameters.Add("@Lname", txtlname.Value);
            cmd.Parameters.Add("@Username", Username.Value);
            cmd.Parameters.Add("@Email", Email.Value);
            cmd.Parameters.Add("@Add1", Add1.Value);
            cmd.Parameters.Add("@Add2", Add2.Value);
            cmd.Parameters.Add("@Mobile", Mobile.Value);
            cmd.Parameters.Add("@Gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.Add("@Password", Password.Value);
            cmd.Parameters.Add("@Confpassword", Conformpwd.Value);
            cmd.Parameters.Add("@Subdate", Today);
            cmd.Parameters["@mode"].Value = "Adduser";
            cmd.ExecuteNonQuery();
            string msg = "<script>alert('Registered Sucessfully')</script>";
            Response.Write(msg);
            cn.Close();
       // }
        //catch(Exception ex)
        //{

        //}
        //finally
        //{
        //    cn.Close();
        //} 
    }
     protected void Button2_Click(object sender, EventArgs e)
    {
        txtfname.Value = "";
        txtlname.Value = "";
        Username.Value = "";
        Email.Value = "";
        Add1.Value = "";
        Add2.Value ="";
        Mobile.Value = "";
        RadioButtonList1.SelectedIndex = 0;
        Password.Value = "";
        Conformpwd.Value = "";

    }
}

