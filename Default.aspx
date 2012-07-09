<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register src="controls/Header.ascx" tagname="Header" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Night Owl</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Header ID="Header1" runat="server" heading="Home Page"/>
    <asp:Panel runat="server">
        Welcome to The Night Owl, where all of 
        your technical needs are met!
    </asp:Panel>
    </form>
</body>
</html>
