<jsp:include page="/WEB-INF/jsp/common/main/header.jsp" />


<p class="text-uppercase text-center" style="margin-top: 100px;font-size: 45px;height: 80px;"><strong>Online Appointment For Hospital</strong></p>
<div class="login-clean" style="margin-top: 0px;background-color: rgb(255,255,255);">
    <form action="/onlineappointment/save" class="shadow-lg" method="post">


        <div class="form-group">  <input class="form-control" type="text" name="patient_nid" placeholder="NID"></div>
        <div class="form-group"><input class="form-control" type="text" name="patient_problem" placeholder="Problem"></div>
        <div class="form-group"><input class="form-control" type="date" name="appointmentDate" placeholder="Appointment Date"></div>
        <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Submit</button></div>
    </form>
</div>



<jsp:include page="/WEB-INF/jsp/common/main/footer.jsp" />
