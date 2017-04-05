using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClassLibraries
{
    [Serializable]
    public class Person
    {
        string pName;
        string eMail;
        string password;

        public string PNAME
        {
            get
            {
                return pName;
            }
            set
            {
                pName = value;
            }
        }

        public string EMAIL
        {
            get
            {
                return eMail;
            }
            set
            {
                eMail = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }
    }
}