using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.ServiceModel.Configuration;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

public partial class _Default : System.Web.UI.Page
{

    public string tipomueble = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Hola desde el CodeBehind";
        Label1.BackColor = System.Drawing.Color.Red;

        if (Request.QueryString["Id"] == null)
        {
            tipomueble = "0";
        }
        else
        {
            tipomueble = Request.QueryString["Id"];
        }
        TransformarXML();
    }

    private void TransformarXML()
    {

        //recuperamos las rutas de nuestro XML y XST
        string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/TipoMueble.xml";
        string xsltPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/template.xslt";

        //leer el archivo XML (en la parte de arriba, necesitamos los using de "System.Xml")
        XmlTextReader xmlTextReader = new XmlTextReader(xmlPath);

        //Configuramos las credenciales para resolver recursos externos como xslt
        XmlUrlResolver resolver = new XmlUrlResolver();
        resolver.Credentials = CredentialCache.DefaultCredentials;

        //creamos las configuraciones para poder acceder al Xslt
        //Los parametros "true" son para poder tratar el Xslt como si fuese un documento y  asipoder transformarlo
        XsltSettings settings = new XsltSettings(true, true);

        //leemos los archivos xslt y lo cargamos para su transformacion
        XslCompiledTransform xslt = new XslCompiledTransform();
        xslt.Load(xsltPath, settings, resolver);

        //creamos un StringBuilder para almacenar el resultado de la transformacion
        StringBuilder stringBuilder = new StringBuilder();
        TextWriter tWriter = new StringWriter(stringBuilder);

        //configuramoslos argumentos para la transformacion de Xslt
        XsltArgumentList xsltArgumentList = new XsltArgumentList();
        //pasamos la variabledel tipo mwnu al xslt
        xsltArgumentList.AddParam("TipoMueble", "", tipomueble);

        //transformamos el xml => html usando xslt
        xslt.Transform(xmlTextReader, xsltArgumentList, tWriter);

        //Obtenemos el resultado dea transformacion como una sola cadena
        string resultado = stringBuilder.ToString();

        //Escribimos el resultado como una respuesta HTTP
        Response.Write(resultado);

    }
}
