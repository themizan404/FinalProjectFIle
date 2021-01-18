<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                <!--<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>-->
                <div class="sidebar-brand-text mx-3"><span>Admin</span></div>
            </a>
            <hr class="sidebar-divider my-0">
            <ul
                class="nav navbar-nav text-light" id="accordionSidebar">
                <li class="nav-item" role="presentation"><a class="nav-link active" href="/staff/dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/staff/appointmentform"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Appointment Form</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/onlineappointment/list"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Online Appointment List</strong><br></span></a></li>

            </ul>
            <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
        </div>
    </nav>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>

                    <nav class="navbar navbar-light  ">
                        <div class="container">
                            <p style="color: rgb(66,87,241);font-size: 20px; float: left"><strong>Hospital Management And Information System </strong></p>
                            <ul class="nav navbar-nav flex-nowrap ml-auto">

                            </ul>
                        </div>
                    </nav>
                    <ul class="nav navbar-nav flex-nowrap ml-auto">
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow" role="presentation"><a class="nav-link" href="#"><button class="btn btn-primary" type="button">Logout</button></a></li>
                    </ul>
                </div>
            </nav>
            <div class="container-fluid">
                <div class="container my-4">
                    <p class="font-weight-bold">Online Appointment Form Page</p>
                    <div class="row no-gutters text-left justify-content-center align-items-center" style="height: 100%;">
                        <div class="col-md-12 search-table-col" style="margin-top: 0px;">
                            <div class="form-group pull-right col-lg-4">
                                <input type="text" class="search form-control" placeholder="Search by typing here.."></div>
                            <span class="counter pull-right" style="color: rgb(88,82,82);font-size: 22px;"></span>
                            <div class="table-responsive table-bordered table table-hover table-bordered results"
                                 style="width: 100%;">
                                <table class="table table-bordered table-hover">
                                    <thead class="bill-header cs">
                                        <tr>
                                            <th id="trs-hd" class="col-lg-1" style="width: 528px;">ID</th>
                                            <th id="trs-hd-4" class="col-lg-1" style="width: 500px;">Patient NID</th>
                                            <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Patient Problem</th>
                                            <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Contact Number</th>
                                            <th id="trs-hd-2" class="col-lg-1" style="width: 528px;">Appointment Date</th>

                                            <th id="trs-hd" class="col-lg-2" style="width: 558px;">Approve</th>
                                            <th id="trs-hd" class="col-lg-2" style="width: 558px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="warning no-result">
                                            <td colspan="12"><i class="fa fa-warning"></i>&nbsp; No Result !!!</td>
                                        </tr>
                                        <c:forEach items="${map.onlineAppointments}" var="admin">
                                            <tr>
                                                <td>${admin.id}</td>
                                                <td>${admin.patient_nid}</td>
                                                <td>${admin.patient_problem}</td>
                                                <td>${admin.contact_number}</td>
                                                <td>${admin.appointmentDate}</td>



                                                <td><a href="#" ><button class="btn btn-warning" data-toggle="modal" data-target="#exampleModal">Approve </button></a>  

                                                    <!--                                                <button class="btn btn-success" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button>
                                                                                                    <button class="btn btn-danger" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button>-->
                                                </td>
                                                <td><a href="/admin/adminEdit/${admin.id}" ><button class="btn btn-info mb-1"><i class="fa fa-edit" aria-hidden="true"></i></button></a>  
                                                    <a href="/admin/adminDelete/${admin.id}" ><button class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></button></a>

                                                    <!--                                                <button class="btn btn-success" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button>
                                                                                                    <button class="btn btn-danger" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button>-->
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <form>
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="text-primary input-group-text"><i class="fa fa-envelope-o"></i></span>
                                                            </div><input class="form-control" type="email" required="" placeholder="Email">
                                                            <div class="input-group-append"></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="text-primary input-group-text"><i class="fa fa-lock"></i></span>
                                                            </div><input class="form-control" type="password" required="" placeholder="Password">
                                                            <div class="input-group-append"></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="message-text" class="col-form-label">Message:</label>
                                                        <textarea class="form-control" id="message-text"></textarea>
                                                    </div>
                                                    <div class="form-group"><button class="btn btn-primary btn-lg text-white" style="width: 100%;" type="button">Log in</button></div>
                                                </form>






                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>







    </div>

</div>





<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />



<%--<jsp:include page="/WEB-INF/jsp/common/ForView/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <!--            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                            <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                            <div class="sidebar-brand-text mx-3"><span>Admin</span></div>
                        </a>-->
            <div class="container d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="/info/dashboard" style="width: 55px;height: 60px;"><img src="/resources/vendor/css/assets/img/loader.gif" style="margin-top: 10px;color: rgb(159,86,86);width: 55px;filter: invert(0%);"></a>
                <hr class="sidebar-divider my-0">
                <ul class="nav navbar-nav text-light" id="accordionSidebar">

                    <li class="nav-item" role="presentation"><a class="nav-link " href="/info/patientpage"><i class="fa fa-database"></i><span style="color: rgb(0,21,211);">Patient Management</span></a></li>

                    <li class="nav-item" role="presentation"><a class="nav-link active" href="/info/hospitalpage"><i class="fas fa fa-money"></i><span style="color: rgb(0,21,211);">Hospital Management</span></a></li>

                    <li class="nav-item" role="presentation"><a class="nav-link " href="/info/adminpage"><i class="fas fa-house-leave"></i><span style="color: rgb(0,21,211);">Admin Management</span></a></li>


                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
    </nav>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>

                    <nav class="navbar navbar-light  ">
                        <div class="container">
                            <p style="color: rgb(66,87,241);font-size: 20px; float: left"><strong>Hospital Management And Information System </strong></p>
                            <ul class="nav navbar-nav flex-nowrap ml-auto">

                            </ul>
                        </div>
                    </nav>
                    <ul class="nav navbar-nav flex-nowrap ml-auto">
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow" role="presentation"><a class="nav-link" href="#"><button class="btn btn-primary" type="button">Logout</button></a></li>
                    </ul>
                </div>
            </nav>
            <div class="container-fluid">
                <div class="container my-4">
                    <p class="font-weight-bold">Admin</p>
                    <div class="row no-gutters text-left justify-content-center align-items-center" style="height: 100%;">
                        <div class="col-md-12 search-table-col" style="margin-top: 0px;">
                            <div class="form-group pull-right col-lg-4">
                                <input type="text" class="search form-control" placeholder="Search by typing here.."></div>
                            <span class="counter pull-right" style="color: rgb(88,82,82);font-size: 22px;"></span>
                            <div class="table-responsive table-bordered table table-hover table-bordered results"
                                 style="width: 100%;">
                                <table class="table table-bordered table-hover">
                                    <thead class="bill-header cs">
                                        <tr>
                                            <th id="trs-hd" class="col-lg-1" style="width: 528px;">ID</th>
                                            <th id="trs-hd-4" class="col-lg-1" style="width: 500px;">Admin NID</th>
                                            <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Admin Name</th>
                                            <th id="trs-hd-2" class="col-lg-1" style="width: 528px;">Admin Password</th>

                                            <th id="trs-hd" class="col-lg-2" style="width: 558px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="warning no-result">
                                            <td colspan="12"><i class="fa fa-warning"></i>&nbsp; No Result !!!</td>
                                        </tr>
                                        <c:forEach items="${map.admins}" var="admin">
                                            <tr>
                                                <td>${admin.id}</td>
                                                <td>${admin.admin_nid}</td>
                                                <td>${admin.admin_name}</td>
                                                <td>${admin.admin_password}</td>



                                                <td><a href="/info/admin/adminEdit/${admin.id}" ><button class="btn btn-info mb-1"><i class="fa fa-edit" aria-hidden="true"></i></button></a>  
                                                    <a href="/info/admin/adminDelete/${admin.id}" ><button class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></button></a>

                                                    <!--                                                <button class="btn btn-success" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button>
                                                                                                    <button class="btn btn-danger" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button>-->
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>




                    </div>

                </div>
            </div>







        </div>

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/ForView/footer.jsp" />--%>
