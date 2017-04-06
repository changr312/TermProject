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
            if(txtPassword.Text.Trim() == txtPassword2.Text.Trim())
            {
                WebSvc.WS pxy = new WebSvc.WS();
                string email = txtEmail.Text;
                string name = txtName.Text;
                string password = txtPassword.Text;

                Person person = new Person();

                person.PNAME = name;

                BinaryFormatter serializer = new BinaryFormatter();
                MemoryStream memStream = new MemoryStream();

                serializer.Serialize(memStream, person);

                byte[] byteArray;
                byteArray = memStream.ToArray();

                pxy.RegisterAcccount(email, password, byteArray);

                if (cbCookie.Checked)
                {
                    writeCookie(email, byteArray.ToString());
                }

                Response.Redirect("start.aspx");
            }
            else
            {
                lblMessage.Text = "Error. Password do not match.";
            }
        }

        public void writeCookie(string email, string byteArr)
        {
            HttpCookie myCookie = new HttpCookie("CIS3342_TP_Cookie");
            myCookie.Values["email"] = email;
            myCookie.Values["account"] = byteArr;
            myCookie.Values["LastVisited"] = DateTime.Now.ToString();
            myCookie.Expires = new DateTime(2025, 1, 1);

            Response.Cookies.Add(myCookie);
        }
    }
}