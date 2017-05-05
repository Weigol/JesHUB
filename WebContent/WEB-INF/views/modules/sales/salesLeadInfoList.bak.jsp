<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>销售线索信息功能管理</title>
	<meta name="decorator" content="default"/>
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
		window.open("/oa_tqing/index.php?m=&c=Task&a=add", "_self");
	}

	$(document).ready(function() {
	//	set_return_url();
	});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/sales/salesLeadInfo/">销售线索信息功能列表</a></li>
		<shiro:hasPermission name="sales:salesLeadInfo:edit"><li><a href="${ctx}/sales/salesLeadInfo/form">销售线索信息功能添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="salesLeadInfo" action="${ctx}/sales/salesLeadInfo/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>客户名称：</label>
				<form:input path="companyName" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>联系人名称：</label>
				<form:input path="contactName" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>负责人：</label>
				<form:input path="principal" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>线索状态：</label>
				<form:input path="leadStatus" htmlEscape="false" maxlength="10" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>客户编码</th>
				<th>客户名称</th>
				<th>联系人代码</th>
				<th>联系人名称</th>
				<th>负责人</th>
				<th>业务条线</th>
				<th>线索状态</th>
				<th>创建人</th>
				<th>创建时间</th>
				<shiro:hasPermission name="sales:salesLeadInfo:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="salesLeadInfo">
			<tr>
				<td><a href="${ctx}/sales/salesLeadInfo/form?id=${salesLeadInfo.id}">
					${salesLeadInfo.companyId}
				</a></td>
				<td>
					${salesLeadInfo.companyName}
				</td>
				<td>
					${salesLeadInfo.contactId}
				</td>
				<td>
					${salesLeadInfo.contactName}
				</td>
				<td>
					${salesLeadInfo.principal}
				</td>
				<td>
					${salesLeadInfo.bizLine}
				</td>
				<td>
					${salesLeadInfo.leadStatus}
				</td>
				<td>
					${salesLeadInfo.createdUser}
				</td>
				<td>
					${salesLeadInfo.createdTime}
				</td>
				<shiro:hasPermission name="sales:salesLeadInfo:edit"><td>
    				<a href="${ctx}/sales/salesLeadInfo/form?id=${salesLeadInfo.id}">修改</a>
					<a href="${ctx}/sales/salesLeadInfo/delete?id=${salesLeadInfo.id}" onclick="return confirmx('确认要删除该销售线索信息功能吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>