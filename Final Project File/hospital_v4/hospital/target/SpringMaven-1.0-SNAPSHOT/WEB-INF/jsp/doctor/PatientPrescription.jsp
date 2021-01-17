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
                <li class="nav-item" role="presentation"><a class="nav-link" href="/doctor/waitinglist"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Waiting List</strong><br></span></a></li>
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

            <div class="container"  style="margin-top: 10px;margin-bottom: 20px;">
                <form>
                    <div class="form-row">
                        <div class="col">
                            <fieldset>
                                <legend>Pateint Details</legend>
                                <div class="form-row">
                                    <div class="col"><label>Patient NID</label><input class="form-control" type="text"></div>
                                    <div class="col"><label>Patient Name</label><input class="form-control" type="text"></div>
                                    <div class="col"><label>Age</label><input class="form-control" type="text"></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label>Gender</label><input class="form-control" type="text"></div>
                                    <div class="col"><label>Address</label><input class="form-control" type="text"></div>
                                    <div class="col"><label>Temperature</label><input class="form-control" type="text"></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label>Weight</label><input class="form-control" type="text"></div>
                                    <div class="col"><label>Blood Pressure</label><input class="form-control" type="text"></div>
                                    <div class="col"></div>
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
                                <div class="form-row">
                                    <div class="col-5"><select class="form-control"><option value="fever">fever</option><option value="backpain">backpain</option><option value="cough">cough</option></select></div>
                                    <div class="col-5"><input class="form-control" type="search" placeholder="duration"></div>
                                    <div class="col"><button class="btn btn-primary" type="button" style="font-size: 15px;width: 40px;height: 37px;">Ok</button></div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Symptoms</th>
                                                <th>duration</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Cell 3</td>
                                                <td>Cell 4</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                        <div class="col">
                            <fieldset class="text-dark border rounded border-dark">
                                <legend>Medicine</legend>
                                <div class="form-row">
                                    <div class="col-5"><select class="form-control"><option value="napa">napa</option><option value="seclo">seclo</option><option value="ace+">ace+</option></select></div>
                                    <div class="col-5"><input class="form-control" type="search" placeholder="Dose"></div>
                                    <div class="col"><button class="btn btn-primary" type="button" style="font-size: 15px;width: 40px;height: 37px;">Ok</button></div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Medicine</th>
                                                <th>Dose</th>
                                                <th>Duration</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Cell 3</td>
                                                <td><input class="form-control" type="text" style="width: 100px;"></td>
                                                <td>Cell 3</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                        <div class="col">
                            <fieldset class="text-dark border rounded border-dark">
                                <legend>Test</legend>
                                <div class="form-row">
                                    <div class="col-5"><select class="form-control"><option value="CBC">CBC</option><option value="X-ray">X-ray</option><option value="Blood Group">Blood Group</option></select></div>
                                    <div class="col"><button class="btn btn-primary" type="button" style="font-size: 15px;width: 40px;height: 37px;">Ok</button></div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Test</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Cell 3</td>
                                                <td>Cell 4</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div><button class="btn btn-success btn-lg text-center float-right" type="submit" style="width: 130px;height: 50px;margin-top: 30px; margin-bottom: 30px;font-size: 25px;"><strong>Submit</strong></button>
                </form>
            </div>

        </div>
    </div>

</div>


<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />

