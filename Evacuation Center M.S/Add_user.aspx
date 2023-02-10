<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="Add_user.aspx.cs" Inherits="Evacuation_Center_M.S.Add_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6 animated bounceInRight">
                     <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-user-lock"></span> Add Users</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Add Users</li>
                     </ol>
                  </div>
                  <!-- /.col -->
               </div>
               <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
         </div>
         <!-- /.content-header -->
         <!-- Main content -->
         <section class="content">
            <div class="container-fluid">
               <div class="card card-info">
                  <div class="card-header">
                     <h3 class="card-title">Users Information</h3>
                  </div>
                  <!-- /.card-header -->
                  <!-- form start -->
                  <form>
                     <div class="card-body">
                        <div class="row">
                           <div class="col-md-12">
                              <div class="row">
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Full Name</label>
                                       <input  type="text" id="full_Name" runat="server" class="form-control" placeholder="Full Name" required>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Designation</label>
                                       <input  type="text" id="Designation" runat="server" class="form-control" placeholder="Designation" required>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Contact Info</label>
                                       <input  type="text" id="ContactInfo" runat="server" class="form-control" placeholder="ex. 252 61 6242611" required>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Account Category</label>
                                        <input type="text" id="AccountCategory" runat="server"  class="form-control" placeholder="Account Category" required>
                                    </div>
                                 </div>
                                 
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Username</label>
                                       <input  type="text" id="UserName" runat="server" class="form-control" placeholder="Username" required>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Password</label>
                                       <input  type="password" id="Password" runat="server" class="form-control" placeholder="**********" required>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>

                     </div>
                     <!-- /.card-body -->

                     <div class="card-footer">
                        <asp:Button ID="save" runat="server"  class="btn btn-primary" Text="Save" OnClick="save_Click" />
                         <asp:Button ID="cancel" runat="server" type="submit" class="btn btn-danger" Text="Cancel"  />
                     </div>
                  </form>
               </div>
            </div>
           
</asp:Content>
