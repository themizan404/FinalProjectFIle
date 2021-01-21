
<jsp:include page="/WEB-INF/jsp/common/dashBoard/header.jsp" />




<div class="container" style="margin-top: 70px">
    <ul class="nav nav-pills">
        <li class="active"><a data-toggle="tab" href="#save">Save</a></li>
        <li><a data-toggle="tab" href="#update">Update</a></li>
        <li><a data-toggle="tab" href="#ViewAndDelete"> View And Delete</a></li>

    </ul>
    <!------------------------------------------------------------------------------------------------------------->
    <div class="tab-content">
        <div id="save" class="tab-pane fade in active">
            <div class="container shadow-lg profile profile-view" id="profile" style="background-color: #f4f4f4;margin-top: 0px;margin-bottom: 150px;">
                <!--                <div class="row">
                                    <div class="col-md-12 alert-col relative">
                                        <div class="alert alert-info absolue center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button><span>Profile save with success</span></div>
                                    </div>
                                </div>-->
                <section>

                    <form>
                        <div class="form-row profile-row">
                            <div class="col-md-4 relative">
                                <!--                            <div class="avatar">
                                                                <div class="border rounded-0 avatar-bg center"></div>
                                                            </div>-->
                                <!--                            <input type="file" class="form-control" name="avatar-file">-->
                            </div>
                            <div class="col-md-8">
                                <h1 style="color: rgb(22,135,254);background-color: rgba(247,247,247,0);"><strong>Doctor Profile</strong></h1>
                                <hr>
                                <div class="form-group"><label style="font-size: 16px;"><strong>Doctor NID</strong></label><input class="form-control" type="number"></div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group"><label style="font-size: 16px;"><strong>Doctor Name</strong></label><input class="form-control" type="text" name="firstname"></div>
                                    </div>
                                </div>
                                <div class="form-group"><label><strong>Doctor Registry Number</strong></label><input class="form-control" type="number"></div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Department</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Specialist</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Doctor Degree</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                        <!--                                    <div
                                                                                class="table-responsive">
                                                                                <table class="table">
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th>Degree List</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td></td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>-->
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Designation</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Password </label><input class="form-control" type="password" name="password" autocomplete="off" required=""></div>
                                    </div>
                                    <!--                                <div class="col-sm-12 col-md-6">
                                                                        <div class="form-group"><label>Confirm Password</label><input class="form-control" type="password" name="confirmpass" autocomplete="off" required=""></div>
                                                                    </div>-->
                                </div>
                                <hr>
                                <div class="form-row">
                                    <div class="col-md-12 content-right"><button class="btn btn-primary form-btn" type="submit">SAVE </button><button class="btn btn-danger form-btn" type="reset">CANCEL </button></div>
                                </div>
                            </div>
                        </div>
                    </form>
                </section>

            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------->
        <div id="update" class="tab-pane fade">
            <div class="container shadow-lg profile profile-view" id="profile" style="background-color: #f4f4f4;margin-top: 0px;margin-bottom: 150px;">
<!--                <div class="row">
                    <div class="col-md-12 alert-col relative">
                        <div class="alert alert-info absolue center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button><span>Profile save with success</span></div>
                    </div>
                </div>-->
                <section>
                    <form>
                        <div class="form-row profile-row">
                            <div class="col-md-4 relative">
                                <!--                            <div class="avatar">
                                                                <div class="border rounded-0 avatar-bg center"></div>
                                                            </div>
                                                            <input type="file" class="form-control" name="">-->
                            </div>
                            <div class="col-md-8">
                                <h1 style="color: rgb(22,135,254);background-color: rgba(247,247,247,0);"><strong>Update Doctor Profile</strong></h1>
                                <hr>
                                <div class="form-group"><label style="font-size: 16px;"><strong>Doctor NID</strong></label><input class="form-control" type="number"></div>
                                <div class="form-row">
                                    <div class="col">
                                        <div class="form-group"><label style="font-size: 16px;"><strong>Doctor Name</strong></label><input class="form-control" type="text" name="firstname"></div>
                                    </div>
                                </div>
                                <div class="form-group"><label><strong>Doctor Registry Number</strong></label><input class="form-control" type="number"></div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Department</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Specialist</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Doctor Degree</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>

                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Designation</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>Password </label><input class="form-control" type="password" name="password" autocomplete="off" required=""></div>
                                    </div>
                                    <!--                                <div class="col-sm-12 col-md-6">
                                                                        <div class="form-group"><label>Confirm Password</label><input class="form-control" type="password" name="confirmpass" autocomplete="off" required=""></div>
                                                                    </div>-->
                                </div>
                                <hr>
                                <div class="form-row">
                                    <div class="col-md-12 content-right"><button class="btn btn-primary form-btn" type="submit">SAVE </button><button class="btn btn-danger form-btn" type="reset">CANCEL </button></div>
                                </div>
                            </div>
                        </div>
                    </form>
                </section>

            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------->
        <div id="ViewAndDelete" class="tab-pane fade">
            <div class="container" style="width: 100%;">
                <div class="row no-gutters text-left justify-content-center align-items-center">
                    <div class="col-md-12 search-table-col" style="width: 100%;margin-top: 0px;">
                        <div class="form-group pull-right col-lg-4"><input type="text" class="search form-control" placeholder="Search by typing here.."></div><span class="counter pull-right" style="color: rgb(88,82,82);"></span>
                        <div class="table-responsive table-bordered table table-hover table-bordered results"
                             style="width: 100%;">
                            <table class="table table-bordered table-hover">
                                <thead class="bill-header cs">
                                    <tr>
                                        <th id="trs-hd" class="col-lg-1" style="width: 528px;">id</th>
                                        <th id="trs-hd-4" class="col-lg-1" style="width: 528px;">Doctor NID</th>
                                        <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Doctor Name</th>
                                        <th id="trs-hd-2" class="col-lg-1" style="width: 528px;">Doctor Registry Number</th>
                                        <th id="trs-hd-1" class="col-lg-1" style="width: 528px;">Department</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 547px;">Specialist</th>
                                        <th id="trs-hd" class="col-lg-3" style="width: 567px;">DOctor Degree</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 581px;">Designation</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 560px;">Password</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 558px;">Action</th>
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
                                        <td>01</td>
                                        <td>01</td>
                                        <td>01</td>
                                        <td>India</td>
                                        <td>Souvik Kundu</td>
                                        <td>Bootstrap Stuido</td>

                                        <td class="text-center"><button class="btn btn-success" style="margin-left: 5px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button><button class="btn btn-danger" style="margin-left: 5px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button></td>
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


<jsp:include page="/WEB-INF/jsp/common/dashBoard/footer.jsp" />