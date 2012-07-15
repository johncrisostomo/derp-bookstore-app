<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Titles.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Title List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">

    <customControls:Header runat="server"
        heading="Title List" />

    <p><span lang="en-us">This page will show a list of Titles.</span></p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="title_id" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' 
                Font-Bold="true" Font-Italic="true" />
                <br />
                Price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price", "${0:f2}") %>' />
                <br />
                Publication Date:
                <asp:Label ID="pubDateLabel" runat="server" Text='<%# Eval("pubdate", "{0:d}") %>'/>
                <br /><br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [titles] WHERE [title_id] = @title_id" 
            InsertCommand="INSERT INTO [titles] ([pub_id], [au_id], [title], [price], [pubdate], [notes]) VALUES (@pub_id, @au_id, @title, @price, @pubdate, @notes)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT [title_id], [pub_id], [au_id], [title], [price], [pubdate], [notes] FROM [titles]" 
            
            UpdateCommand="UPDATE [titles] SET [pub_id] = @pub_id, [au_id] = @au_id, [title] = @title, [price] = @price, [pubdate] = @pubdate, [notes] = @notes WHERE [title_id] = @title_id">
            <DeleteParameters>
                <asp:Parameter Name="title_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pub_id" Type="Int32" />
                <asp:Parameter Name="au_id" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pub_id" Type="Int32" />
                <asp:Parameter Name="au_id" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="title_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
