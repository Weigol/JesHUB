<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>${fns:getConfig('productName')}</title>
	<meta name="decorator" content="admin_basic"/>
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
<script type="text/javascript">	

 $(function(){ 
 	var cid = $('#nav_list> li>.submenu');
	 cid.each(function(i){ 
       $(this).attr('id',"Sort_link_"+i);
     });
	 getNotifyNum();
 });
 jQuery(document).ready(function(){ 	
    $.each($(".submenu"),function(){
		var $aobjs=$(this).children("li");
		var rowCount=$aobjs.size();
		var divHeigth=$(this).height();
	    $aobjs.height(divHeigth/rowCount);	  	
 	 }); 
    //初始化宽度、高度
    $("#main-container").height($(window).height()-76); 
	$("#iframe").height($(window).height()-140); 
	 
	$(".sidebar").height($(window).height()-99); 
    var thisHeight = $("#nav_list").height($(window).outerHeight()-173); 
	$(".submenu").height();
	$("#nav_list").children(".submenu").css("height",thisHeight);
	
    //当文档窗口发生改变时 触发  
    $(window).resize(function(){
		$("#main-container").height($(window).height()-76); 
		$("#iframe").height($(window).height()-140);
		$(".sidebar").height($(window).height()-99); 
		
		var thisHeight = $("#nav_list").height($(window).outerHeight()-173); 
		$(".submenu").height();
		$("#nav_list").children(".submenu").css("height",thisHeight);
    });
    $(".iframeurl").click(function(){
        var cid = $(this).attr("name");
		var cname = $(this).attr("title");
        $("#iframe").attr("src",cid).ready();
		$("#Bcrumbs").attr("href",cid).ready();
		$(".Current_page a").attr('href',cid).ready();	
        $(".Current_page").attr('name',cid);
		$(".Current_page").html(cname).css({"color":"#333333","cursor":"default"}).ready();	
		$("#parentIframe").html('<span class="parentIframe iframeurl"> </span>').css("display","none").ready();	
		$("#parentIfour").html(''). css("display","none").ready();		
    });	
 });

/*********************点击事件*********************/
	$( document).ready(function(){
	  	$('#firstIndex').click(function(){
	  		$('#nav_list').find('li.home').removeClass('active');
	  		$(this).addClass('active');
	  	});		
	  	$('#firstIndex').click();
	
	
	    $('#Exit_system').on('click', function(){
	      layer.confirm('是否确定退出系统？', {
	     btn: ['是','否'] ,//按钮
		 icon:2,
	    }, 
		function(){
		  location.href="${ctx}/logout";
	    });
	});
})
</script>	
	</head>
	<body>
	
  <body class="Mail">
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
		<a href="{:U('index/index')}" class="navbar-brand"><i class="fa fa-leaf"></i>${fns:getConfig('productName')}</a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="navbar-collapse-6">
		<ul class="nav navbar-nav navbar-right">
			
					<c:set var="firstMenu" value="true"/>
						<c:forEach items="${fns:getMenuList()}" var="menu" varStatus="idxStatus">
							<!-- 如果一级菜单含有链接，则直接展示一级菜单跳转，不展示下级菜单 -->
							<c:if test="${empty menu.href && menu.parent.id eq '1' && menu.isShow eq '1'}">
								
				<a class="btn btn-app app-nav btn-xs nav-app"   node="${menu.id}"  href="javascript:void(0)" name="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu.href ? menu.href : '/404'}"  title="${menu.name}" class="iframeurl" title="${menu.name}"> <i class="${menu.icon} fa fa-envelope-o bc-mail bigger-100"></i>${menu.name}</a>
								
								
								
							</c:if>
							</c:forEach>
			
			   <a class="btn btn-app btn-xs btn-danger" style="margin-top:15px;margin-bottom:20px;margin-left:7px;margin-right:10px;" href="{:U('public/logout')}" ><i class="fa fa-sign-out bigger-100"></i>退出</a>
		</ul>
	</div><!-- /.navbar-collapse -->
</nav>
	
	
		<div class="navbar navbar-default" id="navbar">
        <script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
					<%-- 	<small>					
						<img src="${ctxStatic}/images/logo.png"> 
						</small>
						--%>
				
					</a><!-- /.brand -->
			
				</div><!-- /.navbar-header -->
			   <div class="navbar-header pull-right" role="navigation">
               <ul class="nav ace-nav">	
                <li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<span  class="time"><em id="time"></em></span><span class="user-info"><small>欢迎光临,</small>${fns:getUser().name}</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li><a href="${ctx}/sys/user/modifyPwd" target="iframe"><i class="icon-cog"></i>修改密码</a></li>
								<li><a href="${ctx}/sys/user/info" target="iframe"><i class="icon-user"></i>个人资料</a></li>
								<li class="divider"></li>
								<li><a href="javascript:ovid(0)" id="Exit_system"><i class="icon-off"></i>退出</a></li>
							</ul>
						</li>
	                   <li class="purple">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-bell-alt"></i><span id="notifyNum" class="badge badge-important"></span></a>
							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                            <li class="dropdown-header"><i class="icon-warning-sign"></i><span id="notifyNum2" class="badge badge-important"></span></li>
								<li>
									<a href="${ctx}/oa/oaNotify/self" target="iframe">
										查看所有通知
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>	
					</ul>
                </div>
			</div>
		</div>
		<div class="main-container" id="main-container">
	        <script type="text/javascript">
					try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>
					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
                     	<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						${fns:getConfig('productName')}
						</div>
						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>
							<span class="btn btn-info"></span>
							<span class="btn btn-warning"></span>
							<span class="btn btn-danger"></span>
						 </div>
					</div><!-- #sidebar-shortcuts -->
					<ul class="nav nav-list" id="nav_list">
						<c:set var="firstMenu" value="true"/>
						<c:forEach items="${fns:getMenuList()}" var="menu" varStatus="idxStatus">
							<!-- 如果一级菜单含有链接，则直接展示一级菜单跳转，不展示下级菜单 -->
							<c:if test="${not empty menu.href && menu.parent.id eq '1' && menu.isShow eq '1'}">
								<c:choose>
									<c:when test="${firstMenu}">  
										<li class="home" ><a id="firstIndex"  href="javascript:void(0)" name="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu.href ? menu.href : '/404'}"  title="${menu.name}" class="iframeurl"><i class="icon-dashboard"></i>${menu.name}</a></li>
										<c:set var="firstMenu" value="false"/>  
									</c:when>
									<c:otherwise>
										<li class="home"><a  href="javascript:void(0)" name="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu.href : '/404'}"  title="${menu.name}" class="iframeurl"><i class="icon-double-angle-right"></i>${menu.name}</a></li>
									</c:otherwise>
								</c:choose>
							</c:if>
							<!-- 如果一级菜单不含有链接，则展示二级菜单跳转 -->
							<c:if test="${empty menu.href && menu.parent.id eq '1'&&menu.isShow eq '1'}">
								<li><a href="#" class="dropdown-toggle"><i class="icon-${menu.icon}"></i><span class="menu-text"> ${menu.name} </span><b class="arrow icon-angle-down"></b></a>
									<ul class="submenu">
										<c:forEach items="${menuList}" var="menu2">
											<c:if test="${menu2.parent.id eq menu.id&&menu2.isShow eq '1'}">
												<c:choose>
												   <c:when test="${firstMenu}">  
														<li class="home" ><a id="firstIndex"  href="javascript:void(0)" name="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu2.href : '/404'}"  title="${menu2.name}" class="iframeurl"><i class="icon-double-angle-right"></i>${menu2.name}</a></li>
														<c:set var="firstMenu" value="false"/>  
												   </c:when>
												   <c:otherwise> 
														<li class="home"><a  href="javascript:void(0)" name="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu2.href : '/404'}"  title="${menu2.name}" class="iframeurl"><i class="icon-double-angle-right"></i>${menu2.name}</a></li>
												   </c:otherwise>
												</c:choose>
											</c:if>
										</c:forEach>
									</ul>
								</li>
							</c:if>
						</c:forEach>
					</ul>
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>
                    <script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>
				<div class="main-content">
                <script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
				</script>
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="#">首页</a>
						</li>
						<li class="active"><span class="Current_page iframeurl"></span></li>
                           <li class="active" id="parentIframe"><span class="parentIframe iframeurl"></span></li>
						<li class="active" id="parentIfour"><span class="parentIfour iframeurl"></span></li>
					</ul>
				</div>
                 
                 <iframe id="iframe" style="border:0; width:100%; background-color:#FFF;"name="iframe" frameborder="0" src="">  </iframe>
				 

<!-- /.page-content -->
				</div><!-- /.main-content -->	
                	
	</div><!-- /.main-container-inner -->
			
		</div>
         <!--修改密码样式-->
         <div class="change_Pass_style" id="change_Pass">
            <ul class="xg_style">
             <li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input name="原密码" type="password" class="" id="password"></li>
             <li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input name="新密码" type="password" class="" id="Nes_pas"></li>
             <li><label class="label_name">确认密码</label><input name="再次确认密码" type="password" class="" id="c_mew_pas"></li>
              
            </ul>
     <!--       <div class="center"> <button class="btn btn-primary" type="button" id="submit">确认修改</button></div>-->
         </div>
        <!-- /.main-container -->
		<!-- basic scripts -->
		
</body>
</html>