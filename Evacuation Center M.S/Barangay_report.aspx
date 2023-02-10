<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="Barangay_report.aspx.cs" Inherits="Evacuation_Center_M.S.Barangay_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!-- Content Header (Page header) -->
            <div class="content-header">
               <div class="container-fluid">
                  <div class="row mb-2">
                     <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-chart-pie"></span> Reports by Barangay</h1>
                     </div>
                     <!-- /.col -->
                     <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                           <li class="breadcrumb-item"><a href="#">Home</a></li>
                           <li class="breadcrumb-item active">Reports</li>
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
                <div class="row">
                    <div class="col-12 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-bordered mytable"> 
                              <thead>
                                 <tr>
                                     <th>Barangay</th>
                                     <th>Number</th>
                                 </tr>
                             </thead>
                                    <tbody>
                                       <tr>
                                           <td>Barangay 1</td>
                                           <td>22</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 2</td>
                                           <td>5</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 3</td>
                                           <td>10</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 4</td>
                                           <td>15</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 5</td>
                                           <td>10</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 6</td>
                                           <td>8</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 7</td>
                                           <td>9</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 8</td>
                                           <td>5</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 9</td>
                                           <td>7</td>
                                       </tr>
                                       <tr>
                                           <td>Barangay 10</td>
                                           <td>9</td>
                                       </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-8 col-lg-8 col-xl-8">
                        <div class="card">
                            <div class="card-body">
                                <canvas id="bargraph"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                  </div>
                 
                <script>
        document.addEventListener("DOMContentLoaded", function () {

            // Bar Chart

            var barChartData = {
                labels: ["Barangay 1","Barangay 2","Barangay 3","Barangay 4","Barangay 5","Barangay 6","Barangay 7","Barangay 8","Barangay 9","Barangay 10"],
                datasets: [{
                    label: 'Evacuees',
                    backgroundColor: 'rgb(79,129,189)',
                    borderColor: 'rgba(0, 158, 251, 1)',
                    borderWidth: 1,
                    data: [22,5,10,15,10,8,9,5,7,9]
                }]
            };

            var ctx = document.getElementById('bargraph').getContext('2d');
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    responsive: true,
                    legend: {
                        display: false,
                    }
                }
            });

        });
                </script>
</asp:Content>
