using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WineStoreEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Database.SqlClass sql = new Database.SqlClass();
            String sqlQuery = "insert into Contact_Data (Name,Email,Phone,Message) values ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtMsg.Text + "')";
            sql.contactRecord(sqlQuery);
            out_put.InnerHtml = "<Script> alert('thnaks for the Feed Back ');</script>";
        }
    }
}