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
                <!--<li class="nav-item" role="presentation"><a class="nav-link active" href="/staff/dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>-->
                <li class="nav-item" role="presentation"><a class="nav-link" href="/doctor/dashboard"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Waiting List</strong><br></span></a></li>
                <!--<li class="nav-item" role="presentation"><a class="nav-link" href="/staff/onlineappointmentform"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Online Appointment List</strong><br></span></a></li>-->

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

            <div class="container" style="margin-top: 10px;">
                <form action="/patientSave" method="post" style="margin-bottom: 10px;">
                    <div class="form-row">
                        <div class="col">
                            <fieldset>
                                <legend>Pateint Details</legend>
                                <div class="form-row">
                                    <div class="col"><label>Patient NID</label>
                                        <input class="form-control" type="text" name="patient_nid" value="${map.hospitalAppointment.patient_nid}"/></div>
                                    <div class="col"><label>Patient Name</label>
                                        <input class="form-control" type="text" name="patient_name" value="${map.hospitalAppointment.patient_name}"/></div>
                                    <div class="col"><label>Age</label>
                                        <input class="form-control" type="text" name="patient_age" value="${map.hospitalAppointment.patient_age}"/></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label>Gender</label>
                                        <input class="form-control" type="text" name="patient_gender" value="${map.hospitalAppointment.patient_gender}"/></div>
                                    <div class="col"><label>Address</label>
                                        <input class="form-control" type="text" name="patient_address" value="${map.hospitalAppointment.patient_address}"/></div>
                                    <div class="col"><label>Temperature</label>
                                        <input class="form-control" type="text" name="temperature" /></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label>Weight</label>
                                        <input class="form-control" type="text" name="weight"/></div>
                                    <div class="col"><label>Blood Pressure</label>
                                        <input class="form-control" type="text" name="blood_pressure"/></div>
                                    <div class="col"><label>Date</label>
                                        <input class="form-control" type="date" name="date"/></div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <hr style="background-color: #ff0000;height: 3px;">
                    <div class="form-row">
                        <div class="col">
                            <fieldset>
                                <legend>Patient History<a class="text-center float-right" href="#" style="color: rgb(0,10,255);">Click for Old Report</a></legend>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Diagnosis</th>
                                                        <th>Medicine</th>
                                                        <th>Test Result</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Cell 1</td>
                                                        <td>Cell 1</td>
                                                        <td>Cell 1</td>
                                                        <td>Cell 1</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <hr style="background-color: #ff0000;height: 3px;">
                    <div class="form-row">
                        <div class="col">
                            <fieldset class="text-dark border rounded border-dark">
                                <legend>Patient Diagnosis</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th style="width: 10px;">#</th>
                                                <th style="width: 630px;">Symptoms</th>
                                                <th>Duration</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>
                                                    <select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="symptom1"/>
                                        <option value="" selected="">Select A Diagnosis</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><input class="form-control" type="text" name="symptom_duration1"/></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>
                                                <select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="symptom2"/>
                                        <option value="" selected="">Select A Diagnosis</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><input class="form-control" type="text" name="symptom_duration2"></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px; " name="symptom3"/>
                                        <option value="" selected="">Select A Diagnosis</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><input class="form-control" type="text" name="symptom_duration3"></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="symptom4"/>
                                        <option value="" selected="">Select A Diagnosis</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><input class="form-control" type="text" name="symptom_duration4"/></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"name="symptom5" />
                                        <option value="" selected="">Select A Diagnosis</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option
                                        </select>
                                        </td>
                                        <td><input class="form-control" type="text" name="symptom_duration5"/></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col">
                            <fieldset class="text-dark border rounded border-dark">
                                <legend>Medicine Table</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th style="width: 10px;">#</th>
                                                <th>Medicine</th>
                                                <th style="width: 300px;">Dose</th>
                                                <th style="width: 300px;">Duration</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine1"/>
                                        <option value="" selected="">Select A Medicine</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_dose1"/>
                                        <option value="">Select A Dose</option><option value="1+1+1">1+1+1</option>
                                        <option value="1+1+0">1+1+0</option>
                                        <option value="1+0+1">1+0+1</option>
                                        </select></td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_duration1"/>
                                        <option value="">Select A Duration</option>
                                        <option value="3 days">3 days</option>
                                        <option value="7 days">7 days</option>
                                        <option value="14 days">14 days</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine2"/>
                                        <option value="" selected="">Select A Medicine</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_dose2"/>
                                        <option value="">Select A Dose</option>
                                        <option value="1+1+1">1+1+1</option>
                                        <option value="1+1+0">1+1+0</option>
                                        <option value="1+0+1">1+0+1</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_duration2"/>
                                        <option value="">Select A Duration</option>
                                        <option value="3 days">3 days</option>
                                        <option value="7 days">7 days</option>
                                        <option value="14 days">14 days</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"name="medicine3"/>
                                        <option value="" selected="">Select A Medicine</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_dose3"/>
                                        <option value="">Select A Dose</option>
                                        <option value="1+1+1">1+1+1</option>
                                        <option value="1+1+0">1+1+0</option>
                                        <option value="1+0+1">1+0+1</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"name="medicine_duration3"/>
                                        <option value="">Select A Duration</option>
                                        <option value="3 days">3 days</option>
                                        <option value="7 days">7 days</option>
                                        <option value="14 days">14 days</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine4"/>
                                        <option value="" selected="">Select A Medicine</option><option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option
                                        ><option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_dose4"/>
                                        <option value="">Select A Dose</option>
                                        <option value="1+1+1">1+1+1</option>
                                        <option value="1+1+0">1+1+0</option>
                                        <option value="1+0+1">1+0+1</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_duration4"/>
                                        <option value="">Select A Duration</option>
                                        <option value="3 days">3 days</option>
                                        <option value="7 days">7 days</option>
                                        <option value="14 days">14 days</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine5"/>
                                        <option value="" selected="">Select A Medicine</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_dose5"/>
                                        <option value="">Select A Dose</option>
                                        <option value="1+1+1">1+1+1</option>
                                        <option value="1+1+0">1+1+0</option>
                                        <option value="1+0+1">1+0+1</option>
                                        </select>
                                        </td>
                                        <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="medicine_duration5"/>
                                        <option value="">Select A Duration</option>
                                        <option value="3 days">3 days</option>
                                        <option value="7 days">7 days</option>
                                        <option value="14 days">14 days</option>
                                        </select>
                                        </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col">
                            <fieldset class="text-dark border rounded border-dark">
                                <legend>Test Table</legend>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th style="width: 10px;">#</th>
                                                <th style="width: 550px;">Test Name</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="test1"/>
                                        <option value="" selected="">Select A Test</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="test2"/>
                                        <option value="" selected="">Select A Test</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"name="test3"/>
                                        <option value="" selected="">Select A Test</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;" name="test4"/>
                                        <option value="" selected="">Select A Test</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><select class="form-control" style="padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;"name="test5"/>
                                        <option value="" selected="">Select A Test</option>
                                        <option value="12">This is item 1</option>
                                        <option value="13">This is item 2</option>
                                        <option value="14">This is item 3</option>
                                        </select>
                                        </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <!--<button class="btn btn-primary hidden-print" ><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>-->

                    <button class="btn btn-success btn-lg text-center float-right" type="submit" onclick="myFunction()" style="width: 130px;height: 50px;margin-top: 30px;font-size: 25px;margin-bottom: 10px;">
                        <strong>Submit</strong>
                    </button>
                </form>
            </div>

        </div>
    </div>

</div>
<!--<script>
    function myFunction() {
        window.print();
    }
</script>-->

<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />

