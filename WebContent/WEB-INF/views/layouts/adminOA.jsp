<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html style="overflow-x:auto;overflow-y:auto;">
<head>
	<title><sitemesh:title/></title><!--  - Powered By JeeSite -->
	
			<!-- basic styles -->
		<link rel="stylesheet" href="${ctxStatic}/oa/bootstrap/css/bootstrap.min.css"  />
		<link rel="stylesheet" href="${ctxStatic}/oa/awesome/css/font-awesome.min.css" />

		<!--[if IE 7]>
		<link rel="stylesheet" href="${ctxStatic}/oa/awesome/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="${ctxStatic}/oa/jquery/plugin/css/jquery.gritter.css" />
		
			<link rel="stylesheet" href="${ctxStatic}/oa/bootstrap/css/date-time/bootstrap-datepicker.css" />
	<link rel="stylesheet" href="${ctxStatic}/oa/bootstrap/css/date-time/bootstrap-datetimepicker.css" />
		

		<!-- fonts -->
		<!-- ace styles -->

		<link rel="stylesheet" href="${ctxStatic}/oa/ace/css/uncompressed/ace.css" />
		<link rel="stylesheet" href="${ctxStatic}/oa/ace/css/uncompressed/ace-rtl.css" />
		<link rel="stylesheet" href="${ctxStatic}/oa/ace/css/uncompressed/ace-skins.css" />

		<!--[if lte IE 8]>
		<link rel="stylesheet" href="${ctxStatic}/oa/ace/css/uncompressed/ace-ie.css" />
		<![endif]-->

		<!-- inline styles related to this page -->
		<link rel="stylesheet" href="${ctxStatic}/oa/home/css/style.css" />
		<!-- ace settings handler -->

		<script src="${ctxStatic}/oa/ace/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${ctxStatic}/oa/asst/html5shiv.js"></script>
		<script src="${ctxStatic}/oa/asst/respond.min.js"></script>
		<![endif]-->
	
	
		<!-- basic scripts -->

		<!--[if !IE]>
		-->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctxStatic}/oa/jquery/js/jquery-2.1.0.min.js'>" + "<" + "/script>");
		</script>
		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		window.jQuery || document.write("<script src='${ctxStatic}/oa/jquery/js/jquery-1.11.0.min.js'>"+"<"+"/script>");</script>
		<![endif]-->

		<script type="text/javascript">
			if ("ontouchend" in document)
				document.write("<script src='${ctxStatic}/oa/jquery/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<script src="${ctxStatic}/oa/bootstrap/js/bootstrap.min.js"></script>
		<script src="${ctxStatic}/oa/bootstrap/js/typeahead-bs2.min.js"></script>

		
			
<script src="${ctxStatic}/oa/bootstrap/js/date-time/bootstrap-datepicker.js"></script>
	<script src="${ctxStatic}/oa/bootstrap/js/date-time/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script src="${ctxStatic}/oa/bootstrap/js/date-time/bootstrap-datetimepicker.js"></script>
	<script src="${ctxStatic}/oa/bootstrap/js/date-time/locales/bootstrap-datetimepicker.zh-CN.js"></script>



<script src="${ctxStatic}/oa/jquery/plugin/js/jquery.gritter.min.js"></script>
<script src="${ctxStatic}/oa/bootstrap/js/bootbox.min.js"></script>
	
	<!-- ace scripts -->
		<script src="${ctxStatic}/oa/ace/js/uncompressed/ace-elements.js"></script>
		<script src="${ctxStatic}/oa/ace/js/uncompressed/ace.js"></script>
		<script src="${ctxStatic}/oa/home/js/common.js"></script>
		
	<sitemesh:head/>
</head>
<body>

    
						<sitemesh:body/>
				

		


	
	
</body>
</html>