<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/mainbar.Master" AutoEventWireup="true" CodeBehind="update_Barangay.aspx.cs" Inherits="Evacuation_Center_M.S.update_Barangay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!-- Content Header (Page header) -->
         <div class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                        <h1 class="m-0" style="color: rgb(31,108,163);"><span class="fa fa-university"></span> Barangay Information</h1>
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Barangay Information</li>
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
                                 <span class="fa fa-university"> Barangay Information</span>
                              </div>
                              <div class="row">
                                 <div class="col-md-12">
                                    <div class="form-group">
                                       <label>Barangay Name</label>
                                       <input type="text" id="bName" runat="server" class="form-control"  placeholder="Barangay name" required>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-12">
                                 
                                  <asp:Button ID="save" class="btn btn-primary" runat="server" Text="Save" OnClick="Button1_Click" />
                                  <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-danger" Text="Cancel"  />

                              </div>
                  </form>
               </div>

               

               <div class="col-md-9" style="border-left: 1px solid #ddd;">
                  <table id="example1" class="table table-bordered table-hover">
                     <thead>
                        <tr>
                           <th>Barangay Name</th>
                           <th class="text-right">Action</th>
                        </tr>
                     </thead>
                     <tbody>
                       <!-- <tr>
                           <td>@item.BarangayName</td>
                           <td class="text-right">
                              <a class="btn btn-sm btn-success" href="#"><i class="fa fa-edit" ></i> edit</a>
                              <a class="btn btn-sm btn-danger" href="#" data-toggle="modal" data-target="#delete"><i
                                   id="delete" class="fa fa-trash-alt" runat="server"></i> delete</a>
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
                             SqlCommand cmd = new SqlCommand("select * from Barangay_info ", con);
                             SqlDataReader dr = cmd.ExecuteReader();
                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Response.Write("<Tr>");
                                     Response.Write("<TD>" + dr.GetValue(1).ToString()+ "</TD>");
                                     Response.Write("<TD class='text-right'> <a href='Barangay.aspx?Reffno="+ dr.GetValue(0).ToString()+"' class='btn btn-sm btn-success' class='fa fa-edit'><i class='fa fa-edit'' ></i> "+
                                         "Edit</a> <a href='delete_Barangay.aspx?Reffno="+ dr.GetValue(0).ToString()+"' class='btn btn-sm btn-danger' > <i class='fa fa-trash-alt'></i>Delete </a> " + "</TD>");

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
