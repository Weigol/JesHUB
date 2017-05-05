<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>销售线索信息功能管理</title>
	<meta name="decorator" content="admin_OA"/>
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
	
	function add() {
		window.open("${ctx}/sales/salesLeadInfo/form", "_self");
	}
		
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>



<!-- <form method="post" name="form_adv_search" id="form_adv_search">
 -->
 <div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
	<div class="page-header clearfix">
	<h1 class="col-sm-8">所有任务</h1>
	<div class="col-sm-4 search_box">
		<form name="form_search" id="form_search" method="post" class="pull-right">
			<div class="input-group col-20">
				<input  class="form-control" type="text" name="keyword" id="keyword"/>
				<div class="input-group-btn">
					<a class="btn btn-sm btn-info" onclick="submit_search();"><i class="fa fa-search" ></i></a>
					<a class="btn btn-sm btn-success" onclick="toggle_adv_search();"><i id="toggle_adv_search_icon" class="fa fa-chevron-down bigger-125"></i></a>
				</div>
			</div>
		</form>
	</div>
</div>	
<form:form name="form_adv_search" id="form_adv_search" modelAttribute="salesLeadInfo" action="${ctx}/sales/salesLeadInfo/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		
	<div class="adv_search panel panel-default  display-none"  id="adv_search">
		<div class="panel-heading">
			<div class="row">
				<h4 class="col-xs-6">高级搜索</h4>
				<div class="col-xs-6 text-right">
					<a  class="btn btn-sm btn-info" onclick="submit_adv_search();">搜索</a>
					<a  class="btn btn-sm " onclick="close_adv_search();">关闭</a>
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="form-group col-sm-6">
				<label class="col-sm-4 control-label" for="li_name">文件名：</label>
				<div class="col-sm-8">
					<input  class="form-control" type="text" id="li_name" name="li_name" >
				</div>
			</div>
			<div class="form-group col-sm-6">
				<label class="col-sm-4 control-label" for="li_content">内容：</label>
				<div class="col-sm-8">
					<input  class="form-control" type="text" id="li_content" name="li_content" >
				</div>
			</div>

			<div class="form-group col-sm-6">
				<label class="col-sm-4 control-label" for="eq_user_name">登录人：</label>
				<div class="col-sm-8">
					<input  class="form-control" type="text" id="eq_user_name" name="eq_user_name" >
				</div>
			</div>
			<div class="form-group col-sm-6">
				<label class="col-sm-4 control-label" for="be_create_time">登录时间：</label>
				<div class="col-sm-8">
					<div class="input-daterange input-group" >
						<input type="text" class="input-sm form-control text-center" name="be_create_time" />
						<span class="input-group-addon">-</span>
						<input type="text" class="input-sm form-control text-center" name="en_create_time" />
					</div>
				</div>
			</div>
		</div>
	</div>
	</form:form>
<div class="space-8"></div>
<div class="operate panel panel-default">
	<div class="panel-body">
		<div class="pull-left">
			<ul class="nav nav-pills">
				<li class="active disabled">
					<a href="{:U('index')}">所有任务</a>
				</li>

				<li>
					<a href="{:U('my_todo')}">等我接受的任务</a>
				</li>

				<li>
					<a href="{:U('index')}">我部门的任务</a>
				</li>
				<li>
					<a href="{:U('index')}">不知让谁处理的任务</a>
				</li>
				<li>
					<a href="{:U('index')}">未完成的任务</a>
				</li>
				<li>
					<a href="{:U('index')}">已完成的任务</a>
				</li>
				<li>
					<a href="{:U('index')}">我发布的任务</a>
				</li>
				<li>
					<a href="{:U('index')}">我指派的任务</a>
				</li>
			</ul>
		</div>
		<div class="pull-right">
			<a class="btn btn-sm btn-primary" onclick="add()">发布任务</a>
		</div>
	</div>
</div>
<sys:message content="${message}"/>
<div class="ul_table">
	<ul>
		<li class="thead">
			<div class="pull-left">
				<span class="col-10 ">客户编码</span>
				<span class="col-10 ">客户名称</span>
			</div>
			<div class="pull-right">
				<span class="col-15 ">联系人代码</span>
				<span class="col-10 ">联系人名称</span>
				<span class="col-15 ">负责人</span>
				<span class="col-10 ">业务条线</span>
				<span class="col-15 ">线索状态</span>
				<span class="col-10 ">创建时间</span>				
				<span class="col-15 autocut">创建人</span>
				
				
				
				<shiro:hasPermission name="sales:salesLeadInfo:edit"><span class="col-6">操作</span></shiro:hasPermission>
				
			</div>
			<div class="auto autocut">
				标题
			</div>
		</li>
		
		<c:if test="${empty page.list}">
		
			<li class="no-data">
				没找到数据
			</li>
		</c:if>
		<c:if test="${not empty page.list}">
	
				<c:forEach items="${page.list}" var="salesLeadInfo">
				<li class="tbody">
					<div class="pull-left">
						<span class="col-10 ">${salesLeadInfo.companyId}</span>
						<span class="col-10 ">${salesLeadInfo.companyName}</span>
					</div>
					<div class="pull-right">
						<span class="col-15 ">${salesLeadInfo.contactId}</span>
						<span class="col-15 ">${salesLeadInfo.contactName}</span>
						<span class="col-15 ">${salesLeadInfo.principal}</span>
						<span class="col-15 ">${salesLeadInfo.bizLine}</span>
						<span class="col-15 ">${salesLeadInfo.leadStatus}</span>
						<span class="col-15 ">${salesLeadInfo.createdUser}</span>
						<span class="col-15 ">${salesLeadInfo.createdTime}</span>
					<shiro:hasPermission name="sales:salesLeadInfo:edit"><td>
											<span class="col-9 text-center"><a href="{:U('edit','id='.$vo['id'])}">修改</a><a href="{:U('del','id='.$vo['id'])}">删除</a></span>
					
    				<a href="${ctx}/sales/salesLeadInfo/form?id=${salesLeadInfo.id}">修改</a>
					<a href="${ctx}/sales/salesLeadInfo/delete?id=${salesLeadInfo.id}" onclick="return confirmx('确认要删除该销售线索信息功能吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
						
					</div>
					<div class="auto autocut">
						<a href="{:U('read','id='.$vo['id'])}">{$vo.name}</a>
					</div>
				</li>
			</c:forEach>
			<div class="pagination">${page}</div>
		</c:if>
				
				
			
		
	</ul>
</div>
	<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
			
	


</body>
</html>