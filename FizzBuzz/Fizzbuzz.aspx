<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fizzbuzz.aspx.cs" Inherits="FizzBuzz.Fizzbuzz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="Scripts/jquery-3.6.0.js"></script>
    		<link type="text/css" rel="stylesheet" href="Styles/Style.css"/>

    <script>
        function showArray() {
            var message = jQuery("#textToDisplay").val();
            jQuery("#messageSpan").append(message + ',');           
            var str = jQuery("#messageSpan").text();                       
            jQuery("#Stringarray").val(str);
            //jQuery("#Stringarray").val();
            jQuery("#textToDisplay").val('');
        }
        function ClearArray() {
            
            jQuery("#textToDisplay").val('');
            jQuery("#messageSpan").val('');
            jQuery("#ResultSpan").val('');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" id="Stringarray" runat="server" />
        <div>
            <h3>FizzBuzz Program </h3>
        </div>
        <div>
            Please Add Numbers to Array :       
            <input type="text" id="textToDisplay" />
            <input type="button" value="Add the Input" onclick="showArray()" />
            <input type="button" value="Clear" onclick="ClearArray()" />
        </div>
        <div></div>
        <div id="ArrayList">
            <span id="messageSpan"></span>
        </div>

       <asp:Button ID ="BtnSubmit" Text="Submit" runat="server" OnClick="BtnSubmit_Click" />
        <div>
            <span id="ResultSpan" runat="server"></span>

        </div>
    </form>
</body>
</html>
