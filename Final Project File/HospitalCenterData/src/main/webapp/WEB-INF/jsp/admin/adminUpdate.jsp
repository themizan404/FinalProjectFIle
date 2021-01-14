<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                <!--<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>-->
                <div class="sidebar-brand-text mx-3"><span>Admin</span></div>
            </a>
            <hr class="sidebar-divider my-0">
            <ul class="nav navbar-nav text-light" id="accordionSidebar">

                <li class="nav-item" role="presentation"><a class="nav-link " href="patientpage"><i class="fa fa-database"></i><span style="color: rgb(0,21,211);">Patient Management</span></a></li>

                <li class="nav-item" role="presentation"><a class="nav-link active" href="hospitalpage"><i class="fas fa fa-money"></i><span>Hospital Management</span></a></li>

                <li class="nav-item" role="presentation"><a class="nav-link " href="adminpage"><i class="fas fa-house-leave"></i><span>Admin Management</span></a></li>


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
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-xl-12 mb-4 mb-xl-0">
                            <!-- Section: Live preview -->
                            <section>
                                <ul class="nav nav-pills" id="myTab" role="tablist">
                                    <li class="nav-item waves-effect waves-light">
                                        <a class="nav-link" id="home-tab" data-toggle="tab" href="#insert" role="tab" aria-controls="home" aria-selected="false">Insert Admin Data</a>
                                    </li>
                                    <li class="nav-item waves-effect waves-light">
                                        <a class="nav-link" id="profile-tab" href="/info/viewAdmin" role="tab" aria-controls="profile" aria-selected="false">Update Admin Data</a>
                                    </li>
                                    <!--                                    <li class="nav-item waves-effect waves-light">
                                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#view" role="tab" aria-controls="profile" aria-selected="false">View Admin Data</a>
                                                                        </li>
                                                                        <li class="nav-item waves-effect waves-light">
                                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#delete" role="tab" aria-controls="profile" aria-selected="false">Delete Admin Data</a>
                                                                        </li>-->
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <!-- Insert Section------------------------------------------------------------------------------------------------------->
                                    <div class="tab-pane fade" id="insert" role="tabpanel" aria-labelledby="home-tab">
                                        <section>
                                            <div class="container-fluid">
                                                <div class="container mt-5">
                                                    <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Update Admin Details</h4></div>
                                                    <form action="/info/admin/adminUpdate" method="post">
                                                        <div class="form-row p-0 m-0">
                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                <div class="form-group"><input class="form-control" type="hidden" placeholder="Admin Id" name="id" value="${map.admin.id}"/></div>
                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Admin NID" name="admin_nid" value="${map.admin.admin_nid}"/></div>
                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Admin Name" name="admin_name" value="${map.admin.admin_name}"/></div>

                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Admin Password" name="admin_password" value="${map.admin.admin_password}"/></div>
                                                                <input type="submit" value="Update"/>
                                                                <!-- <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> -->
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
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
                                                                        </div>-->








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
                        <div class="col-xl-6">





                        </div>
                        <!-- Grid column -->

                    </div>

                </div>
            </div>







        </div>

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
