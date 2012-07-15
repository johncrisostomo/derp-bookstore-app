<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Authors.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Author List"/>    
    <p>
        <span lang="en-us">This page will show a list of Authors.</span>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="au_id" DataSourceID="AccessDataSource1" 
            EmptyDataText="There are no data records to display." AllowPaging="True" 
            CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="au_lname" HeaderText="Last Name" 
                    SortExpression="au_lname" ReadOnly="True" />
                <asp:BoundField DataField="au_fname" HeaderText="First Name" 
                    SortExpression="au_fname" ReadOnly="True" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AuthorInsert.aspx">Add New Author</asp:HyperLink>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="C:\Users\John\Documents\GitHub\derp-bookstore-app\db\mybookstore.accdb" 
            DeleteCommand="DELETE FROM `authors` WHERE `au_id` = ?" 
            InsertCommand="INSERT INTO `authors` (`au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT `au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip` FROM `authors`" 
            UpdateCommand="UPDATE `authors` SET `phone` = ? WHERE `au_id` = ?">
            <DeleteParameters>
                <asp:Parameter Name="au_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="au_id" Type="Int16" />
                <asp:Parameter Name="au_lname" Type="String" />
                <asp:Parameter Name="au_fname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="zip" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="au_id" Type="Int16" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </p>
    </form>
</body>
</html>
