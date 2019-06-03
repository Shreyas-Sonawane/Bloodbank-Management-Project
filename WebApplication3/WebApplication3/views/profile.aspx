<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication3.views.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
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
            width: 60%;
            height: 977px;
            float: left;
        }
        .auto-style4 {
            width: 100%;
            height: 1050px;
        }
        .auto-style5 {
            width: 40%;
            height: 958px;
            float: left;
        }
    </style>
</head>
<body style="height: 1055px">
    <form id="form1" runat="server">
    <div class="auto-style4">
    

        <div class="auto-style5">
            <asp:Image ID="Image1" runat="server" Height="277px" Width="307px" Style="margin-left:20px;margin-top:20px; border:inset"  />
            <br />
            <br />
            
             &nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="lblname"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style2">Aadhar #</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="lblcnic"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="lblemail"></asp:Label>
                    </td>
                </tr>


                <tr>
                    <td class="auto-style2">Contact</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="lblcontact"></asp:Label>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="lblage"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Blood Group</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="lblbg"></asp:Label>
                    </td>
                </tr>

                

                <tr>
                    <td class="auto-style2">HB</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="lblhb"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Sex</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="lblsex"></asp:Label>
                    </td>
                </tr>

            </table>

            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="Logout" Width="157px" />
            <asp:Button ID="Button4" runat="server" Height="40px" OnClick="Button4_Click" Text="Update" Width="157px" />
            <br />


        </div>


        <div style="background-color:#f8eded;background-image:url('../img/bg.jpg'); background-repeat:no-repeat; background-size:100% 100%" class="auto-style3">


        </div>


    </div>
    </form>
</body>
</html>
