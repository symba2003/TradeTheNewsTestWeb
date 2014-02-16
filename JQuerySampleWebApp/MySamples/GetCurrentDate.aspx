<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetCurrentDate.aspx.cs" Inherits="JQuerySampleWebApp.MySamples.GetCurrentDate" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.11.0.min.js"></script>
    <title>How to Call Asp.Net WebMethod using jQuery Ajax in Web Application?</title>
    <script type="text/javascript">
        function ShowCurrentDateTime() {
            $.ajax({
                type: "POST",                                                           // Request Type
                url: "GetCurrentDate.aspx/GetCurrentDateTime",                  // Page URL-> and Method Name
                data: '{name: "' + document.getElementById("txtUserName").value + '" }',  // Parameter -> Value
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,                                                  // Success Method
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function OnSuccess(response) {
            alert(response.d);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div><br /><br />
            Your Name:
            <asp:TextBox ID="txtUserName" runat="server" Text="there.."></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Date & Time" onclick="ShowCurrentDateTime()" />&nbsp;&nbsp;   
            <br />
            <br />
            <span id="spnDateTime"></span>
        </div>
    </form>
</body>
</html>
