<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="n01363730_GoKartIncidentReport.aspx.cs" Inherits="n01363730_Assignment1.n01363730_GoKartIncidentReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Go-Kart Incident Report</title>
    <link rel ="stylesheet" type="text/CSS" href="content/Site.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <h1>GO KART CLAIM FORM - THEFT </h1>
        <section>
            <h2>Owners Details:</h2>
            <label>First name:</label>
            <asp:TextBox runat="server" id="Owners_fname"> </asp:TextBox>
            <label>Last Name:</label>
            <asp:TextBox runat="server" id="Owners_lname"></asp:TextBox>
            <label>Email Address:</label>
            <asp:TextBox runat="server" ID="Owners_emailid"></asp:TextBox>
        </section>
        <section>
            <h4>Go-Kart Location:</h4>
            <label>Which Go-Kart location did the incident occur:</label>
            <asp:DropDownList runat="server" ID="IncidentLocation">
                <asp:ListItem Text="Toronto" Value="Toronto"></asp:ListItem>
                <asp:ListItem Text="Missusauga" Value="Missusauga"></asp:ListItem>
                <asp:ListItem Text="Brampton" Value="Brampton"></asp:ListItem>
                <asp:ListItem Text="Ottawa" Value="Ottawa"></asp:ListItem>
                <asp:ListItem Text="Windsor" Value="Windsor"></asp:ListItem>
                </asp:DropDownList>          
        </section>

        <section>
            <h2>Insurance Details:</h2>
            <label>Has the Owner made any Go Kart insurance claims in the last 2 years?</label>
            <div>
                <asp:RadioButtonList runat="server" ID="InsurnceClaim">
                    <asp:ListItem Text="Yes" Value="YES"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
           
            <h3>If No, reason for skipping the insurance</h3>
            <asp:TextBox runat="server" id="ReasonForSkippingInsurance"></asp:TextBox>
        </section>
        <section>
            <h2>Police Report:</h2>
            <label>Was this incident reported to the police?</label>
            <div>
                <asp:RadioButtonList runat="server" ID="Police_IncidentReport">
                    <asp:ListItem Text="Yes" Value="YES"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
        </section>
        <section>
            <label>Reasons that might be possible for the theft?</label>
            <div>
            <asp:CheckBoxList ID="ReasonForTheft" runat="server">
                        <asp:ListItem Text="Rivelries" Value="Rivelries"></asp:ListItem>
                        <asp:ListItem Text="High-End Kart" Value="High-End_Kart"></asp:ListItem>
                        <asp:ListItem Text="NotSecuredEnough" Value="NotSecuredEnough"></asp:ListItem>
                <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
        </section>
        <section>
            <label>How old is the kart that has been stolen?</label>
            <asp:TextBox runat="server" ID="AgeOfTheKart"></asp:TextBox>
        </section>
        <section>
            <div>
            <asp:Button runat="server" Text="Submit"/>
                </div>
        </section>
</form>
    
</body>
</html>
