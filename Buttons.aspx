<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buttons.aspx.cs" Inherits="Buttons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My project - film database</title>
</head>
<body>
    <form id="form1" runat="server">
  <center>
      <%Response.Write("<h1>Film database - my project (14125498)</h1>");%>
    <div>
        <h1>
        <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display" BackColor="#FF6666" Font-Bold="True" /></br>
        <asp:Button ID="btnInsert" runat="server" OnClick="Button2_Click" Text="Insert" BackColor="#00CC00" BorderColor="#33CCFF" Font-Bold="True" /></br>
        <asp:Button ID="btnUpdateDelete" runat="server" OnClick="btnUpdateDelete_Click" Text="Update/Delete" BackColor="#003366" BorderColor="Black" Font-Bold="True" ForeColor="White" />
            </h1>
        <h1>
            <asp:Button ID="btnExit" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="btnExit_Click" Text="Exit" />
            </br>
            </h1>
    </div>
  </center>
    </form>
</body>
</html>
