using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void brnLocalidad_Click(object sender, EventArgs e)
        {
            string nuevaLocalidad = txtLocalidad.Text.Trim();

            // Verificar si la localidad ya existe en el DropDownList
            bool existe = false;
            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.Equals(nuevaLocalidad, StringComparison.OrdinalIgnoreCase))
                {
                    existe = true;
                    break;
                }
            }

            if (existe)
            {
                Label1.Text = "No se pueden ingresar localidades repetidas";
                txtLocalidad.Text = "";
            }
            else
            {
                ddlLocalidades.Items.Add(nuevaLocalidad);
                Label1.Text = string.Empty;
                txtLocalidad.Text = "";
            }
            


        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblBienvenido.Text = "Bienvenido " + txtUsuario.Text;
        }

        protected void cvCP_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio1b.aspx");
        }
    }
}