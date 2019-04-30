using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inventory
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference.Restaurant restaurant = new ServiceReference.Restaurant
            {

                DName = txtName.Text,
                DCost = float.Parse(txtPrice.Text)
                // DateOfBirth = dateTimePicker1.Value,
                
            };

            ServiceReference.RestaurantWCFServiceClient client = new ServiceReference.RestaurantWCFServiceClient("NetTcpBinding_IRestaurantWCFService");
            client.insertmenu(restaurant);
            Label1.Text = "Dish Name: " + restaurant.DName + "</br> Dish Price: " + restaurant.DCost + "</br> updated";

            txtName.Text = " ";
            txtPrice.Text = " ";
            
        }
    }
}