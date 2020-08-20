using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WineStoreEntity
{
    public partial class TeamMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String record = "<h1 align='center'> Our Team Members</h1>";
            Database.SqlClass sql = new Database.SqlClass();
            //pass the qury to write 
            String sqlQuery = "select * from Employee_Table";
            DataTable tbl = new DataTable();
            tbl = sql.LoginMatch(sqlQuery);
            //check if the user name or paswrd is matched 
            if (tbl.Rows.Count > 0)
            {
                for (int y = 0; y < tbl.Rows.Count; y++) {
                    record += "<div class='col-md-4'><img src='https://png.pngtree.com/element_our/png/20181206/users-vector-icon-png_260862.jpg' class='img img-thumbnail'><br/><h1 class='btn btn-warning'>" + tbl.Rows[y]["Name"] + "</h1> <hr/> <h3 class='btn btn-danger'>" + tbl.Rows[y]["Designation"] + "</h3></div>";
                }
                Data.InnerHtml = record;
            }
            else
            {
                Data.InnerHtml = "Table is Empty ";
            }

        }
    }
}