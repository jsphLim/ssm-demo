<%--
  Created by ly on 2017/11/30.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>时间框</title>


    <title>Form Components | Forms</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <link type="text/css" rel="stylesheet" href="/static/vendors/font-awesome/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="/static/vendors/bootstrap/css/bootstrap.min.css">
    <!--LOADING STYLESHEET FOR PAGE-->
    <link type="text/css" rel="stylesheet" href="/static/vendors/bootstrap-datepicker/css/datepicker.css">

    <!--Loading style-->
    <link type="text/css" rel="stylesheet" href="/static/css/themes/style1/orange-blue.css" id="theme-change" class="style-change color-change">
    <link type="text/css" rel="stylesheet" href="/static/css/style-responsive.css">

  <script src="/static/js/jquery-1.10.2.min.js"></script>
  <script src="/static/js/jquery-migrate-1.2.1.min.js"></script>
  <!--loading bootstrap js-->
  <script src="/static/vendors/bootstrap/js/bootstrap.min.js"></script>
  <script src="/static/vendors/metisMenu/jquery.metisMenu.js"></script>
  <script src="/static/vendors/slimScroll/jquery.slimscroll.js"></script>
  <script src="/static/vendors/jquery-cookie/jquery.cookie.js"></script>
  <script src="/static/vendors/iCheck/icheck.min.js"></script>
  <script src="/static/vendors/responsive-tabs/responsive-tabs.js"></script>
  <!--CORE JAVASCRIPT-->
  <script src="/static/js/main.js"></script>
  <!--LOADING SCRIPTS FOR PAGE-->
  <script src="/static/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="/static/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

  <script src="/static/vendors/moment/moment.js"></script>
  <script src="/static/js/form-components.js"></script>
  </head>

  <body class=" ">

  </div>

  <div class="col-lg-6">
    <div class="portlet box portlet-pink">
      <div class="portlet-header">
        <div class="caption">Date Picker</div>
        <div class="tools"><i class="fa fa-chevron-up"></i><i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i><i class="fa fa-refresh"></i><i class="fa fa-times"></i>
        </div>
      </div>
      <div class="portlet-body pan">
        <form role="form" class="form-horizontal form-separated">
          <div class="form-body pdl">
            <div class="form-group">
              <label class="col-md-3 control-label">Default</label>
              <div class="col-md-5">
                <input type="text" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd" class="datepicker-default form-control" />
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label">Format</label>
              <div class="col-md-5">
                <input type="text" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd" class="datepicker-default form-control" />
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label">Start with years</label>
              <div class="col-md-5">
                <div class="input-group">
                  <input type="text" class="datepicker-years form-control" />
                  <div class="input-group-addon"><i class="fa fa-calendar"></i>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label">Range</label>
              <div class="col-md-8">
                <div class="input-group input-daterange">
                  <input type="text" name="startdate" class="form-control" /><span
                        class="input-group-addon"><i class="fa fa-clock-o"></i></span><span class="input-group-addon">to</span>
                  <input type="text" name="enddate" class="form-control" /><span
                        class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                </div>
              </div>
            </div>
          </div>
          <%--<div class="form-actions">--%>
            <%--<div class="col-md-offset-3 col-md-9">--%>
              <%--<button type="submit" class="btn btn-primary">Submit</button>&nbsp;--%>
              <%--<button type="button" class="btn btn-default">Cancel</button>--%>
            <%--</div>--%>
          <%--</div>--%>
        </form>
      </div>
    </div>
  </div>
  </body>

  </html>
</head>
<body>

</body>
</html>
