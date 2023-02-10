<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Evacuation_Center_M.S.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Evacuation Center Management System</title>
      <!-- Google Font: Source Sans Pro -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
      <!-- Font Awesome -->
      <link rel="stylesheet" href="asset/fontawesome/css/all.min.css">
      <!-- Theme style -->
      <link rel="stylesheet" href="asset/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
     <div class="login-box">
         <!-- /.login-logo -->
         <div class="card card-outline card-info">
            <div class="card-header text-center">
               <a href="index.html" class="brand-link">
               <img src="asset/img/logo.png" alt="DSMS Logo" width="200">
               </a>
            </div>
            <div class="card-body" >
               <form   id="form" runat="server">
                  <div class="input-group mb-3">
                     <input type="text" id="txtusername" runat="server" class="form-control"  placeholder="Username" required>
                     <div class="input-group-append">
                        <div class="input-group-text">
                           <span class="fas fa-user"></span>
                        </div>
                     </div>
                  </div>
                  <div class="input-group mb-3">

                     <input type="password" id="txtpassword" runat="server" class="form-control" placeholder="Password" required>
                     <div class="input-group-append">
                        <div class="input-group-text">
                           <span class="fas fa-lock"></span>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                    
                     <div class="col-6 offset-3">
                         <asp:Button ID="save" runat="server" type="submit" class="btn btn-block btn-bg" style="background-color: rgb(31,108,163);" Text="Sign in" OnClick="save_Click" />
                     </div>
                  </div>
               </form>
            </div>
            <!-- /.card-body -->
         </div>
         <!-- /.card -->
      </div>
      <!-- /.login-box -->
    
</body>
</html>
