<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custsignup.aspx.cs" Inherits="WebApplication3.views.custsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"  
type="text/javascript"></script>   
<!--include jQuery Validation Plugin-->  
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"  
type="text/javascript"></script>  

    <title></title>
    <style type="text/css">
       table
       {
           color:white;
       }
       td{
           padding:20px;
       }

        .auto-style1 {
            width: 212px;
        }
        

        .auto-style2 {
            height: 64px;
        }
        .auto-style3 {
            width: 212px;
            height: 64px;
        }
        

        .auto-style4 {
            width: 500px;
            height: 573px;
        }
                

    </style>
</head>
<body style="background-image:url('~/img/download%20(1).jpg'); width:100%;height:573px">
    <form id="form2" runat="server">

        <div style="background-image:url('../img/download (1).jpg'); width:100%;height:100%;background-size:100% 100%">
    <div style="background-color:#851212; margin:0 auto; border-radius:25px 25px 25px 25px" class="auto-style4">
    
        <h1 style="background-color:white;color:#851212;text-align:center"> Registration From</h1>

       

        <table >
                       
            
             <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtemail" runat="server" TextMode="Email" ></asp:TextBox></td>
                
                <td class="auto-style1"> 

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

             <tr>
                <td>Password</td>
                <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                
                <td class="auto-style1"> 

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Weak Password" ControlToValidate="txtpassword" Display="Dynamic" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>
                 </td>
            </tr>

            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                
                <td class="auto-style1">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" Display="Dynamic" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>


            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style2"><asp:TextBox ID="txtname" runat="server" ></asp:TextBox></td>
                
                <td class="auto-style3"> 

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txtname" Display="Dynamic" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
                </td>
            </tr>




            
            <tr>
                <td class="auto-style2">Contact #</td>
                <td class="auto-style2"><asp:TextBox ID="TXTCONTCT" runat="server" ></asp:TextBox></td>
                
                <td class="auto-style3"> 

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Contact" ControlToValidate="TXTCONTCT" Display="Dynamic" ForeColor="Red" ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>

                    <asp:Button ID="Button1" runat="server" Text="Register!" OnClick="Button1_Click" BackColor="#CC0000" ForeColor="White" Height="34px" Width="158px" />
                </td>
                
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
          
        </table>


        </div>
    </div>
    </form>
</body>
</html>
