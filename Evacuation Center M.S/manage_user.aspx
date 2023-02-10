<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="manage_user.aspx.cs" Inherits="Evacuation_Center_M.S.manage_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-user-lock"></span> Manage Users</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Users</li>
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
                           <th>Users info</th>
                           <th>Account Category</th>
                            <th>User Name</th>
                            <th>Password</th>
                           <th>Account Status</th>
                           <th class="text-right">Action</th>
                        </tr>
                     </thead>
                     <tbody>
                       <!-- <tr>
                           <td>1</td>
                           <td>
                              <p class="info">Name: <b>John Doe</b></p>
                              <p class="info"><small>Designation: <b>Designation 1</b></small></p>
                              <p class="info"><small>Contact: <b>09876543228</b></small></p>
                           </td>
                           <td>Admin</td>
                           <td><span class="badge bg-success">Active</span></td>
                           <td class="text-right">
                              <a class="btn btn-sm btn-success" href="#"><i class="fa fa-edit"></i> edit</a>
                              <a class="btn btn-sm btn-danger" href="#" data-toggle="modal" data-target="#delete"><i
                                    class="fa fa-trash-alt"></i> delete</a>
                           </td>
                        </tr>
                           -->
                                   <%

                         string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         try
                         {
                             SqlConnection con = new SqlConnection(strcon);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("select * from Add_users ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(0).ToString()+ "</TD>");
                                     Response.Write("<TD> <p class='info'><small>Name:</small> <b>" + dr.GetValue(1).ToString()+ "</b></p> <p class='info'><small>Designation: </small><b>" + dr.GetValue(2).ToString()+ "</b></p> <p class='info''><small>Contact: </small><b>" + dr.GetValue(3).ToString()+ "</b></p></TD>");
                                     Response.Write("<TD>" + dr.GetValue(4).ToString()+ "</TD>");
                                     Response.Write("<TD>" + dr.GetValue(5).ToString()+ "</TD>");
                                     Response.Write("<TD>" + dr.GetValue(6).ToString()+ "</TD>");
                                     Response.Write("<td><span class='badge bg-success'>Active</span></td>");
                                     Response.Write("<TD class='text-right'> <a href='update_users.aspx?Reffno="+ dr.GetValue(0).ToString()+"'class='btn btn-sm btn-success' class='fa fa-edit'><i class='fa fa-edit'' ></i> "+
                                         "Edit</a> <a href='delete_users.aspx?Reffno="+ dr.GetValue(0).ToString()+"'class='btn btn-sm btn-danger' ><i class='fa fa-trash-alt'></i>Delete </a> " + "</TD>");

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
                        </tbody>
                  </table>
               </div>
            </div>
      </div>

   <!-- /.container-fluid -->
   </section>
  
</asp:Content>
