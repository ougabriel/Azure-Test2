<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple ASP.NET Page</title>
</head>
<body>
    <h1>Welcome to my GABRIEL'S Primary Page!</h1>

    <form method="post" action="Default.aspx">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" />

        <input type="submit" value="Submit" />
    </form>

    <asp:Label ID="resultLabel" runat="server" />

    <% if (IsPostBack)
       {
           string name = Request.Form["name"];
           if (!string.IsNullOrEmpty(name))
           {
               resultLabel.Text = "Hello, " + name + "!";
           }
       }
    %>
</body>
</html>