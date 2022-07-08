 <%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Properties.aspx.cs" Inherits="WebApplication2.Properties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class ="row">

         <div class="col-lg-4 pad-top">
             <div class="panel panel-default" style="margin:30px;margin-left:20px;margin-right:20px">
        </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="ItemField">Item ID</label>
            <div class="auto-style1">
                <asp:TextBox ID ="txtitemid" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label for="NameField">Item Name</label>
            <div class="input-group">
                <asp:TextBox ID ="txtname" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>


        <div class="form-group">
            <label for="DescriptionField">Description</label>
            <div class="input-group">
                <asp:TextBox ID ="txtdes" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

         <div class="form-group">
            <label for="PriceField">Price</label>
            <div class="input-group">
                <asp:TextBox ID ="txtprice" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label for="AvailableField">Availability</label>
            <div class="input-group">
                <asp:DropDownList ID="ddlAvailable" runat="server" Width="283px" ForeColor="Black">
                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Rented</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <label for="PhotoField">Upload Photo</label>
            <div class="input-group">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
        </div>

         
        <div class="form-group">
            <div class="input-group">
                <asp:Button ID="btnAddItem" runat="server" Text="Insert" CssClass="btn btn-success" OnClick="btnitem_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnedit" runat="server" Text="Edit" CssClass="btn btn-info" OnClick="btnedit_Click" />
             &nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btndelete_Click" />
            </div>
        </div>

        <div class="form-group">
            <div class="input-group">
            </div>
        </div>
        <asp:Label ID="Lblmsg" runat="server" Text=""></asp:Label>
     </div>
       </div>
        

     <div class="col-lg-8" style="margin-top:30px">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="750px">
             <Columns>
                 <asp:BoundField DataField="Item_ID" HeaderText="Item Id" />
                 <asp:BoundField DataField="Item_Name" HeaderText="Item Name" />
                  <asp:BoundField DataField="Description" HeaderText="Description" />
                 <asp:BoundField DataField="Price" HeaderText="Price" />
                 <asp:BoundField DataField="Available" HeaderText="Available" />
                 <asp:TemplateField HeaderText="Image">
                     <ItemTemplate>
                         <img src ="Image/<%#Eval("Image") %>" style="width:250px;height:200px" />
                     </ItemTemplate>
                 </asp:TemplateField>   
                
             </Columns>
             <HeaderStyle BackColor="#6699FF" ForeColor="White" />
         </asp:GridView>  
     </div>
</div>
</asp:Content>
