<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="update_evacuees_info.aspx.cs" Inherits="Evacuation_Center_M.S.update_evacuees_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6 animated bounceInRight">
                     <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-address-card"></span> Add Evacuees</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Add Evacuees</li>
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
                     <h3 class="card-title">Evacuees Information</h3>
                  </div>
                  <!-- /.card-header -->
                  <!-- form start -->
                  <form>
                     <div class="card-body">
                        <div class="row">
                           <div class="col-md-12">
                              <div class="row">
                                
                                <div class="col-md-3">
                                    <div class="form-group">
                                       <label>full name</label>
                                       <input type="text" id="fullName" runat="server" class="form-control" placeholder="full Name" required >
                                    </div>
                                 </div>
                                 <div class="col-md-3">
                                    <div class="form-group">
                                       <label>Contacts</label>
                                       <input type="number" id="contect_number" runat="server" class="form-control" placeholder="ex. 09864723647" required >
                                    </div>
                                 </div>
                                 <div class="col-md-3">
                                    <div class="form-group">
                                       <label>Age</label>
                                       <input type="number" id="E_Age" runat="server" class="form-control" placeholder="Age" required>
                                    </div>
                                 </div>
                                  <div class="col-md-3">
                                    <div class="form-group">
                                       <label>Gender</label>
                                       <input type="text" id="gender" runat="server" class="form-control" placeholder="gender" required >
                                    </div>
                                 </div>
                                  
                                   </div>
                                   <div class="col-md-3">
                                    <div class="form-group">
                                       <label>head of family</label>
                                       <input type="text" id="headFamily" runat="server" class="form-control" placeholder="head of family" required >
                                    </div>
                                 </div>
                                 
                                 <div class="col-md-12">
                                    <div class="form-group">
                                       <label>Address</label>
                                       <textarea id="E_Address" runat="server" class="form-control" required ></textarea>
                                    </div>
                                 </div>
                                
                                 
                              </div>
                           </div>
                        </div>

                     </div>
                     <!-- /.card-body -->

                     <div class="card-footer">
                         <asp:Button  ID="save" runat="server" Text="Submit" class="btn btn-primary" OnClick="save_Click1" />
                     </div>
                  </form>
               </div>
            </div>
</asp:Content>
