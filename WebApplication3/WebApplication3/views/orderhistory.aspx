<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderhistory.aspx.cs" Inherits="WebApplication3.views.orderhistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 602px;
        }
        .auto-style2 {
            margin-left: 560px;
        }
    </style>
</head>
<body style="height: 923px">
    <img src="02.jpg" style="height:289px; width:100%" />
    <form id="form1" runat="server">
        <div class="auto-style1">




            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h1><strong class="auto-style2">Order History</strong></h1>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" Height="208px"  Width="1283px" >
                <Columns>
                    <asp:BoundField DataField="o_id" HeaderText="o_id" InsertVisible="False" ReadOnly="True" SortExpression="o_id" />
                    <asp:BoundField DataField="o_name" HeaderText="o_name" SortExpression="o_name" />
                    <asp:BoundField DataField="o_patname" HeaderText="o_patname" SortExpression="o_patname" />
                    <asp:BoundField DataField="o_adhar" HeaderText="o_adhar" SortExpression="o_adhar" />
                    <asp:BoundField DataField="o_age" HeaderText="o_age" SortExpression="o_age" />
                    <asp:BoundField DataField="o_patid" HeaderText="o_patid" SortExpression="o_patid" />
                    <asp:BoundField DataField="o_bottle" HeaderText="o_bottle" SortExpression="o_bottle" />
                    <asp:BoundField DataField="o_amt" HeaderText="o_amt" SortExpression="o_amt" />
                    <asp:BoundField DataField="o_date" HeaderText="o_date" SortExpression="o_date" />
                    <asp:BoundField DataField="o_contact" HeaderText="o_contact" SortExpression="o_contact" />
                    <asp:BoundField DataField="o_add" HeaderText="o_add" SortExpression="o_add" />
                    <asp:BoundField DataField="o_sex" HeaderText="o_sex" SortExpression="o_sex" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bloodbankConnectionString %>" SelectCommand="SELECT [o_id], [o_name], [o_patname], [o_adhar], [o_age], [o_patid], [o_bottle], [o_amt], [o_date], [o_contact], [o_add], [o_sex] FROM [orders]"></asp:SqlDataSource>




        </div>
    </form>
</body>
</html>
