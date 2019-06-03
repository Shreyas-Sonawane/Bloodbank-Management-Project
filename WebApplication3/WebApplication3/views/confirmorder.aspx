<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmorder.aspx.cs" Inherits="WebApplication3.views.confirmorder" %>

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

        .auto-style5 {
            margin-left: 40px;
            width: 455px;
            height: 2px;
        }
        
        .auto-style7 {
            width: 455px;
        }
        .auto-style8 {
            width: 170px;
        }
        .auto-style11 {
            width: 682px;
            margin-left: 40px;
        }
        .auto-style12 {
            height: 19px;
            width: 170px;
        }
        .auto-style13 {
            height: 19px;
            width: 455px;
            margin-left: 40px;
        }
        .auto-style14 {
            height: 16px;
            width: 170px;
        }
        .auto-style15 {
            height: 16px;
            width: 455px;
        }
        .auto-style16 {
            height: 2px;
            width: 170px;
        }
    </style>
      
        
</head>
<body>
    <p>
    <img src="02.jpg" style="height:289px; width:100%" /></p>
    <form id="form1" runat="server">
        <div>

            <h1 class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ORDER PLACED SUCCESSFULLY !!!</h1>


        </div>
        <table >
            

            <tr>
                <td class="auto-style12">Order ID</td>
                <td class="auto-style13">
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </td>
                
            </tr>
            

            <tr>
                <td class="auto-style12">Name</td>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>

            </tr>

             <tr>
                <td class="auto-style8">Patient Name</td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                 </td>
                
                </tr>
            <tr>
                <td class="auto-style8">Patient Adhar&nbsp; #</td>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                
                </tr>

             <tr>
                <td class="auto-style8">Patient Age</td>
                <td class="auto-style7">

                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
             <tr>
                <td class="auto-style8">Blood Group</td>
                <td class="auto-style7">

                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>




            <tr>
                <td class="auto-style14">No of Bottle</td>
                <td class="auto-style15">

                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    
                </td>
                
                </tr>




            <tr>
                <td class="auto-style8">Patient ID</td>
                <td class="auto-style7">

                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style16">Sex</td>
                <td class="auto-style5">

                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>




            
            <tr>
                <td class="auto-style8">Address</td>
                <td class="auto-style7">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
                
                </tr>




            
            <tr>
                <td class="auto-style8">Contact #</td>
                <td class="auto-style7">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
                       
            <tr>
                <td class="auto-style8">Total Price</td>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
                       
            <tr>
                <td class="auto-style8">Ordered on : </td>
                <td class="auto-style7">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
                       
        </table>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="47px" Text="Go Back" Width="245px" OnClick="Button3_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="47px" Text="Print Bill" Width="245px" OnClientClick="javascript:window.print();" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
