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

            gvProductos.DataSource = pV_Examen01Entities.Database;
            gvProductos.DataBind();
        }

        private void CargarProductos()
        {
            using (PV_Examen01Entities db = new PV_Examen01Entities())
            {
                var productos = db.Producto.ToList();  
                gvProductos.DataSource = productos;
                gvProductos.DataBind();
            }
        }

        protected void btnNuevoProducto_Click(object sender, EventArgs e)
        {
            // Redirige a la página CrearProducto.aspx
            Response.Redirect("~/Pages/CrearProducto.aspx");
        }
    }



}