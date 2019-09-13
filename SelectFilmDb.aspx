<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectFilmDb.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%Response.Write("<center><h1>Film database</h1></center>");%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT Film.Film_title, Film.IsFilmFree, Film.Genre, Film.Language, Actors.Actor_Name, Director.Director_Name, Film_Releases.Country_Releases, Film_Releases.Release_Date FROM Film INNER JOIN Actors ON Film.Actor_ID = Actors.Actor_ID INNER JOIN Director ON Film.Director_ID = Director.Director_ID INNER JOIN Film_Releases ON Film.Film_ID = Film_Releases.Film_ID"></asp:SqlDataSource>
    </div>
      <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Film_title" HeaderText="Film_title" SortExpression="Film_title" />
                <asp:BoundField DataField="Director_Name" HeaderText="Director_Name" SortExpression="Director_Name" />
                <asp:BoundField DataField="Actor_Name" HeaderText="Actor_Name" SortExpression="Actor_Name" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                <asp:BoundField DataField="Country_Releases" HeaderText="Country_Releases" SortExpression="Country_Releases" />
                <asp:BoundField DataField="Release_Date" HeaderText="Release_Date" SortExpression="Release_Date" />
                 <asp:BoundField DataField="IsFilmFree" HeaderText="IsFilmFree" SortExpression="IsFilmFree" />
            </Columns>
        </asp:GridView>
      </center>
    </form>
</body>
</html>
