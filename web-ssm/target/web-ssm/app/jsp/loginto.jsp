<%--
  Created by ly on 2017/11/30.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

  <link type="text/css" rel="stylesheet" href="/static/vendors/font-awesome/css/font-awesome.min.css">
  <link type="text/css" rel="stylesheet" href="/static/vendors/bootstrap/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="/static/css/themes/style1/orange-blue.css" id="theme-change" class="style-change color-change">

</head>
<body>
<div>
  <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-yellow">
        <div class="panel-heading">Form 2 Columns Default </div>
        <div class="panel-body pan">
          <form action="#" class="horizontal-form">
            <div class="form-body pal">
<div class="row">
  <div class="col-md-6">
    <div class="form-group has-success">
      <label for="inputFirstName" class="control-label">First Name <span class='require'>*</span>
      </label>
      <div class="input-icon right"><i data-hover="tooltip" data-original-title="Correct" class="glyphicon glyphicon-ok tooltips"></i>
        <input id="inputFirstName" type="text" placeholder="First Name" class="form-control" />
      </div>
    </div>
  </div>
  </div>
  <div class="row">
  <div class="col-md-6">
    <div class="form-group has-error">
      <label for="inputLastName" class="control-label">Last Name <span class='require'>*</span>
      </label>
      <div class="input-icon right"><i data-hover="tooltip" data-original-title="Last Name is empty" class="glyphicon glyphicon-remove tooltips"></i>
        <input id="inputLastName" type="text" placeholder="Last Name" class="form-control" />
      </div>
    </div>
  </div>
</div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
