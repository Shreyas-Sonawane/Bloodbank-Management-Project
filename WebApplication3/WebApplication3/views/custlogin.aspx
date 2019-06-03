<%@ Page Title="" Language="C#" MasterPageFile="~/views/Site1.Master" AutoEventWireup="true" CodeBehind="custlogin.aspx.cs" Inherits="WebApplication3.views.custlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<img src="02.jpg" style="height:289px; width:100%" />





      <form id="form1" >
          <div>
    
              <p style="margin-left: 160px">
                  CUSTOMER LOGIN</p>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="height: 90px">Username</td>
                <td style="height: 90px">
                    <asp:TextBox ID="txtemail" runat="server" Width="306px" Height="29px" ></asp:TextBox>
                </td>
                <td style="height: 90px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 90px">Password</td>
                <td style="height: 90px">
                    <asp:TextBox ID="password" runat="server" TextMode="Password" Width="306px" Height="30px"></asp:TextBox>
                </td>
                <td style="height: 90px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 90px"></td>
                <td style="height: 90px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="153px" Height="47px" />
                </td>
                <td style="height: 90px"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>




</asp:Content>
