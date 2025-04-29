<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CountriesLab2b.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ΠΛΗΡΟΦΟΡΙΕΣ ΧΩΡΑΣ</h1>
            <p>
                Χώρα:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="lstCountry" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </p>
            <p>
                Iso Code:&nbsp;&nbsp;&nbsp; <asp:Label ID="lblIso" runat="server"></asp:Label>
            </p>
            <p>
                Πρωτεύουσα:&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCapital" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Image ID="imgCountry" runat="server" />
            </p>
            <p>
                Κωδικός Διεθνούς Κλήσης:&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblPhone" runat="server"></asp:Label>
            </p>
            <p>
                Νόμισμα:&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCurrency" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Κλήση Υπηρεσίας" />
            </p>
        </div>
    </form>
</body>
</html>
