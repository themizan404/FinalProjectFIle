<jsp:include page="/WEB-INF/jsp/common/main/header.jsp" />


<p class="text-uppercase text-center" style="margin-top: 125px;font-size: 45px;height: 80px;"><strong>Login Page</strong></p>
<div class="container text-center" style="margin-top: 50px;margin-bottom: 150px;">
    <div class="row">
        <div class="col text-center"><a href="adminlogin"><button class="btn btn-primary btn-lg text-uppercase" data-bs-hover-animate="pulse" type="button" style="height: 60px;width: 140px;font-size: 25px;"><strong>Admin</strong><br></button></a></div>
        <div class="col"><a href="doctorlogin"><button class="btn btn-success btn-lg text-uppercase" data-bs-hover-animate="pulse" type="button" style="height: 60px;width: 140px;font-size: 25px;"><strong>Doctor</strong><br></button></a></div>
        <div class="col"><a href="stafflogin"><button class="btn btn-warning btn-lg text-uppercase" data-bs-hover-animate="pulse" type="button" style="height: 60px;width: 140px;font-size: 25px;"><strong>Staff</strong><br></button></a></div>
    </div>
</div>



<jsp:include page="/WEB-INF/jsp/common/main/footer.jsp" />