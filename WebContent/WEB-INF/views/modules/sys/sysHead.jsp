<%@ page contentType="text/html;charset=UTF-8" %>
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
								
				<a class="btn btn-app app-nav btn-xs nav-app"  href="javascript:void(0)"  url="{:U($top_menu_vo['url'])}" node="{$top_menu_vo.id}" onclick="click_top_menu(this)"  title="${menu.name}"> <i class="{$top_menu_vo.icon} bigger-100"></i>${menu.name}</a>
								
								
								
							</c:if>
			
			   <a class="btn btn-app btn-xs btn-danger" style="margin-top:15px;margin-bottom:20px;margin-left:7px;margin-right:10px;" href="{:U('public/logout')}" ><i class="fa fa-sign-out bigger-100"></i>退出</a>
		</ul>
	</div><!-- /.navbar-collapse -->
</nav>