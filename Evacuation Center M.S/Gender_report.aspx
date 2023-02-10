﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="Gender_report.aspx.cs" Inherits="Evacuation_Center_M.S.Gender_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Content Header (Page header) -->
            <div class="content-header">
               <div class="container-fluid">
                  <div class="row mb-2">
                     <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-chart-pie"></span> Reports by Gender</h1>
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
                           <table class="table table-hver custom-table mb-0 datatable">
                              <thead>
                                  <tr>
                                      <th>Male</th>
                                      <th>Female</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td>45</td>
                                      <td>55</td>
                                  </tr>
                              </tbody>
                          </table>
                          </div>
                      </div>
                  </div>
                  <div class="col-12 col-md-8 col-lg-8 col-xl-8">
                      <div class="card">
                          <div class="card-body">
                              <div class="chart chart-lg">
                               <canvas id="chartjs-pie"></canvas>
                           </div>
                          </div>
                      </div>
                  </div>
                </div>
                  </div>
                  <!-- /.row -->
                  <!-- /.row (main row) -->
               </div>
               
</asp:Content>
