<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="Evacuees_report.aspx.cs" Inherits="Evacuation_Center_M.S.Evacuees_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-chart-bar"></span> List of Evacuees</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Evacuees</li>
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

               <div class="col-md-12">
                  <table id="example1" class="table table-bordered table-hover">
                     <thead>
                        <tr>
                           <th>#</th>
                           <th>Name</th>
                           <th>Barangay</th>
                           <th>Age</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>1</td>
                           <td>Jane Doe</td>
                           <td>Barangay 1</td>
                           <td>34</td>
                        </tr>
                        <tr>
                           <td>2</td>
                           <td>John Doe</td>
                           <td>Barangay 1</td>
                           <td>37</td>
                        </tr>
                        <tr>
                           <td>3</td>
                           <td>Andew Tan</td>
                           <td>Barangay 2</td>
                           <td>45</td>
                        </tr>
                        <tr>
                           <td>4</td>
                           <td>James Tan</td>
                           <td>Barangay 3</td>
                           <td>45</td>
                        </tr>
                        <tr>
                           <td>5</td>
                           <td>Liz Uy</td>
                           <td>Barangay 4</td>
                           <td>45</td>
                        </tr>
                        </tbody>
                  </table>
               </div>
            </div>
      </div>

   <!-- /.container-fluid -->
   </section>
   
</asp:Content>
