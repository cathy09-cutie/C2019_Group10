<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Boardmembers.aspx.cs" Inherits="WebApplication2.Boardmembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
     <div class ="row">
         <div class="col-lg-4 pad-top">
             <div class="panel panel-default" style="margin:30px;margin-left:20px;margin-right:20px">
              <div class ="panel-heading">
                 <h2>Add Board Members</h2>
             </div>
        
         </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="NameField">Name</label>
            <div class="input-group">
                <span class="input-group-addon"><img src="img/user-4-16.png" /></span>
                <asp:TextBox ID ="txtname" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label for="PositionField">Position</label>
            <div class="input-group">
                <span class="input-group=addon"><img src="img/administrator-2-16.png" /></span>
                <asp:TextBox ID ="txtposition" CssClass="form-control" runat="server"></asp:TextBox>
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
                <asp:Button ID="btnaddmembers" runat="server" Text="Insert" CssClass="btn btn-success" OnClick="btnaddmembers_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btndelete_Click" />
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
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="614px">
             <Columns>
                 <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="Position" HeaderText="Position" />
                 <asp:TemplateField HeaderText="Image">
                     <ItemTemplate>
                         <img src ="Image/<%#Eval("Image") %>" style="width:80px;height:100px" />
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <HeaderStyle BackColor="#6699FF" ForeColor="White" />
         </asp:GridView>  
     </div>
 </div>

</asp:Content>
