<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForUsers.aspx.cs" Inherits="ForUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css" />


    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>

    <!--Import Google Icon Font-->

    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="Design.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .ilike-blue-container {
            @extend .blue, .lighten-4;
        }
    </style>
    <script>
        $(document).ready(
            function () {
                $(".button-collapse").sideNav();
            });
    </script>
</head>
<body>

    <nav>
        <div class="nav-wrapper">
            <a href="#!" class="brand-logo">DMS</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="MakeTemplate.aspx">New Template</a></li>
                <li><a href="SelectCategory.aspx">Use Template</a></li>
                <li><a href="UploadSignedDocument.aspx">Signed Document</a></li>
                <li><a href="Admin/DocumentRecords.aspx">Admin Panel</a></li>
                <li><a href="Admin/CategoryWise.aspx">All Documents</a></li>
                <li><a href="MyLogin.aspx">Logout</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="MakeTemplate.aspx">New Template</a></li>
                <li><a href="SelectCategory.aspx">Use Template</a></li>
                <li><a href="UploadSignedDocument.aspx">Signed Document</a></li>
                <li><a href="Admin/DocumentRecords.aspx">Admin Panel</a></li>
                <li><a href="Admin/CategoryWise.aspx">All Documents</a></li>
                <li><a href="MyLogin.aspx">Logout</a></li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gridViewDocuments" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>Id</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Subject</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSubject" runat="server" Text='<%#Eval("Subject") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Body</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblBody" runat="server" Text='<%#Eval("Body") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Signed Copy</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSignedCopy" runat="server" Text='<%#Eval("SignedDocument") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblDate" runat="server" Text='<%#Eval("Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>

