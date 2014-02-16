<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JQuerySampleWebApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
     <script type="text/javascript" src="../Scripts/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#submit').click(function () {
                // Sample1
                var name = $('.uname').val();
                //var data = '{name: "' + name + '" }';//json object
                //$.ajax({
                //    type: "POST",
                //    url: "Default.aspx/GetWelcomeMessage",
                //    data: data,
                //    contentType: "application/json; charset=utf-8",
                //    dataType: "json",
                //    success: function (html) {
                //        $('#message').html(html.d); //Why "d"? they choose d for short for data to add the minimal amount of json overhead to the payload. 
                // It probably would have been much cleaner of them to have actually used Data or even Payload or other
                // more descriptive word.
                    
                //    }

                //Sample2 - not working: full html returned (default content-type equals  'application/x-www-form-urlencoded'.
                //var data = {name: "'" + name + "'" };//json object
                //$.ajax({
                //    type: "POST",
                //    url: "Default.aspx/GetWelcomeMessage",
                //    data: data,
                //    //contentType: "application/json; charset=utf-8",
                //    dataType: "html",
                //    success: function (result) {
                //        $('#message').html(result);
                //    }

                //Sample3 - not workin: full JSON returned, without ability to get "d"
                // On this occasion, the contentType is set to application/json. The dataType is still set to html, since that is 
                // the data type of the response I am expecting from the server. 
                    var data = {name: "'" + name + "'" };//json object
                    $.ajax({
                        type: "POST",
                        url: "Default.aspx/GetWelcomeMessage",
                        data:  JSON.stringify(data),
                        contentType: "application/json; charset=utf-8",
                        dataType: "html",
                        success: function (result) {
                            $('#message').html(result); 
                        }
                });
                return false;
            });
        });

    </script>
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <label>Enter your Name</label>
<input type="text" name="uname" class="uname"/> <br/>
<input type="submit" id="submit"/>
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Learn more…</a>
        </li>
        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
     <div id="message"></div>   
</asp:Content>
