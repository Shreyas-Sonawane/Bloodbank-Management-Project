<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donorAdd.aspx.cs" Inherits="WebApplication3.views.donorAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    
    <div style="background-color:#e2caca;width:100%;height:150px;">
        <div>
            <br />
            Enter Id to add the donor :
            <asp:TextBox ID="txtid" runat="server" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
      
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="38px" OnClick="Button2_Click" Text="Show Eligible Donors" Width="251px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="ADD" Width="252px" />
            <br />
            <br />

        </div>
        
    </div>
    <div style="width:100%;overflow:scroll;min-height:1000px">

    <asp:Repeater ID="Repeater1" runat="server" >
         
            <ItemTemplate>
        <div style="width:25%;float:left;color:#ac9696; font-family:'Arial Rounded MT' ">
         
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("d_id","~/views/viewprofile.aspx?view={0}") %>'>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_path")%>'  Style="width:200px;height:200px; border-radius:25px 25px 25px 25px" />

           </asp:HyperLink>
            
            <table style="width: 100%;">
                <tr>
                    <td style="width: 110px">Id </td>
                    <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("d_id")%>' Style="color:#ff0000"></asp:Label></td>
                    
                </tr>
               
                <tr>
                    <td style="width: 110px">Name </td>
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("d_name")%>' Style="color:#ff0000"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td style="width: 110px">HB </td>
                    <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("d_HB")%>' Style="color:#ff0000"></asp:Label></td>
                    
                </tr> 
                <tr>
                    <td style="width: 110px">Blood Group </td>
                    <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("b_name")%>' Style="color:#ff0000"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td style="width: 110px">Contact </td>
                    <td><asp:Label ID="Label5" runat="server" Text='<%# Eval("d_contact")%>' Style="color:#ff0000"></asp:Label></td>
                    
                </tr>
                
            </table>

            

        </div>
                </ItemTemplate>
                  </asp:Repeater>
</div>





    </div>
    </form>
</body>
</html>
