
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="update_evacuation_center.aspx.cs" Inherits="Evacuation_Center_M.S.update_evacuation_center" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-hotel"></span> Evacuation Center</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Evacuation Center</li>
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
                  <!-- form start -->
                  <form>
                     <div class="card-body">
                        <div class="row">
                           <div class="col-md-3">
                              <div class="card-header">
                                 <span class="fa fa-hotel"> Evacuation Center Info</span>
                              </div>
                              <div class="row">
                                 <div class="col-md-12">
                                    <div class="form-group">
                                       <label>Center Name</label>
                                       <input type="text" id="Center_Name" runat="server" class="form-control" placeholder="Center Name">
                                    </div>
                                 </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                       <label>Address</label>
                                       <textarea class="form-control" width="100" id="C_Address" runat="server"></textarea>
                                    </div>
                                 </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                       <label>Contact Info</label>
                                       <input type="text" id="contect_number" runat="server" class="form-control" placeholder="ex. 09827373213">
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-12">
                                
                                 <asp:Button class="btn btn-primary" ID="save" runat="server" Text="submit" OnClick="save_Click" />
                                  <asp:Button  type="submit" class="btn btn-danger"  runat="server" Text="cancel" />
                                 
                              </div>
                  </form>
               </div>

               <div class="col-md-9" style="border-left: 1px solid #ddd;">
                  <table id="example1" class="table table-bordered table-hover">
                     <thead>
                        <tr>
                           <th>Center Name</th>
                           <th>Address</th>
                           <th>Contact</th>
                           <th class="text-right">Action</th>
                        </tr>
                     </thead>
                     <tbody> 
                       <%

                         string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                         try
                         {
                             SqlConnection con = new SqlConnection(strcon);
                             if (con.State == System.Data.ConnectionState.Closed)
                             {
                                 con.Open();
                             }
                             SqlCommand cmd = new SqlCommand("select * from Evacuation_Center ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(1).ToString()+ "</TD>");
                                       Response.Write("<TD>" + dr.GetValue(2).ToString()+ "</TD>");
                                       Response.Write("<TD>" + dr.GetValue(3).ToString()+ "</TD>");
                                     Response.Write("<TD class='text-right'> <a href='UpdateCustomer.aspx?Reffno="+ dr.GetValue(1).ToString()+"'class='btn btn-sm btn-success' class='fa fa-edit'><i class='fa fa-edit'' ></i> "+
                                         "Edit</a> <a href='Canel.aspx?Reffno="+ dr.GetValue(1).ToString()+"'class='btn btn-sm btn-danger' data-toggle='modal' data-target='#delete'><i class='fa fa-trash-alt'></i>Delete </a> " + "</TD>");

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
         <div id="delete" class="modal animated rubberBand delete-modal" role="dialog">
      <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content">
            <div class="modal-body text-center">
               <img src="../asset/img/sent.png" alt="" width="50" height="46">
               <h3>Are you sure want to delete this Barangay?</h3>
               <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                  <button type="submit" class="btn btn-danger">Delete</button>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
