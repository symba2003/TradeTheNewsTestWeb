<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="JQuerySampleWebApp.MySamples.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="signup" method="post" action="">
<div><span class="label">User Id *</span><input type="text" class="infobox" name="userid"
/><span class="error"> This field cannot be blank</span></div>
<input class="submit" type="submit" value="Submit">
</form>
</body>
</html>
