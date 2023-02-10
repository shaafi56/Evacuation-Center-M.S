<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="Evacuation_Center.aspx.cs" Inherits="Evacuation_Center_M.S.Evacuation_Center" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
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
                                     Response.Write("<TD class='text-right'> <a href='update_evacuation_center.aspx?Reffno="+ dr.GetValue(0).ToString()+"'class='btn btn-sm btn-success' class='fa fa-edit'><i class='fa fa-edit'' ></i> "+
                                         "Edit</a> <a href='delete_evacuation_center.aspx?Reffno="+ dr.GetValue(0).ToString()+"'class='btn btn-sm btn-danger'><i class='fa fa-trash-alt'></i>Delete </a> " + "</TD>");

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
   
</asp:Content>
