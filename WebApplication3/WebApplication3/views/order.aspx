<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication3.views.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       table
       {
           color:black;
       }
       td{
           padding:20px;
       }

        .auto-style1 {
            width: 212px;
        }
        

        .auto-style2 {
            height: 64px;
            width: 170px;
        }
        .auto-style5 {
            margin-left: 40px;
            width: 455px;
        }
        
        .auto-style6 {
            height: 64px;
            width: 455px;
        }
        .auto-style7 {
            width: 455px;
        }
        .auto-style8 {
            width: 170px;
        }
        .auto-style9 {
            height: 37px;
            width: 170px;
        }
        .auto-style10 {
            height: 37px;
            width: 455px;
        }
        

    </style>
</head>
<body>
    <p>
    <img src="02.jpg" style="height:289px; width:100%" /></p>
    <form id="form1" runat="server">
        <div>
            ORDER DETAILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<table >
            

            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style6"><asp:TextBox ID="txtname" runat="server" Width="293px" ></asp:TextBox></td>
                
            </tr>

             <tr>
                <td class="auto-style2">Patient Name</td>
                <td class="auto-style6"><asp:TextBox ID="txtpatname" runat="server" Width="292px" ></asp:TextBox></td>
                
                </tr>
            <tr>
                <td class="auto-style8">Patient Adhar&nbsp; #</td>
                <td class="auto-style7"><asp:TextBox ID="txtadhar" runat="server" Width="291px" ></asp:TextBox></td>
                
                </tr>

             <tr>
                <td class="auto-style2">Patient Age</td>
                <td class="auto-style6">

                    <asp:TextBox ID="txtage" runat="server" ></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td class="auto-style8">Blood Group</td>
                <td class="auto-style7">

                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="116px" DataSourceID="SqlDataSource1" DataTextField="b_name" DataValueField="b_id">
                        <asp:ListItem Value="A+">A+</asp:ListItem>
                        <asp:ListItem Value="2">A-</asp:ListItem>
                        <asp:ListItem Value="3">AB+</asp:ListItem>
                        <asp:ListItem Value="4">AB-</asp:ListItem>
                        <asp:ListItem Value="5">O+</asp:ListItem>
                        <asp:ListItem Value="6">O-</asp:ListItem>
                        <asp:ListItem Value="7">B+</asp:ListItem>
                        <asp:ListItem Value="8">B-</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bloodbankConnectionString %>" SelectCommand="SELECT * FROM [bloodgroup]"></asp:SqlDataSource>
                </td>
                
            </tr>




            <tr>
                <td class="auto-style8">No of Bottle</td>
                <td class="auto-style7">

                    <asp:TextBox ID="txtbottle" runat="server" ></asp:TextBox>
                    &nbsp;X 1200.00 INR</td>
                
                </tr>




            <tr>
                <td class="auto-style8">Patient ID</td>
                <td class="auto-style7">

                    <asp:TextBox ID="txtpatid" runat="server" ></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style8">Sex</td>
                <td class="auto-style5">

                    <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="116px">
                        <asp:ListItem Value="male">MALE</asp:ListItem>
                        <asp:ListItem Value="female">FEMALE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>




            
            <tr>
                <td class="auto-style2">Address</td>
                <td class="auto-style6"><asp:TextBox ID="txtadd" runat="server" Height="66px" Width="325px" ></asp:TextBox></td>
                
                </tr>




            
            <tr>
                <td class="auto-style9">Contact #</td>
                <td class="auto-style10"><asp:TextBox ID="txtcontact" runat="server" ></asp:TextBox></td>
                
            </tr>
             <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">

                    <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" BackColor="#CC0000" ForeColor="White" Height="34px" Width="158px" />
                </td>
                
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
          
        </table>
            
        
        </div>
    </form>
</body>
</html>
