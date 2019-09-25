using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01363730_Assignment1
{
    public partial class n01363730_GoKartIncidentReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack)
            {
               
                Page.Validate();

               
                if (Page.IsValid)
                {
                    string Owner_Fname = owner_fname.Text.ToString();
                    string Owner_Lname = owner_lname.Text.ToString();
                    string Owner_Email = owner_email.Text.ToString();
                    string Incident_Location = incident_location.SelectedValue.ToString();
                    string Insurance_Claim = insurnce_claim.SelectedValue.ToString();
                    int Insurance_Validity = Convert.ToInt32(insurance_validity.Text);
                    string Police_Incident_Report = police_incident_report.SelectedValue.ToString();
                    string Police_Response = police_response.SelectedValue.ToString();
                    confirmbox.InnerHtml = "Thank you for applying for claiming your insurance! Your Summary is as follows: <br>";
                    confirmbox.InnerHtml += " First Name: " + Owner_Fname + "<br>";
                    confirmbox.InnerHtml += " Last Name: " + Owner_Lname + "<br>";
                    confirmbox.InnerHtml += " Email ID: " + Owner_Email + "<br>";
                    confirmbox.InnerHtml += " Location: " + Incident_Location + "<br>";
                    confirmbox.InnerHtml += " Has the Owner made any Go Kart insurance claims in the last 2 years?: " + Insurance_Claim + "<br>";
                    confirmbox.InnerHtml += " If Yes, how many years is the insurance valid?: " + Insurance_Validity + "<br>";
                    confirmbox.InnerHtml += " Was this incident reported to the police? " + Police_Incident_Report + "<br>";
                    confirmbox.InnerHtml += " Response from Police for the complaint raised: " + Police_Response + "<br>";

                    if (Police_Response == "KartFound")
                    {
                        confirmbox.InnerHtml = "Wow....Congratulations! No need of claim";
                    }
                    if (Police_Response == "KartCouldNotBeFound")
                    {
                        confirmbox.InnerHtml = "Don't worry...We got you";
                    }
                    if (Police_Response == "CaseInvalid")
                    {
                        confirmbox.InnerHtml = "Sorry..!! This claim cannot be processed"; ;

                    }
                }
            }
        }
    }
}