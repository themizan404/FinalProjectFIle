<jsp:include page="/WEB-INF/jsp/common/main/header.jsp" />
<div class="container" style="margin-top: 100px;">
    <div class="row">
        <div class="col">
            <p class="text-center" style="font-size: 21px;"><strong>Doctor Login Page</strong></p>
        </div>
    </div>
</div>
<div class="login-clean" style="margin-top: 0px;background-color: rgb(255,255,255);">
    <form action="doctor/dashboard"class="shadow-lg" method="post">


        <div class="form-group">  <input class="form-control" type="number" name="nid" placeholder="NID"></div>
        <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
        <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
    </form>
</div>
<jsp:include page="/WEB-INF/jsp/common/main/footer.jsp" />