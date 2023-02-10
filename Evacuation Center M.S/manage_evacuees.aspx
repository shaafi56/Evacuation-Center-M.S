<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="manage_evacuees.aspx.cs" Inherits="Evacuation_Center_M.S.manage_evacuees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-address-card"></span> Manage Evacuees</h1>
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
                  <table id="example1" class="table table-bordered table-striped">
                     <thead>
                        <tr>
                           <th>#</th>
                           <th>Full Name </th>
                           <th>Contect</th>
                           <th>age</th>
                           <th>gender</th>
                           <th>Head of family</th>
                            <th>Address</th>
                           <th class="text-right">Action</th>
                        </tr>
                     </thead>
                  <%

                         string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         try
                         {
                             SqlConnection con = new SqlConnection(strcon);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("select * from Add_evacues ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(0).ToString()+ "</TD>");
                                       Response.Write("<TD>" + dr.GetValue(1).ToString()+ "</TD>");
                                       Response.Write("<TD>" + dr.GetValue(2).ToString()+ "</TD>");
                                   Response.Write("<TD>" + dr.GetValue(3).ToString()+ "</TD>");
                                   Response.Write("<TD>" + dr.GetValue(4).ToString()+ "</TD>");
                                   Response.Write("<TD>" + dr.GetValue(5).ToString()+ "</TD>");
                                   Response.Write("<TD>" + dr.GetValue(6).ToString()+ "</TD>");
                                     Response.Write("<TD class='text-right'> <a href='update_evacuees_info.aspx?Reffno="+ dr.GetValue(0).ToString()+"'class='btn btn-sm btn-success' class='fa fa-edit'><i class='fa fa-edit'' ></i> "+
                                         "Edit</a> <a href='delete_evacues_info.aspx?Reffno="+ dr.GetValue(0).ToString()+"'class='btn btn-sm btn-danger'><i class='fa fa-trash-alt'></i>Delete </a> " + "</TD>");

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
    <div id="delete" class="modal animated rubberBand delete-modal" role="dialog">
      <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content">
            <div class="modal-body text-center">
               <img src="../asset/img/sent.png" alt="" width="50" height="46">
               <h3>Are you sure want to delete this Evacuees?</h3>
               <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                  <button type="submit" class="btn btn-danger">Delete</button>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
