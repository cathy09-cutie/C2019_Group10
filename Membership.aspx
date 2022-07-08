<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="WebApplication2.Membership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 318px;
            height: 24px;
        }
        .auto-style13 {
            width: 506px;
            height: 24px;
        }
        .auto-style17 {
            width: 488px;
            height: 33px;
        }
        .auto-style19 {
            height: 525px;
        }
        .auto-style25 {
            width: 78px;
            height: 33px;
        }
        .auto-style26 {
            height: 33px;
        }
        .auto-style27 {
            height: 163px;
        }
        .auto-style28 {
            height: 33px;
            width: 506px;
        }
        .auto-style29 {
            height: 33px;
            width: 584px;
        }
        .auto-style30 {
            height: 33px;
            width: 1439px;
        }
        .auto-style31 {
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <center>
         <h2>Membership Information</h2>
         </center>
    </div> 
  
    
    <table cellpadding="2" aria-checked="false" aria-pressed="false" aria-selected="false" class="auto-style19">
 
        <tr>
            <td class="auto-style29">
            </td>
            <td class="auto-style17">
                <asp:Label ID="Label10" runat="server" ForeColor="Black" Text=" National ID:"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGet" runat="server" BackColor="#4E73DF" ForeColor="White" Text="Get" Width="79px" BorderStyle="None" OnClick="btnGet_Click" />
            </td>
            <td class="auto-style28">
            </td>
            <td class="auto-style28">
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
            </td>
            <td class="auto-style17">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Full Name:"></asp:Label>
            </td>
            <td class="auto-style31">
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
            </td>
            <td class="auto-style28">
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
            </td>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Age:"></asp:Label>
            </td>
            <td class="auto-style31">
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
            </td>
            <td class="auto-style28">
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
            </td>
            <td class="auto-style17">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Birthday"></asp:Label>
            </td>
            <td class="auto-style31">
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtbday" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
            </td>
            <td class="auto-style28">
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Gender:"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style30">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="29px" Width="186px" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Civil Status:"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style30">
                <asp:DropDownList ID="ddlstatus" runat="server" Width="186px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Marriage</asp:ListItem>
                    <asp:ListItem>Widows</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                </td>
            <td class="auto-style17">
                <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Address:"></asp:Label>
            </td>
            <td class="auto-style25">
                </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
                </td>
        </tr>
        <tr>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Contact Number:"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                </td>
            <td class="auto-style17">
                <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style25">
                </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28">
                </td>
            <td class="auto-style28">
                </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btninsert" runat="server" BackColor="#2ECC71" ForeColor="White" Text="Insert" Width="79px" BorderStyle="None" OnClick="btninsert_Click" />
                </td>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" BackColor="#3498DB" ForeColor="White" Text="Update" Width="79px" BorderStyle="None" OnClick="bt_Click" />
                </td>
            <td class="auto-style30">
                &nbsp;<asp:Button ID="btndelete" runat="server" BackColor="#E74C3C" ForeColor="White" Text="Delete" Width="79px" BorderStyle="None" OnClick="btndelete_click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#F1C40F" ForeColor="White" Text="Search" Width="79px" BorderStyle="None" OnClick="Button3_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#9B59B6" ForeColor="White" Text="Clear" Width="79px" BorderStyle="None" OnClick="btnclear_click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#E67E22" ForeColor="White" Text="Load" Width="79px" BorderStyle="None" OnClick="btnload_click" />
                &nbsp;</td>
            <td class="auto-style26">
                </td>
            <td class="auto-style26">
                </td>
            
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">&nbsp;</td>
            <td class="auto-style13" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6" class="auto-style27">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1035px">
                    <HeaderStyle BackColor="#4E73DF" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
 
     
   

</asp:Content>
