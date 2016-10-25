<%@ page import="com.bingdian.callcenter.config.Configurator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", -10);
%>
<% String path = request.getContextPath();
    request.setAttribute("_path", Configurator.path);
//    request.setAttribute("_suffix",".go");
    request.setAttribute("_suffix",Configurator.suffix);
    request.setAttribute("_titlePrefix","呼叫中心-");
    String loadUrl = request.getParameter("loadUrl");
    request.setAttribute("_loadUrl",loadUrl);
%>
<script>
    var _path="${_path}";
    var _suffix="${_suffix}";
    var _loadUrl="${_loadUrl}";

</script>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>呼叫中心</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <meta name="MobileOptimized" content="320">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${_path}/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/plugins/bootstrap-paginator/css/bootstrap-page.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <%-- <link rel="stylesheet" type="text/css" href="${_path}/assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" /> --%>
    <link rel="stylesheet" type="text/css" href="${_path}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />
    <link href="${_path}/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
    <%--<link href="${_path}/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link href="${_path}/assets/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link href="${_path}/assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css"/>--%>
    <!-- END PAGE LEVEL PLUGIN STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="${_path}/assets/css/style-conquer.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/css/pages/tasks.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${_path}/assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <link href="${_path}/assets/css/black-tie/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed">

<!-- BEGIN HEADER -->
<%@ include file="module/header.jsp"%>
<!-- END HEADER -->

<div class="clearfix"></div>

<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <%@ include file="module/leftNav.jsp"%>
    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->
    <div class="page-content" id="pageContent">
        <%--<%@ include file="module/content.jsp"%>--%>
    </div>
    <!-- END PAGE -->
</div>

<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->
<%@include file="module/footer.jsp"%>
<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${_path}/assets/plugins/respond.min.js"></script>
<script src="${_path}/assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="${_path}/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${_path}/assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="${_path}/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                7
<script src="${_path}/assets/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="${_path}/assets/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<%-- <script src="${_path}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="${_path}/assets/plugins/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script> --%>
<script src="${_path}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${_path}/assets/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${_path}/assets/plugins/bootstrap-paginator/js/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${_path}/assets/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="${_path}/assets/plugins/jquery.form.js"></script>

<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${_path}/assets/scripts/app.js" type="text/javascript"></script>
<script src="${_path}/assets/scripts/angular.min.js" type="text/javascript"></script>
<script src="${_path}/assets/scripts/angular-sanitize.min.js" type="text/javascript"></script>
<script>
    (function ($) {
        $.ajaxcc = function (opt) {
            opt.url="${_path}"+ opt.url+"${_suffix}";
            return $.ajax(opt);
        }
    })(jQuery);
</script>
<%--websocket--%>
<%--<sec:authorize ifAnyGranted="CC_admin_super,CC_nav_head_unhandled">--%>
    <script src="${_path}/assets/scripts/sockjs-0.3.min.js" type="text/javascript"></script>
    <script src="${_path}/assets/scripts/a_headsocket.js?v=001" type="text/javascript"></script>
<%--</sec:authorize>--%>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    var divIds = {
        "pageContentId":"pageContent",
        "errorDialogId":"errorDialog",
        "errorDialogPanelId":"errorDialogPanel"
    };

    var curUrl;
    var curParams;
    var prevUrl;
    var prevParams;
    var beforeJumpCallBacks=new Array();
    function getRealHashId(str) {
        return "#"+divIds[str];
    }
    function getCurrentUrl() {
        return curUrl;
    }
    function getCurrentParam() {
        return curParams;
    }
    function historyBack() {
        refreshPage(prevUrl,prevParams);
    }
    function publishEvent(path,group,func) {
        $.ajaxcc({
            url:"/bpm/event/"+path,
            data:{receiver:group},
            method:"POST",
            success: func,
            error:func
        });
    }
    function refreshPage(url,param) {
        var realUrl=getCurrentUrl();
        var realParam=getCurrentParam();

        if(url){
            if(typeof url == 'object'){
                realParam = url;
            }else{
                realUrl = url;
            }

            if(param){
                realParam = param;
            }
        }

        loadPage(realUrl,realParam);
    }
    //loadTabPage('/order/detail/index?orderId=11011292')
    //loadOrderDetail({orderId:'10001234',jumpToId:'12323'})
    function loadTabPage(url){
        window.open("${_path}/?loadUrl="+encodeURIComponent(url));
    }
    function loadOrderDetail(orderId){
        if(typeof orderId === "object") {
            loadTabPage('/order/detail/index?'+serializeJSONToParam(orderId));
        } else {
            loadTabPage('/order/detail/index?orderId='+orderId);
        }

    }
    function serializeJSONToParam(json){
        var ret = "";
        for(var i in json) {
            ret = ret + i + "="+json[i]+"&";
        }
        return ret;
    }

    function loadPage(url,param){
        var beforeCbs = beforeJumpCallBacks.pop();
        while(beforeCbs) {
            beforeCbs.call();
            beforeCbs = beforeJumpCallBacks.pop();
        }

        $(getRealHashId("pageContentId")).empty();
        App.blockUI(getRealHashId("pageContentId"),false);

        prevUrl=curUrl;
//        prevParams=curParams?$.extend({},curParams):{};
        prevParams=curParams?curParams:{};

        curUrl = url;
        curParams = param?param:{};

        $.ajaxcc({
            url:curUrl,
            data:curParams,
            type:"POST",
            success:function(str) {
                $(getRealHashId("pageContentId")).html(str);

                App.unblockUI(getRealHashId("pageContentId"));
            },
            error:function(json) {
                $(getRealHashId("pageContentId")).html(json.responseText);
                App.unblockUI(getRealHashId("pageContentId"));
            }
        });
    }

    var _titlePrefix=document.title;
    jQuery(document).ready(function () {
        App.init(); // initlayout and core plugins

        $(".page-sidebar-menu a").click(function (e) {
            e.preventDefault();

            $(".page-sidebar-menu li.active ").removeClass("active");
            $(this).parent("li").addClass("active");

            if($(this).attr("_title")){
                $(document).attr("title",$(this).attr("_title"));
            } else {
                $(document).attr("title",_titlePrefix+"-"+$(this).find("span.title").text());
            }


            loadPage($(this).attr("href"));

        });

        if(_loadUrl) {
            loadPage(decodeURIComponent(_loadUrl),{});
        } else{
            $(".page-sidebar-menu a:eq(0)").click();
        }
    });
</script>
<!-- END JAVASCRIPTS -->

<%@ include file="module/errorDialog.jsp"%>
<%@ include file="module/toastr.jsp"%>
<%@ include file="module/btnenter.jsp"%>
<%@ include file="module/modalDialogCommon.jsp"%>
<%@ include file="module/autocomplete.jsp"%>
<%@ include file="module/newOrderConfirmDialog.jsp"%>
<%@ include file="module/exportExcel.jsp" %>
<%@ include file="module/_updatePassword.jsp" %>
<%@ include file="module/_updatePayPassword.jsp" %>

</body>
<!-- END BODY -->

</html>
