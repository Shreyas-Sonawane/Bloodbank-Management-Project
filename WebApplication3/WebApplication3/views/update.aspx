<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="WebApplication3.views.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 771px;
        }
        .auto-style2 {
            width: 79px;
        }
         table
       {
           color:#891c1c;
       }
       td{
           padding:20px;
       }
        .auto-style3 {
            width: 100%;
            height: 905px;
        }
        .auto-style4 {
            width: 60%;
            height: 834px;
            float: left;
        }
        .auto-style5 {
            width: 40%;
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style3">
    

        <div class="auto-style5">
            <br />
            <br />
            
             &nbsp;&nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Width="136px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style2">Aadhar #</td>
                    <td>
                        <asp:TextBox ID="txtcnic" runat="server" Width="136px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" Width="136px"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td class="auto-style2">Contact</td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server" Width="136px"></asp:TextBox>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Blood Group</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="1">A+</asp:ListItem>
                            <asp:ListItem Value="2">A-</asp:ListItem>
                            <asp:ListItem Value="3">AB+</asp:ListItem>
                            <asp:ListItem Value="4">AB-</asp:ListItem>
                            <asp:ListItem Value="5">O+</asp:ListItem>
                            <asp:ListItem Value="6">O-</asp:ListItem>
                            <asp:ListItem Value="7">B+</asp:ListItem>
                            <asp:ListItem Value="8">B-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                

                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" Width="136px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">HB</td>
                    <td>
                        <asp:TextBox ID="txthb" runat="server" Width="136px"></asp:TextBox>
                    </td>
                </tr>

            </table>






        </div>


        <div style="background-color:#f8eded;background-image:url('../img/bg.jpg'); background-repeat:no-repeat; background-size:100% 100%" class="auto-style4">


        </div>
             <br />
             <asp:Button ID="Button2" runat="server" Height="47px" OnClick="Button2_Click" Text="Update" Width="306px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>





        





    </div>
    </form>
</body>
</html>
