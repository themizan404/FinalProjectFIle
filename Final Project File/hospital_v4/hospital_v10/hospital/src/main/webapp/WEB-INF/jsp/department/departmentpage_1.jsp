
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
                <div class="row">
                    <div class="col-md-12 alert-col relative">
                        <div class="alert alert-info absolue center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button><span>Profile save with success</span></div>
                    </div>
                </div>
                <form>
                    <div class="form-row profile-row">
                        <div class="col-md-8 col-lg-8 offset-lg-2">
                            <h1 style="color: rgb(22,135,254);background-color: rgba(247,247,247,0);"><strong>Department Profile</strong></h1>
                            <hr>
                            <div class="form-group"><label style="font-size: 16px;"><strong>Department ID</strong></label><input class="form-control" type="number"></div>
                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group"><label style="font-size: 16px;"><strong>Department Name</strong></label><input class="form-control" type="text" name="firstname"></div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-row">
                                <div class="col-md-12 content-right"><button class="btn btn-primary form-btn" type="submit">UPDATE</button><button class="btn btn-danger form-btn" type="reset">CANCEL </button></div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!------------------------------------------------------------------------------------------------------------->
        <div id="update" class="tab-pane fade">
            <div class="container shadow-lg profile profile-view" id="profile" style="background-color: #f4f4f4;margin-top: 0px;margin-bottom: 150px;">
                <div class="row">
                    <div class="col-md-12 alert-col relative">
                        <div class="alert alert-info absolue center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button><span>Profile save with success</span></div>
                    </div>
                </div>
                <form>
                    <div class="form-row profile-row">
                        <div class="col-md-8 col-lg-8 offset-lg-2">
                            <h1 style="color: rgb(22,135,254);background-color: rgba(247,247,247,0);"><strong>Update Department Profile</strong></h1>
                            <hr>
                            <div class="form-group"><label style="font-size: 16px;"><strong>Dempartmeny ID</strong></label><input class="form-control" type="number"></div>
                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group"><label style="font-size: 16px;"><strong>Department Name</strong></label><input class="form-control" type="text" name="firstname"></div>
                                </div>
                            </div>
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
            <div class="container" style="width: 100%;">
                <div class="row no-gutters text-left justify-content-center align-items-center">
                    <div class="col-md-12 search-table-col" style="width: 100%;margin-top: 0px;">
                        <div class="form-group pull-right col-lg-4"><input type="text" class="search form-control" placeholder="Search by typing here.."></div><span class="counter pull-right" style="color: rgb(88,82,82);"></span>
                        <div class="table-responsive table-bordered table table-hover table-bordered results"
                             style="width: 100%;">
                            <table class="table table-bordered table-hover">
                                <thead class="bill-header cs">
                                    <tr>
                                        <th id="trs-hd" class="col-lg-1" style="width: 528px;">SL. No.</th>
                                        <th id="trs-hd-4" class="col-lg-1" style="width: 528px;">SL. No.</th>
                                        <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">SL. No.</th>
                                        <th id="trs-hd-2" class="col-lg-1" style="width: 528px;">SL. No.</th>
                                        <th id="trs-hd-1" class="col-lg-1" style="width: 528px;">SL. No.</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 547px;">Area</th>
                                        <th id="trs-hd" class="col-lg-3" style="width: 567px;">Customer Name</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 581px;">Company Name</th>
                                        <th id="trs-hd" class="col-lg-2" style="width: 560px;">Member Since</th>
                                        <th id="trs-hd-5" class="col-lg-2" style="width: 560px;">Member Since</th>
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
                                        <td>2014</td>
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