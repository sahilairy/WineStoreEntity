using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WineStoreEntity
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //create the object of the isntance class
            Database.SqlClass sql = new Database.SqlClass();
            //pass the qury to write 
            String sqlQuery = "select * from Admin_Login where User_Name='"+txtName.Text+"' and User_Password='"+TxtPassword.Text+"'";
            DataTable tbl = new DataTable();
            tbl = sql.LoginMatch(sqlQuery);
            //check if the user name or paswrd is matched 
            if (tbl.Rows.Count > 0)
            {
                Response.Redirect("AdminPannel.aspx");
            }
            else {
                out_put.InnerHtml = "<script> alert('Invalid User Name or Password ');</script>";
            }

        }
    }
}