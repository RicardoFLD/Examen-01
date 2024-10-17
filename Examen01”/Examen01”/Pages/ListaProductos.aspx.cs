using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Examen01_.Data;

namespace Examen01_.Pages
{
    public partial class ListaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PV_Examen01Entities pV_Examen01Entities = new PV_Examen01Entities();

            gvProductos.DataSource = pV_Examen01Entities.Producto ;
            gvProductos.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/CrearProducto.aspx");

        }
    }
}