<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertFilmDb.aspx.cs" Inherits="InsertFilmDb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%Response.Write("<center><h1>Film database - insert</h1></center>");%>
    <div>
    <center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Film(Film_ID, Actor_ID, Director_ID, Film_title, IsFilmFree, Genre, Language) VALUES ('6011', '3011', '2011', 'The Blind Side', 1, 'Drama', 'english')" SelectCommand="SELECT * FROM [Film]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Film_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Film_ID" HeaderText="Film_ID" ReadOnly="True" SortExpression="Film_ID" />
                <asp:BoundField DataField="Actor_ID" HeaderText="Actor_ID" SortExpression="Actor_ID" />
                <asp:BoundField DataField="Director_ID" HeaderText="Director_ID" SortExpression="Director_ID" />
                <asp:BoundField DataField="Film_title" HeaderText="Film_title" SortExpression="Film_title" />
                <asp:BoundField DataField="IsFilmFree" HeaderText="IsFilmFree" SortExpression="IsFilmFree" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
            </Columns>
        </asp:GridView>
        </center>
    
    </div>
    </form>
</body>
</html>
