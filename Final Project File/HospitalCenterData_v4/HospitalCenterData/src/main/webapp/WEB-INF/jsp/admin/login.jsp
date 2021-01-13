
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />


<%--<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>--%>
<div class="container" style="margin-top: 100px;">
    <div class="row">
        <div class="col">
            <p class="text-center" style="font-size: 21px;"><strong>Admin Login Page</strong></p>
        </div>
    </div>
</div>
<div class="login-clean" style="margin-top: 0px;background-color: rgb(255,255,255);">
    <form class="shadow-lg" action="dashboard" method="post">


        <div class="form-group"><input class="form-control" type="number" name="nid" placeholder="NID"></div>
        <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
        <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
        <!--        <div class="col"><a href="admin/dashboard"><button class="btn btn-warning btn-block" type="button" >Log In</button></a></div>-->
    </form>
</div>
<%--<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>--%>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
