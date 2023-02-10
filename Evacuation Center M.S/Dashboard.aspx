<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Evacuation_Center_M.S.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <!-- Content Header (Page header) -->
            <div class="content-header">
               <div class="container-fluid">
                  <div class="row mb-2">
                     <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-tachometer-alt"></span> Dashboard</h1>
                     </div>
                     <!-- /.col -->
                     <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                           <li class="breadcrumb-item"><a href="#">Home</a></li>
                           <li class="breadcrumb-item active">Dashboard</li>
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
                  <!-- Small boxes (Stat box) -->
                  <div class="row">
                     <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Number of Family</span>
                <span class="info-box-number">
                  50
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-user"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Number of Evacuees</span>
                <span class="info-box-number">
                 100
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
                      <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box">
              <span class="info-box-icon bg-indigo elevation-1"><i class="fas fa-user"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Calamity</span>
                <span class="info-box-number">
                 <%
                     string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         
                         try
                         {
                             SqlConnection con = new SqlConnection(strcon);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Calamity_Type ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(0).ToString()+ "</TD>");
                                     Response.Write("</Tr>");
                                 }
                             }
                             con.Close();
                         }

                         catch (Exception ex)
                         {
                             Response.Write("<script>alert('" + ex.Message + "');</script>");
                         }

                    %>  
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
                      <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Users</span>
                <span class="info-box-number">
                 <%

                         string conns = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         try
                         {
                             SqlConnection con = new SqlConnection(conns);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Add_users ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(0).ToString()+ "</TD>");
                                     Response.Write("</Tr>");
                                 }
                             }
                             con.Close();
                         }

                         catch (Exception ex)
                         {
                             Response.Write("<script>alert('" + ex.Message + "');</script>");
                         }

                    %> 
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-venus"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Number of Female</span>
                <span class="info-box-number">10</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-mars"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Number of Male</span>
                <span class="info-box-number">20</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-university"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Number of Barangay</span>
                <span class="info-box-number"> <%

                         string conn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         try
                         {
                             SqlConnection con = new SqlConnection(conn);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Barangay_Info ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(0).ToString()+ "</TD>");
                                     Response.Write("</Tr>");
                                 }
                             }
                             con.Close();
                         }

                         catch (Exception ex)
                         {
                             Response.Write("<script>alert('" + ex.Message + "');</script>");
                         }

                    %>   </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-indigo elevation-1"><i class="fas fa-hotel"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Number of Evacuation Center</span>
                <span class="info-box-number">
                     <%

                         string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         try
                         {
                             SqlConnection con = new SqlConnection(strconn);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Evacuation_Center ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(0).ToString()+ "</TD>");
                                     Response.Write("</Tr>");
                                 }
                             }
                             con.Close();
                         }

                         catch (Exception ex)
                         {
                             Response.Write("<script>alert('" + ex.Message + "');</script>");
                         }

                    %>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
        </div>
                  </div>
                 
</asp:Content>
