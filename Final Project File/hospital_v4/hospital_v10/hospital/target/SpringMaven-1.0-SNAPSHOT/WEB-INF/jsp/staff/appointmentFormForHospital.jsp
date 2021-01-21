<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="nav-item" role="presentation"><a class="nav-link" href="/hospitalinvoice"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Invoice List</strong><br></span></a></li>
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
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-xl-12 mb-4 mb-xl-0">
                            <!-- Section: Live preview -->
                            <section>
                                <form action="/physicalappointment/save" method="post">
                                    <div class="form-row p-0 m-0">
                                        <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                            <!--<div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminid"  nullable = true></div>-->
                                            <div class="form-group">
                                                <label>
                                                    <strong>

                                                        Patient NID
                                                    </strong>
                                                </label>
                                                <input class="form-control" value="${map.onlineAppointment.patient_nid}" type="text" id="patient_nid" name="patient_nid" style="font-size: 30px"/></div>
                                            <div class="form-group">
                                                <label>
                                                    <strong>

                                                        Patient Name
                                                    </strong>
                                                </label><input class="form-control" type="text" value=""  name="patient_name"  id="patient_name" /></div>
                                            <div class="form-group">
                                                <label>
                                                    <strong>

                                                        Patient Gender
                                                    </strong>
                                                </label><input class="form-control" type="text"  name="patient_gender" id="patient_gender" /></div>
                                            <div class="form-group">
                                                <label>
                                                    <strong>

                                                        Patient Age
                                                    </strong>
                                                </label><input class="form-control" type="text"  name="patient_age" id="patient_age" /></div>
                                            <div class="form-group">
                                                <label>
                                                    <strong>

                                                        Patient Address
                                                    </strong>
                                                </label><input class="form-control" type="text"  name="patientAddress" id="patient_address" />
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    <strong>

                                                        Patient Problem
                                                    </strong>
                                                </label>
                                                <select class="form-control" name="patient_problem" >
                                                    <optgroup label="Select A Department">
                                                        <option value="Cardiology" >Cardiology</option>
                                                        <option value="Diagnostic imaging" >Diagnostic imaging</option>
                                                        <option value="Discharge lounge" >Discharge lounge</option>
                                                        <option value="Ear nose and throat" >Ear nose and throat</option>
                                                        <option value="General surgery" >General surgery</option>
                                                        <option value="Gynaecology" >Gynaecology</option>
                                                        <option value="Haematology" >Haematology</option>
                                                        <option value="Nephrology" >Nephrology</option>

                                                    </optgroup>
                                                </select>
                                            </div>




                                            <div class="d-flex justify-content-center">

                                                <input class="mr-5 btn btn-primary" type="button" value="Search" id="btnSearch"/> 
                                                <input class="mr-3 btn btn-success" type="submit" value="Save" /> 
                                            </div>
                                        </div>
                                    </div>
                                </form>



                            </section>
                            <!-- Section: Live preview -->

                        </div>

                    </div>

                </div>
            </div>







        </div>

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />


<script>

    $("#btnSearch").click(function () {
        $.get("http://localhost:8080/info/getPatientByNid/" + $("#patient_nid").val(), function (data, status) {
//            console.log(data);

            $("#patient_name").val(data.patient_name);
            $("#patient_gender").val(data.patient_gender);
            $("#patient_age").val(data.patient_age);
            $("#patient_address").val(data.patient_address);
        });
    });
</script>