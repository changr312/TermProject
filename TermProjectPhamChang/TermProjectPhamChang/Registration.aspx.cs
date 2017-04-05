using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraries;
using Utilities;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

namespace TermProjectPhamChang
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Session["login"] = "login";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string name = txtName.Text;
            string password = txtPassword.Text;

            Person person = new Person();

            person.EMAIL = email;
            person.PNAME = name;
            person.Password = password;

            DBConnect connection = new DBConnect();
            SqlCommand objcommand = new SqlCommand();
            DataSet ds = new DataSet();

            objcommand.CommandType = CommandType.StoredProcedure;
            objcommand.CommandText = "TPinsertUser";
            objcommand.Parameters.AddWithValue("@email", person.EMAIL);
            objcommand.Parameters.AddWithValue("@name", person.PNAME);
            objcommand.Parameters.AddWithValue("@password", person.Password);

            connection.DoUpdateUsingCmdObj(objcommand);
            connection.CloseConnection();

            BinaryFormatter serializer = new BinaryFormatter();
            MemoryStream memStream = new MemoryStream();

            serializer.Serialize(memStream, person);

            byte[] byteArray;
            byteArray = memStream.ToArray();

        }
    }
}