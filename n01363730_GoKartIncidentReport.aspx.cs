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
                    string Owner_Phone = owner_phone.Text.ToString();
                    string Incident_Location = incident_location.SelectedValue.ToString();
                    string Insurance_Claim = insurnce_claim.SelectedValue.ToString();
                    int Insurance_Validity = Convert.ToInt32(insurance_validity.Text);
                    string Police_Incident_Report = police_incident_report.SelectedValue.ToString();
                    string Police_Response = police_response.SelectedValue.ToString();
                    //Summary
                    summary_claimform.InnerHtml = "Thank you for applying for claiming your insurance! Your Summary is as follows: <br>";
                    summary_claimform.InnerHtml += " First Name: " + Owner_Fname + "<br>";
                    summary_claimform.InnerHtml += " Last Name: " + Owner_Lname + "<br>";
                    summary_claimform.InnerHtml += " Email ID: " + Owner_Phone + "<br>";
                    summary_claimform.InnerHtml += " Location: " + Incident_Location + "<br>";
                    summary_claimform.InnerHtml += " Go Kart insurance claim: " + Insurance_Claim + "<br>";
                    summary_claimform.InnerHtml += " Insurance validity: " + Insurance_Validity + "<br>";
                    summary_claimform.InnerHtml += " Police Report " + Police_Incident_Report + "<br>";
                    summary_claimform.InnerHtml += " Final decision " + Police_Response + "<br>";

                    if (Police_Response == "KartFound")
                    {
                        summary_claimform.InnerHtml += "Wow....Congratulations! No need of claim";
                    }
                    if (Police_Response == "KartCouldNotBeFound")
                    {
                        summary_claimform.InnerHtml += "Don't worry...We got you";
                    }
                    if (Police_Response == "CaseInvalid")
                    {
                        summary_claimform.InnerHtml += "Sorry..!! This claim cannot be processed"; ;

                    }
                }
            }
        }
    }
}