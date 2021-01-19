<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />
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
                <li class="nav-item" role="presentation"><a class="nav-link" href="/inviocelist"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Invoice List</strong><br></span></a></li>

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
                    <p class="font-weight-bold">Invoice Page</p>
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-xl-12 mb-4 mb-xl-0">
                            <!-- Section: Live preview -->
                            <section>
                                <ul class="nav nav-pills" id="myTab" role="tablist">
                                    <li class="nav-item waves-effect waves-light">
                                        <a class="nav-link " id="home-tab"  href="hospitalinvoice" role="tab" aria-controls="home" aria-selected="false">Hospital Patient Invoice List</a>
                                    </li>
                                    <li class="nav-item waves-effect waves-light">
                                        <a class="nav-link " id="home-tab"  href="onlineinvoice" role="tab" aria-controls="home" aria-selected="false">Online Patient Invoice List</a>
                                    </li>
                                    <!--                                    <li class="nav-item waves-effect waves-light">
                                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#update" role="tab" aria-controls="profile" aria-selected="false">Update Admin Data</a>
                                                                        </li>
                                                                        <li class="nav-item waves-effect waves-light">
                                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#view" role="tab" aria-controls="profile" aria-selected="false">View Admin Data</a>
                                                                        </li>
                                                                        <li class="nav-item waves-effect waves-light">
                                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#delete" role="tab" aria-controls="profile" aria-selected="false">Delete Admin Data</a>
                                                                        </li>-->
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <!-- Insert Section------------------------------------------------------------------------------------------------------->
                                    <!--                                    <div class="tab-pane fade" id="insert" role="tabpanel" aria-labelledby="home-tab">
                                                                            <section>
                                                                                <div class="container-fluid">
                                                                                    <div class="container mt-5">
                                                                                        <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Insert Admin Details</h4></div>
                                                                                        <form action="/admin/save" method="post">
                                                                                            <div class="form-row p-0 m-0">
                                                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                                                    <div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminid"  nullable = true></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Admin NID" name="admin_nid"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Admin Name" name="admin_name"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Admin Role" name="admin_role"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Admin Password" name="admin_password"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Number" name="hospital_number"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Name" name="hospital_name"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital type" name="hospital_type"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Location" name="hospital_location"/></div>
                                                                                                    <input type="submit" value="Save"/>
                                                                                                    <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> 
                                                                                                </div>
                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </section>
                                                                        </div>-->
                                    <!--Update Section  -------------------------------------------------------------------------------------------------------- -->
                                    <!--                                    <div class="tab-pane fade" id="update" role="tabpanel" aria-labelledby="home-tab">
                                                                            <section>
                                                                                <div class="container-fluid">
                                                                                    <div class="container mt-5">
                                                                                        <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Update Admin Details</h4></div>
                                                                                        <form >
                                                                                            <div class="form-row p-0 m-0">
                                                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                                                    <div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminId"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="number" placeholder="Admin NID" name="adminNid"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Admin Name" name="adminName"/></div>
                                                                                                    <div class="form-group"><input class="form-control" type="password" placeholder="Admin Password" name="adminPassword"></div>
                                                                                                    <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> 
                                                                                                </div>
                                    
                                    
                                    
                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </section>
                                                                        </div>-->
                                    <!-- View Section ------------------------------------------------------------------------------------------------------>
                                    <!--                                    <div class="tab-pane fade" id="view" role="tabpanel" aria-labelledby="profile-tab">
                                                                            <section>
                                                                                <div class="container-fluid">
                                                                                    <div class="container mt-5">
                                    
                                                                                        <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">List Of Admin Details</h4></div>
                                    
                                                                                        <table class="table">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <th scope="col">Admin ID</th>
                                                                                                    <th scope="col">Admin NID</th>
                                                                                                    <th scope="col">Admin Name</th>
                                                                                                    <th scope="col">Admin Password</th>
                                    
                                    
                                    
                                    
                                    
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr >
                                                                                                    <td>
                                    
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                    
                                                                                        </table>
                                    
                                    
                                    
                                                                                    </div>
                                                                                </div>
                                                                            </section>
                                                                        </div>
                                    
                                    -->






                                    <!--Delete Section---------------------------------------------------------------------------------------------------->

                                    <!--                                    <div class="tab-pane fade" id="delete" role="tabpanel" aria-labelledby="profile-tab">
                                                                            <section>
                                    
                                    
                                    
                                                                                <div class="container-fluid">
                                                                                    <div class="container mt-5">
                                                                                        <div ><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Delete Admin Details</h4></div>
                                    
                                                                                        <form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                                                                            <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                                                                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                                                                            </div>
                                                                                        </form>
                                    
                                    
                                                                                        <form >
                                                                                            <div class="form-row p-0 m-0">
                                    
                                                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                    
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electrónico"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Teléfono"></div>
                                                                                                     <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                                </div>
                                                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                    
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                    
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electrónico"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Teléfono"></div>
                                                                                                     <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                                </div>
                                                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                    
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                     <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electrónico"></div> 
                                                                                                     <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Teléfono"></div> 
                                                                                                     <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                                </div>
                                                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                    
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                     <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electrónico"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Teléfono"></div>
                                                                                                    <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                                </div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                                                                                <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="button">Delete</button></div>
                                                                                            </div>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </section>
                                    
                                    
                                                                        </div>-->
                                </div>

                            </section>
                            <!-- Section: Live preview -->

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->


                    </div>

                </div>
            </div>

            <!--             <div class="container-fluid">
                            <div class="container my-4">
                                <p class="font-weight-bold">Hospital Patient Invoice List</p>
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
                                                        <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Patient Name</th>
                                                        <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Patient Gender</th>
                                                        <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Patient Age</th>
                                                        <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Patient Address</th>
                                                        <th id="trs-hd-2" class="col-lg-1" style="width: 528px;">Patient Problem</th>
            
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
                                                        <td>${admin.admin_password}</td>
                                                        <td>${admin.admin_password}</td>
                                                        <td>${admin.admin_password}</td>
            
            
            
                                                        <td><a href="Prescription" ><button class="btn btn-info mb-1"><i class="fa fa-edit" aria-hidden="true"></i></button></a>  
                                                            <a href="/info/admin/adminDelete/${admin.id}" ><button class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></button></a>
            
                                                            <button class="btn btn-success" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button>
                                                            <button class="btn btn-danger" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
            
            
            
            
                                </div>
            
                            </div>
                        </div> -->





        </div>

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />
