<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <!--            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                            <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                            <div class="sidebar-brand-text mx-3"><span>Hopital</span></div>
                        </a>-->
            <div class="container d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="dashboard" style="width: 55px;height: 60px;"><img src="/resources/vendor/css/assets/img/loader.gif" style="margin-top: 10px;color: rgb(159,86,86);width: 55px;filter: invert(0%);"></a>
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
                    <p class="font-weight-bold">Hospital</p>
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-xl-12 mb-4 mb-xl-0">
                            <!-- Section: Live preview -->
                            <section>
                                <ul class="nav nav-pills" id="myTab" role="tablist">
                                    <li class="nav-item waves-effect waves-light">
                                        <a class="nav-link" id="home-tab" data-toggle="tab" href="#insert" role="tab" aria-controls="home" aria-selected="false">Insert Hospital Data</a>
                                    </li>
                                    <li class="nav-item waves-effect waves-light">
                                        <a class="nav-link" id="profile-tab" href="/info/admin/viewHospital" role="tab" aria-controls="profile" aria-selected="false">Update Hospital Data</a>
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
                                                    <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Insert Hospital Details</h4></div>
                                                    <form action="/info/hospital/save" method="post">
                                                        <div class="form-row p-0 m-0">
                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                <!--<div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminid"  nullable = true></div>-->
                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Number" name="hospital_number" required=""/></div>
                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Name" name="hospital_name" required=""/></div>
                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Hospital type" name="hospital_type" required=""/></div>
                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Location" name="hospital_location" required=""/></div>
                                                                <input type="submit" value="Save"/>
                                                                <!--<div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> -->
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>



                                        </section>
                                    </div>

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



    <!--
    
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
                        <p class="font-weight-bold">Hospital</p>
                        <div class="row">
                             Grid column 
                            <div class="col-xl-12 mb-4 mb-xl-0">
                                 Section: Live preview 
                                <section>
                                    <ul class="nav nav-pills" id="myTab" role="tablist">
                                        <li class="nav-item waves-effect waves-light">
                                            <a class="nav-link" id="home-tab" data-toggle="tab" href="#insert" role="tab" aria-controls="home" aria-selected="false">Insert Hospital Data</a>
                                        </li>
                                        <li class="nav-item waves-effect waves-light">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#update" role="tab" aria-controls="profile" aria-selected="false">Update Hospital Data</a>
                                        </li>
                                        <li class="nav-item waves-effect waves-light">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#view" role="tab" aria-controls="profile" aria-selected="false">View Hospital Data</a>
                                        </li>
                                        <li class="nav-item waves-effect waves-light">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#delete" role="tab" aria-controls="profile" aria-selected="false">Delete Hospital Data</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                         Insert Section-----------------------------------------------------------------------------------------------------
                                        <div class="tab-pane fade" id="insert" role="tabpanel" aria-labelledby="home-tab">
                                            <section>
    
                                            </section>
                                        </div>
                                        Update Section  -------------------------------------------------------------------------------------------------------- 
                                        <div class="tab-pane fade" id="update" role="tabpanel" aria-labelledby="home-tab">
                                            <section>
                                                <div class="container-fluid">
                                                    <div class="container mt-5">
                                                        <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Update Hospital Details</h4></div>
                                                        <form >
                                                            <div class="form-row p-0 m-0">
                                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                    <div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminId"></div>
                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Number" name="hospital_number"/></div>
                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Name" name="hospital_name"/></div>
                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital type" name="hospital_type"/></div>
                                                                    <div class="form-group"><input class="form-control" type="text" placeholder="Hospital Location" name="hospital_location"/></div>
                                                                    <input type="submit" value="Save"/>
                                                                </div>
    
    
    
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                         View Section ----------------------------------------------------------------------------------------------------
                                        <div class="tab-pane fade" id="view" role="tabpanel" aria-labelledby="profile-tab">
                                            <section>
                                                <div class="container-fluid">
                                                    <div class="container mt-5">
    
                                                        <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">List Of Hospital Details</h4></div>
    
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">Hospital ID</th>
                                                                    <th scope="col">Hospital Number</th>
                                                                    <th scope="col">Hospital Name</th>
                                                                    <th scope="col">Hospital Type</th>
                                                                    <th scope="col">Hospital Location</th>
                                                                    <th scope="col">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr >
                                                                    <td>  </td>
                                                                </tr>
                                                            </tbody>
    
                                                        </table>
    
    
    
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
    
    
    
    
    
    
    
    
                                        Delete Section--------------------------------------------------------------------------------------------------
    
                                        <div class="tab-pane fade" id="delete" role="tabpanel" aria-labelledby="profile-tab">
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
    
    
                                        </div>
                                    </div>
    
                                </section>
                                 Section: Live preview 
    
                            </div>
                             Grid column 
    
                             Grid column 
                            <div class="col-xl-6">
    
    
    
    
    
                            </div>
                             Grid column 
    
                        </div>
    
                    </div>
                </div>
    
    
    
    
    
    
    
            </div>
    
        </div>
    -->


</div>




<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


<%--<jsp:include page="/WEB-INF/jsp/common/header.jsp" />





<div class="container" style="margin-top: 90px">
    <ul class="nav nav-pills">
        <li class="active"><a href="#save">Hospital Save &nbsp; </a></li>
        <li><a href="#update">Hospital Update &nbsp; </a></li>
        <li><a href="#ViewAndDelete"> Hospital View And Delete</a></li>

    </ul>
    <!------------------------------------------------------------------------------------------------------------->
    <div class="tab-content">
        <div id="save" class="tab-pane fade in active">
            <div class="container profile profile-view" id="profile-1">
                <form>
                    <div class="form-row profile-row" style="margin-top: 0px;">
                        <div class="col-md-8 offset-xl-2">
                            <h1>Hospital Profile </h1>
                            <hr>
                            <div class="form-group">
                                <label style="font-size: 20px;"><strong>Hospital Number;</strong></label>
                                <input class="border rounded border-dark form-control form-control-lg" type="text" required="" name="hospitalName"></div>
                            <div class="form-group">
                                <label>Hospital Name</label>
                                <input class="form-control" type="text" name="hospitalName" required=""></div>
                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group"><label>Hospital Type</label><select class="form-control" required="" name="hospitalType"><optgroup label="Select Type"><option value="Genaral">Genaral</option><option value="Specialize">Specialize</option></optgroup></select></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label>Hospital Category (if&nbsp;Specialize )</label><select class="form-control" name="hospitalCategory"><optgroup label="Select Category"><option value="General">General</option><option value="13"></option><option value="14">This is item 3</option></optgroup></select></div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group"><label>Location</label><select class="form-control" required="" name="hospitalLocation"><optgroup label="Select Location"><option value="Barisal">Barisal</option><option value="Chittagong">Chittagong</option><option value="Dhaka">Dhaka</option><option value="Khulna">Khulna</option><option value="Mymensingh">Mymensingh</option><option value="Rajshahi">Rajshahi</option><option value="Rangpur">Rangpur</option><option value="Sylhet">Sylhet</option></optgroup></select></div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>NO</th>
                                                        <th>Department Name</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Name</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div><label>Department</label><select class="form-control" required="" name="hospitalLocation"><optgroup label="Select Department"></optgroup></select></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th><br>Laboratory Name</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Name</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div><label>Laboratory</label><select class="form-control" required="" name="hospitalLocation"><optgroup label="Select Laboratory"></optgroup></select></div>
                            <hr>
                            <div class="form-row">
                                <div class="col-md-12 content-right"><button class="btn btn-primary form-btn" type="submit">SAVE </button><button class="btn btn-danger form-btn" type="reset">CANCEL </button></div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------->
        <div id="update" class="tab-pane fade">
            <div class="container profile profile-view" id="profile-1">
                <form>
                    <div class="form-row profile-row" style="margin-top: 0px;">
                        <div class="col-md-8 offset-xl-2">
                            <h1>Update Hospital Profile </h1>
                            <hr>
                            <div class="form-group"><label style="font-size: 20px;"><strong>Hospital Number&nbsp;</strong></label><input class="border rounded border-dark form-control form-control-lg" type="text" required="" name="hospitalName"></div>
                            <div class="form-group"><label>Hospital Name</label><input class="form-control" type="text" name="hospitalName" required=""></div>
                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group"><label>Hospital Type</label><select class="form-control" required="" name="hospitalType"><optgroup label="Select Type"><option value="Genaral">Genaral</option><option value="Specialize">Specialize</option></optgroup></select></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label>Hospital Category (if&nbsp;Specialize )</label><select class="form-control" name="hospitalCategory"><optgroup label="Select Category"><option value="General">General</option><option value="13"></option><option value="14">This is item 3</option></optgroup></select></div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group"><label>Location</label><select class="form-control" required="" name="hospitalLocation"><optgroup label="Select Location"><option value="Barisal">Barisal</option><option value="Chittagong">Chittagong</option><option value="Dhaka">Dhaka</option><option value="Khulna">Khulna</option><option value="Mymensingh">Mymensingh</option><option value="Rajshahi">Rajshahi</option><option value="Rangpur">Rangpur</option><option value="Sylhet">Sylhet</option></optgroup></select></div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>NO</th>
                                                        <th>Department Name</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Name</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div><label>Department</label><select class="form-control" required="" name="hospitalLocation"><optgroup label="Select Department"></optgroup></select></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th><br>Laboratory Name</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Name</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div><label>Laboratory</label><select class="form-control" required="" name="hospitalLocation"><optgroup label="Select Laboratory"></optgroup></select></div>
                            <hr>
                            <div class="form-row">
                                <div class="col-md-12 content-right"><button class="btn btn-primary form-btn" type="submit">SAVE </button><button class="btn btn-danger form-btn" type="reset">CANCEL </button></div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------->
        <div id="ViewAndDelete" class="tab-pane fade">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 search-table-col" style="margin-top: 0px;">
                        <div class="form-group pull-right col-lg-4"><input type="text" class="search form-control" placeholder="Search by typing here.."></div><span class="counter pull-right"></span>
                        <div class="table-responsive table-bordered table table-hover table-bordered results">
                            <table class="table table-bordered table-hover">
                                <thead class="bill-header cs">
                                    <tr>
                                        <th id="trs-hd" class="col-lg-1" style="width: 791px;">ID</th>
                                        <th id="trs-hd-2" class="col-lg-1" style="width: 791px;">Number</th>
                                        <th id="trs-hd-1" class="col-lg-1" style="width: 791px;">Name</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 805px;">Type</th>
                                        <th id="trs-hd" class="col-lg-3" style="width: 825px;">Category</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 839px;">Location</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 818px;">Department</th>
                                        <th id="trs-hd-3" class="col-lg-2" style="width: 818px;">Laboratory</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 816px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="warning no-result">
                                        <td colspan="12"><i class="fa fa-warning"></i>&nbsp; No Result !!!</td>
                                    </tr>
                                    <tr>
                                        <td>01</td>
                                        <td>01</td>
                                        <td>01</td>
                                        <td>India</td>
                                        <td>Souvik Kundu</td>
                                        <td>Bootstrap Stuido</td>
                                        <td>2014</td>
                                        <td>2014</td>
                                        <td><button class="btn btn-success" style="margin-left: 5px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button><button class="btn btn-danger" style="margin-left: 5px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>






<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />--%>