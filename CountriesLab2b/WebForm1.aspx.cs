using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountriesLab2b
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        org.oorsprong.www.CountryInfoService ct = new org.oorsprong.www.CountryInfoService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstCountry.Items.Add("-Select-");
                org.oorsprong.www.tCountryCodeAndName[] can = ct.ListOfCountryNamesByName();

                for (int i = 0; i < can.Length; i++)
                {
                    lstCountry.Items.Add(can[i].sName);
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strIsoCountry = ct.CountryISOCode(lstCountry.Text);
            lblIso.Text = strIsoCountry;

            string strCapital = ct.CapitalCity(strIsoCountry);
            lblCapital.Text = strCapital;

            string strCountryFlag = ct.CountryFlag(strIsoCountry);
            imgCountry.ImageUrl = strCountryFlag;

            string strPhone = ct.CountryIntPhoneCode(strIsoCountry);
            lblPhone.Text = strPhone;

            org.oorsprong.www.tCurrency curr =  ct.CountryCurrency(strIsoCountry);
            lblCurrency.Text = curr.sName;
        }
    }
}