<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Active Membership
                            </div>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            
                        </div>
                        <div class="col-auto">
                    
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Facility List
                            </div>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>   
                        </div>
                        <div class="col-auto">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                Property List       
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col">
             
                                    </div>
                                
                            </div>
                        </div>
                        <div class="col-auto">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <!-- Content Row -->

    <div class="row">

        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    
                     <div class="card-body">
                         <asp:Label ID="Label1" runat="server" Text="Post Announcement"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtpost" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                </div>
                 <div class="card-body">
                           <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" />
                        </div>
            </div>
        </div>
        </div>
        </div>
    
     <div class="col-lg-8" style="margin-top:30px">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="830px">
             <Columns>
                 <asp:BoundField DataField="Post" HeaderText="Announcement Board" />
               
                
             </Columns>
             <HeaderStyle BackColor="#6699FF" ForeColor="White" />
         </asp:GridView>  
         </div>
</asp:Content>
