using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Utilities;
using ClassLibraries;
using System.Data.SqlClient;
using System.Data;

namespace TPWebService
{
    /// <summary>
    /// Summary description for WS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WS : System.Web.Services.WebService
    {
        [WebMethod]
        public void RegisterAcccount(string email, string password, byte[] byteArray)
        {
            DBConnect connection = new DBConnect();
            SqlCommand objcommand = new SqlCommand();
            DataSet ds = new DataSet();

            objcommand.CommandType = CommandType.StoredProcedure;
            objcommand.CommandText = "TPinserUser";
            objcommand.Parameters.AddWithValue("@username", email);
            objcommand.Parameters.AddWithValue("@password", password);
            objcommand.Parameters.AddWithValue("@account", byteArray);

            connection.DoUpdateUsingCmdObj(objcommand);
            connection.CloseConnection();
        }
    }
}
