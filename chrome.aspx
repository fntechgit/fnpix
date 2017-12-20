<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chrome.aspx.cs" Inherits="fnpix.chrome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        
        .wrapper { width: 50%;margin-left: auto;margin-right: auto;padding-top: 75px; }
        .header { width: 100%;}
        .col { width: 50%;float: left;height: 30px; }
        .col span { font-family: Arial;font-size: 18px;color: #0c0c0c; }
        .buttons { float: right; }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="header">
            <img src="/assets/images/logo.png" height="54" alt="FNTECH Event Management">
        </div>
        <div class="col">
            <span>Event</span>
            <asp:DropDownList runat="server" ID="ddl_event"/>
        </div>
        <div class="col">
            <span>Effect</span>
            <asp:DropDownList runat="server" ID="ddl_effect">
                <asp:ListItem Value="">Select Effect</asp:ListItem>
                <asp:ListItem Value="magicwall">Media Wall</asp:ListItem>
                <asp:ListItem Value="twitter">Twitter Scroll</asp:ListItem>
                <asp:ListItem Value="instagram">Instagram Scroll</asp:ListItem>
                <asp:ListItem Value="twitter-instagram">Twitter + Instagram Scroll</asp:ListItem>
                <asp:ListItem Value="dropbox">Dropbox</asp:ListItem>
                <asp:ListItem Value="by-schedule">Using Server Schedule</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col">
            <span>Resolution</span>
            <asp:DropDownList runat="server" ID="ddl_resolution">
                <asp:ListItem Value="">Select Resolution</asp:ListItem>
                <asp:ListItem Value="-1280">1280 x 780px</asp:ListItem>
                <asp:ListItem Value="">1920 x 1080px</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col">
            <span>Delay</span>
            <asp:DropDownList runat="server" ID="ddl_delay"/>
        </div>
        <div class="buttons">
            <asp:Button runat="server" ID="btn_show" OnClick="display" Text="View Display"/>
        </div>
    </div>
    </form>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <script type="text/javascript">
        
        function resize() {
            $(body).css("width", "100%");
            $(body).css("height", "100%");
        }

        $(document).ready(function() {

            setInterval(resize, 500);

        });

    </script>

</body>
</html>
