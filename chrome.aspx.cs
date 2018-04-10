using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using overrideSocial;

namespace fnpix
{
    public partial class chrome : System.Web.UI.Page
    {
        private overrideSocial.events _events = new overrideSocial.events();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddl_event.DataSource = _events.select_list(true);
                ddl_event.DataValueField = "id";
                ddl_event.DataTextField = "title";
                ddl_event.DataBind();

                ListItem i = new ListItem("Select Event", "");

                ddl_event.Items.Insert(0, i);

                Int32 x = 0;

                while (x < 30)
                {
                    ListItem i2 = new ListItem(x + " seconds", x.ToString());

                    ddl_delay.Items.Add(i2);

                    x++;
                }
            }
        }

        protected void display(object sender, EventArgs e)
        {
            // build the URL and redirect
            //string url = "http://fnpix.fntech.com/displays/" + ddl_effect.SelectedValue + "/" + ddl_event.SelectedValue + "/" + ddl_delay.SelectedValue;
            string url = "displays/" + ddl_effect.SelectedValue + "/" + ddl_event.SelectedValue + "/" + ddl_delay.SelectedValue; 

            Response.Redirect(url);
        }
    }
}