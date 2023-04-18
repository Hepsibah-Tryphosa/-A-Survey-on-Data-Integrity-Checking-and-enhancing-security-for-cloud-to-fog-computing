<%-- 
    Document   : index
    Created on : 19 Dec, 2020, 11:17:23 AM
    Author     : aruma
--%>

<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Fog-Computing</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- end Preloader -->

    <div class="container-fluid">
        <!-- box header -->
        <header class="box-header">
            <div class="box-logo">
                <!--<a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>-->
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <!--<li class="box-label">About me</li>-->

                <li><a href="ohome.jsp">Home</a></li>
                            <li><a href="pkreq.jsp">Public Key Request</a></li>
                            <li><a href="uploadfile.jsp">Upload File</a></li>
                            <li><a href="ovfilereq.jsp">View Data User File Access Request</a></li>
                            <li><a href="ouploadfiles.jsp">View Uploaded Files</a></li>
                            <li><a href="olog.jsp">Logout</a></li>
            </ul>
        </nav>
        <!-- end nav -->

        <!-- box-intro -->
        <section class="box-intro">
            <div class="table-cell">
                <!--<h1 class="box-headline letters rotate-2">
                    <span class="box-words-wrapper">
                        <b class="is-visible">design.</b>
                        <b>&nbsp;coding.</b>
                        <b>graphic.</b>
                    </span>
		        </h1>-->
                <h3 style="color: red"><center><h2 style="color: #e60498">UPLOADED FILES </h2></center><br><br><br>
                    
                    
                    <center> <table summary="Summary Here" cellpadding="0" cellspacing="0">
                            <thead>
                                <tr>                                    
                                    <th>File Id&nbsp;&nbsp;&nbsp;&nbsp;</th>                                                       
                                    <th>File Name &nbsp;&nbsp;&nbsp;&nbsp;</th>
                                    <th>Description&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                    <th>Access Privilege&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                    <th>Time</th>                                                                        
                                </tr>
                            </thead>
                            <%
                                String id = (String) session.getAttribute("oid");
                                System.out.println("uiddd for key====" + id);
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from fileupload where oid='"+id+"'");
                                    while (rs.next()) {%>

                                    <tr class="light" style="color: black">
                                <td><%=rs.getString("id")%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td><%=rs.getString("filename")%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td><%=rs.getString("des")%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td><%=rs.getString("accesspolicy")%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                 <td><%=rs.getString("time")%>&nbsp;&nbsp;&nbsp;&nbsp;</td>                                                                                                                                                               
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>

                        </table> </center>  </h3>
            </div>

            <!--<div class="mouse">
                <div class="scroll"></div>
            </div>-->
        </section>
        <!-- end box-intro -->
    </div>

    <!-- portfolio div -->
    
    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Box Portfolio 2016</p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->



    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="js/custom.js"></script>

</body>

</html>