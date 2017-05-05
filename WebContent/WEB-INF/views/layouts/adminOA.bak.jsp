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
		<link rel="stylesheet" href="Public/Home/css/style.css" />
		<!-- ace settings handler -->

		<script src="${ctxStatic}/oa/ace/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${ctxStatic}/oa/asst/html5shiv.js"></script>
		<script src="${ctxStatic}/oa/asst/respond.min.js"></script>
		<![endif]-->
	
	
		
	<sitemesh:head/>
</head>
<body>

    <body class="User">
		<div class="shade"></div>
		
			<nav class="navbar navbar-default " role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-6">
			<span class="sr-only">Toggle navigation</span>
			<i class="fa fa-bars fa-lg"></i>
		</button>
		<div class="hidden-xs">
			&nbsp;
		</div>
		<a href="index.php?m=&c=index&a=index" class="navbar-brand"><i class="fa fa-leaf"></i>小微OA</a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="navbar-collapse-6">
		<ul class="nav navbar-nav navbar-right">
			<c:set var="firstMenu" value="true"/>
                    <c:if test="${!empty param.parentId}">
                        <c:set var="firstMenuId" value="${param.parentId}"/>
                        <c:set var="firstMenu" value="false"/>
                    </c:if>

                    <c:forEach items="${fns:getMenuList()}" var="menu" varStatus="idxStatus">
                        <c:if test="${menu.parent.id eq '1'&&menu.isShow eq '1'}">
                          
                                <c:if test="${empty menu.href}">
                                    <a class="btn btn-app app-nav btn-xs nav-app ${menu.id eq param.parentId ? ' active' : ''}"  href="?parentId=${menu.id}"
                                       data-id="${menu.id}"><i class="${menu.icon} fa fa-envelope-o bc-mail bigger-100"></i>${menu.name} </a>&nbsp;&nbsp;
                                </c:if>
                                <c:if test="${not empty menu.href}">
                                    <a class="btn btn-app app-nav btn-xs nav-app ${menu.id eq param.parentId ? ' active' : ''}" href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${menu.href}"
                                       data-id="${menu.id}" target="mainFrame"><i class="${menu.icon} fa fa-envelope-o bc-mail bigger-100"></i>${menu.name}</a>&nbsp;&nbsp;
                                </c:if>
                            
                            <c:if test="${firstMenu}">
                                <c:set var="firstMenuId" value="${menu.id}"/>
                            </c:if>
                            <c:set var="firstMenu" value="false"/>
                        </c:if>
                    </c:forEach>
			
			   <a class="btn btn-app btn-xs btn-danger" style="margin-top:15px;margin-bottom:20px;margin-left:7px;margin-right:10px;" href="{:U('public/logout')}" ><i class="fa fa-sign-out bigger-100"></i>退出</a>
		</ul>
	</div><!-- /.navbar-collapse -->
</nav>
		

		<div class="main-container" id="main-container" >
			<div class="main-container-inner">
				<div class="sidebar" id="sidebar">
					<div id="user_info" class="text-center hidden-xs"  >
						<span >当前用户：管理员</span>
					</div>
					<div id="nav_head" class="text-center" onclick="toggle_left_menu()">
						<span class="menu-text">管理</span>
						<b id="left_menu_icon" class="fa fa-angle-down pull-right"></b>
					</div>
					<ul id='left_menu' class='nav nav-list'>
<c:set var="firstMenu" value="true"/>
						
						<c:forEach items="${fns:getMenuList()}" var="menu" varStatus="idxStatus">
							<!-- 如果一级菜单含有链接，则直接展示一级菜单跳转，不展示下级菜单 -->
							<c:if test="${not empty menu.href && menu.parent.id eq '1' && menu.isShow eq '1'}">
								<c:choose>
									<c:when test="${firstMenu}">  
										<li class="home" ><a id="firstIndex"  href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu.href ? menu.href : '/404'}"  title="${menu.name}" class="iframeurl"><i class="icon-dashboard"></i>${menu.name}</a></li>
										<c:set var="firstMenu" value="false"/>  
									</c:when>
									<c:otherwise>
										<li class="home"><a  href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu.href : '/404'}"  title="${menu.name}" class="iframeurl"><i class="fa fa-angle-right"></i>${menu.name}</a></li>
									</c:otherwise>
								</c:choose>
							</c:if>
							<!-- 如果一级菜单不含有链接，则展示二级菜单跳转 -->
							  <c:if test="${empty menu.href && menu.parent.id eq firstMenuId &&menu.isShow eq '1'}">
								<li><a href="#" class="dropdown-toggle"><i class="icon-${menu.icon}"></i><span class="menu-text"> ${menu.name} </span><b class="arrow icon-angle-down"></b></a>
									<ul class="submenu">
										<c:forEach items="${menuList}" var="menu2">
											<c:if test="${menu2.parent.id eq menu.id&&menu2.isShow eq '1'}">
												<c:choose>
												   <c:when test="${firstMenu}">  
														<li class="home" ><a id="firstIndex"  href="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu2.href : '/404'}"  title="${menu2.name}" class="iframeurl"><i class="fa fa-angle-right icon-double-angle-right"></i>${menu2.name}</a></li>
														<c:set var="firstMenu" value="false"/>  
												   </c:when>
												   <c:otherwise> 
														<li class="home"><a  href="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu2.href : '/404'}"  title="${menu2.name}" class="iframeurl"><i class="fa fa-angle-right"></i>${menu2.name}</a></li>
												   </c:otherwise>
												</c:choose>
											</c:if>
										</c:forEach>
									</ul>
								</li>
							</c:if>
							  <c:if test="${not empty menu.href && menu.parent.id eq firstMenuId &&menu.isShow eq '1'}">
							<%--   <li><a href="javascript:void(0)" class="dropdown-toggle" class="iframeurl" name="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu.href ? menu.href : '/404'}" ><i class="icon-${menu.icon}"></i><span class="menu-text"> ${menu.name} </span><b class="arrow icon-angle-down"></b></a>
							 --%>	
							 <li ><a  id="firstIndex"  href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu.href ? menu.href : '/404'}"  title="${menu.name}" class="iframeurl"><i class="fa fa-angle-right"></i>${menu.name}</a></li>
							 
							  </c:if>
						</c:forEach>
					
</ul>
				</div>
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="fa fa-home home-icon"></i>
								<a href="/">Home</a>
							</li>
							<li>
								管理							</li>
						</ul><!-- .breadcrumb -->
					</div>
					<div class="page-content">
						<sitemesh:body/>
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
			</div><!-- /#ace-settings-container -->
		</div><!-- /.main-container-inner -->

		
		<!-- basic scripts -->

		<!--[if !IE]>
		-->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='Public/Static/jquery/js/jquery-2.1.0.min.js'>" + "<" + "/script>");
		</script>
		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		window.jQuery || document.write("<script src='Public/Static/jquery/js/jquery-1.11.0.min.js'>"+"<"+"/script>");</script>
		<![endif]-->

		<script type="text/javascript">
			if ("ontouchend" in document)
				document.write("<script src='Public/Static/jquery/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<script src="Public/Static/bootstrap/js/bootstrap.min.js"></script>
		<script src="Public/Static/bootstrap/js/typeahead-bs2.min.js"></script>

		
			
<script src="Public/Static/bootstrap/js/date-time/bootstrap-datepicker.js"></script>
	<script src="Public/Static/bootstrap/js/date-time/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script src="Public/Static/bootstrap/js/date-time/bootstrap-datetimepicker.js"></script>
	<script src="Public/Static/bootstrap/js/date-time/locales/bootstrap-datetimepicker.zh-CN.js"></script>



<script src="Public/Static/jquery/plugin/js/jquery.gritter.min.js"></script>
<script src="Public/Static/bootstrap/js/bootbox.min.js"></script>

<script type="text/javascript">
		$(document).ready(function() {
			$('.input-date').datepicker({
					format: "yyyy-mm-dd",
					language:"zh-CN",
					autoclose : true
				});
				$(".input-daterange").datepicker({
					 format: "yyyy-mm-dd",
					 language:"zh-CN",
					 keyboardNavigation: false,
					 forceParse: false,
					 autoclose: true,
				});
				$(".input-date-time").datetimepicker({
					format : "yyyy-mm-dd hh:ii",
					language : "zh-CN",
					weekStart : 1,
					todayBtn : 1,
					autoclose : 1,
					todayHighlight : 1,
					startView : 2,
					forceParse : 0,
					showMeridian : 1,
					minuteStep:10
				});
				});
</script>
		

		<!-- ace scripts -->
		<script src="Public/Static/ace/js/uncompressed/ace-elements.js"></script>
		<script src="Public/Static/ace/js/uncompressed/ace.js"></script>
		<script src="Public/Home/js/common.js"></script>

		<!-- inline scripts related to this page -->
		
	<script type="text/javascript">
		function add() {
			winopen("index.php?m=&c=User&a=add", 740, 500);
		};

		function del() {
			var vars = $("#form_user").serialize();
			ui_confirm('确定要删除吗?', function() {
				sendAjax("index.php?m=&c=User&a=del", vars, function(data) {
					if (data.status) {
						ui_alert(data.info, function() {
							location.reload(true);
						});
					}
				});
			});
		}

		function reset_pwd() {
			if ($("#id").val().length < 1) {
				ui_error("请选择用户");
				return false;
			}
			winopen("index.php?m=&c=User&a=password?id=" + $("#id").val(), 730, 300);
		}

		function import_user() {
			window.open("index.php?m=&c=User&a=import", "_self");
			return false;
		}

		function select_dept() {
			winopen("index.php?m=&c=dept&a=winpop2", 730, 500);
		}

		function weixin_sync() {
			winopen("index.php?m=&c=User&a=weixin_sync", 730, 500);
		}

		function select_avatar() {
			if ($("#id").val().length < 1) {
				ui_error("请选择用户");
				return false;
			}
			winopen("index.php?m=&c=popup&a=avatar?id=" + $("#id").val(), 730, 500);
		}

		function btn_search() {
			sendForm("form_search", "index.php?m=&c=User&a=index");
			$("#form_search").submit();
		}

		function key_search() {
			if (event.keyCode == 13) {
				sendForm("form_search", "index.php?m=&c=User&a=index");
				return false;
			}
		}

		function save() {
			if (check_form("form_data")) {
				sendForm("form_data", "index.php?m=&c=User&a=save");
			}
		}

		function showdata(result) {
			$("#form_data select ").each(function() {
				$(this).find('option:first').attr('selected', 'selected');
			});
			for (var s in result.data) {
				set_val(s, result.data[s]);
			}
			$("#dept_name").val($("#dept_list option[value='" + $("#dept_id").val() + "']").text());
			img_url = $("#pic").val();
			if(img_url!=""){
				img_url+= "?t=" + Math.random();
				$("#emp_pic").attr("src", img_url);	
			}else{
				$("#emp_pic").attr("src", "/Uploads/emp_pic/no_avatar.jpg");
			}	
						
			$("#save_name").val("");
			$("#opmode").val("edit");
		}


		$(document).ready(function() {
			set_return_url();
			set_val('eq_is_del', "0");
			$(".sub_left_menu tbody td.click").click(function() {
				$tr = $(this).parent();
				$(".sub_left_menu tbody tr.active").removeClass("active");
				$tr.addClass("active");
				sendAjax("index.php?m=&c=User&a=read", "id=" + $tr.attr("id"), function(data) {
					showdata(data);
				});
				return false;
			});
		});

	</script>

	</body>
	
</body>
</html>