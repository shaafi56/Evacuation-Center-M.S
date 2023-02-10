<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="LGU_settings.aspx.cs" Inherits="Evacuation_Center_M.S.LGU_settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6 animated bounceInRight">
                     <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-landmark"></span> LGU Settings</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">LGU Settings</li>
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
                     <h3 class="card-title">LGU Information</h3>
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
                                       <label>City</label>
                                       <input type="text" class="form-control" placeholder="ex. Pasig">
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Contact Info</label>
                                       <input type="text" class="form-control" placeholder="ex. 09090898574">
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                       <label>Email Address</label>
                                       <input type="text" class="form-control" placeholder="ex. email.@gmail.com">
                                    </div>
                                 </div>
                                 <div class="col-md-6">
                                    <div class="form-group">
                                       <label>Website</label>
                                       <input type="text" class="form-control" placeholder="https://website.com/websitename">
                                    </div>
                                 </div>
                                 <div class="col-md-6">
                                    <div class="form-group">
                                       <label>Facebook Page</label>
                                       <input type="text" class="form-control" placeholder="https://facebook.com/fbpagename">
                                    </div>
                                 </div>
                                 
                              </div>
                           </div>
                        </div>

                     </div>
                     <!-- /.card-body -->

                     <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Save</button>
                     </div>
                  </form>
               </div>
            </div>
            <!-- /.container-fluid -->
         </section>
         
</asp:Content>
