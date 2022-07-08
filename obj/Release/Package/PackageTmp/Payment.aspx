<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication2.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class ="row">

         <div class="col-lg-4 pad-top">
             <div class="panel panel-default" style="margin:30px;margin-left:20px;margin-right:20px">
        </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="IDField">National ID</label>
            <div class="auto-style1">
                <asp:TextBox ID ="txtid" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label for="NameField">Name</label>
            <div class="input-group">
                <asp:TextBox ID ="txtname" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>


         <div class="form-group">
            <label for="PriceField">Price</label>
            <div class="input-group">
                <asp:TextBox ID ="txtprice" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label for="PaymentField">Payment</label>
            <div class="input-group">
                <asp:DropDownList ID="ddlPayment" runat="server" Width="283px" ForeColor="Black">
                    <asp:ListItem>Paid</asp:ListItem>
                    <asp:ListItem>Not Paid</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <div class="input-group">
                <asp:Button ID="btnSave" runat="server" Text="Insert" CssClass="btn btn-success" OnClick="btnSave_Click" style="height: 31px" />
                &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnedit" runat="server" Text="Edit" CssClass="btn btn-info" OnClick="btnEdit_Click" height="31px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btndelete_Click" style="height: 31px" />
                 </div>
        </div>

        <div class="col-lg-8" style="margin-top:30px">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="948px">
             <Columns>
                 <asp:BoundField DataField="NationalID" HeaderText="National ID" />
                 <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="Price" HeaderText="Price" />
                 <asp:BoundField DataField="Paid" HeaderText="Payment" />
             </Columns>
             <HeaderStyle BackColor="#6699FF" ForeColor="White" />
         </asp:GridView>  
     </div>
        </div>
</div>
         </div>
</asp:Content>
