<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="n01363730_GoKartIncidentReport.aspx.cs" Inherits="n01363730_Assignment1.n01363730_GoKartIncidentReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Go-Kart Incident Report</title>
    <link rel ="stylesheet" type="text/CSS" href="content/Site.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section>
        <h1>GO-KART CLAIM FORM - THEFT </h1>
         <p>Please enter the below details in order to claim the insurnce</p>
            </section>
            <h2>Owner Details:</h2>
        <section>
            <h3>First Name:</h3>
            <asp:TextBox runat="server" id="owner_fname"> </asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter the first name" ControlToValidate="owner_fname"></asp:RequiredFieldValidator>
            </section>
        <section>
            <h3>Last Name:</h3>
            <asp:TextBox runat="server" id="owner_lname"></asp:TextBox>
            </section>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="Please enter the last name" 
                ControlToValidate="owner_lname"></asp:RequiredFieldValidator>
        <section>    
          <%/*
             Regular expression source
             Author:Jeff Atwood
             Source:https://blog.codinghorror.com/regex-use-vs-regex-abuse/
             Reason: Reson why I pickd this particular regular expression is that the way author explain the regular expression is understandable and clear
               
               */ %>  
        <h3>Owners Email:</h3>
            <asp:TextBox runat="server" ID="owner_phone"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" 
            EnableClientScript="true" 
            ErrorMessage="Please enter the valid mobile number" 
            ControlToValidate="owner_email" 
            validationExpression="^\(*\d{3}\)*( |-)*\d{3}( |-)*\d{4}$"></asp:RegularExpressionValidator>
        </section>
        <section>
            <h3>Go-Kart Location:</h3>
            <asp:DropDownList runat="server" ID="incident_location">
                <asp:ListItem Text="---Choose One---" Value=""></asp:ListItem>
                <asp:ListItem Text="Toronto" Value="Toronto"></asp:ListItem>
                <asp:ListItem Text="Missusauga" Value="Missusauga"></asp:ListItem>
                <asp:ListItem Text="Brampton" Value="Brampton"></asp:ListItem>
                <asp:ListItem Text="Ottawa" Value="Ottawa"></asp:ListItem>
                <asp:ListItem Text="Windsor" Value="Windsor"></asp:ListItem>
                </asp:DropDownList>    
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="Please select the City...Location pays a key role in claiming" 
                ControlToValidate="incident_location"></asp:RequiredFieldValidator>
        </section>
         <h2>Insurance Details:</h2>
        <section>
           
            <h3>Has the Owner made any Go Kart insurance claims in the last 2 years?</h3>
            
                <asp:RadioButtonList runat="server" ID="insurnce_claim">
                    <asp:ListItem Text="Yes" Value="YES"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" 
                    EnableClientScript="true" 
                    ErrorMessage="Please select the insurance details"
                    ControlToValidate="insurnce_claim"></asp:RequiredFieldValidator>
            </section>    
           <section>
            <h3>If Yes, how many years is the insurance valid?</h3>
            <asp:TextBox runat="server" id="insurance_validity"></asp:TextBox>
            <asp:RangeValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="Can not be claimed if the insurance is more than 5 years old, Sorry!!" 
                ControlToValidate="insurance_validity"
                MinimumValue="1"
                MaximumValue="5"></asp:RangeValidator>
        </section>
        <h2>Police Report:</h2>
        <section>
            
            <h3>Was this incident reported to the police?</h3>
            
                <asp:RadioButtonList runat="server" ID="police_incident_report">
                    <asp:ListItem Text="Yes" Value="YES"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" 
                    EnableClientScript="true" 
                    ErrorMessage="Please select the appropriate police report details" 
                    ControlToValidate="police_incident_report"></asp:RequiredFieldValidator>
               
        </section>
       
        <section>
            <h3>Response from Police for the complaint raised</h3>
            <asp:DropDownList runat="server" ID="police_response">
                <asp:ListItem Text="---Choose One---" Value=""></asp:ListItem>
                <asp:ListItem Text="KartFound" Value="KartFound"></asp:ListItem>
                <asp:ListItem Text="KartCouldNotBeFound" Value="KartCouldNotBeFound"></asp:ListItem>
                <asp:ListItem Text="CaseInvalid" Value="CaseInvalid"></asp:ListItem>
               </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="This field should be selected..as the claim result depends on it" 
                ControlToValidate="police_response"></asp:RequiredFieldValidator>
        </section>
        <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
        <section id="summary_claimForm" runat="server">

        </section>
        <section>
            <input type="submit" value="submit" />
        </section>
</form>
    
</body>
</html>
