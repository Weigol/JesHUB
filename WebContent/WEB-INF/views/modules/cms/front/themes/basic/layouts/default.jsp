<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!doctype html>
<html class="no-js">
<head>
  <title><sitemesh:title default="欢迎光临"/> - ${site.title} -</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
  	<%@include file="/WEB-INF/views/modules/cms/front/include/head2.jsp" %>
	<sitemesh:head/>
</head>
<body>
<!--header-->
<!--top-->
<div class="am-g bg_grey am-show-md-up">
  <div class="am-container am-padding-horizontal-0">
    <div class="am-u-lg-2 am-fl am-padding-0">
      <dt class="am-text-xs" style="padding-top:8px;"><a class="font_black no_bold">免费咨询热线：400-6288-169</a></dt>
    </div> 
    <div class="am-u-lg-5 am-fr am-padding-0">
      <dl class="am-cf am-margin-0" style="padding-bottom:4px;">
        <dt class="am-fr am-margin-right-xs am-padding-bottom-xs"><a href="#" target="_blank" class="am-btn am-padding-vertical-0 am-padding-horizontal-0"><img src="${ctxStatic}/templets/jiyu2015/images/ico/weibo.png"></a></dt>
        <dt class="am-fr am-margin-right-sm">
          <div class="am-dropdown" data-am-dropdown>
            <button class="am-btn am-padding-vertical-0 am-padding-horizontal-0 am-dropdown-toggle" style="background:none;"><img src="${ctxStatic}/templets/jiyu2015/images/ico/weixin.png"></button>
            <div class="am-dropdown-content">
              <img src="${ctxStatic}/templets/jiyu2015/images/wx.jpg">
            </div>
          </div>
        </dt>
        <dt class="am-fr am-text-xs am-margin-right-xs" style="margin-top:8px;"><a class="font_black no_bold">点击微信按钮，关注微信公众号，更多优惠活动等着你&nbsp;<span class="am-icon-caret-right am-icon-sm"></span></a></dt>
      </dl>
    </div>
  </div>
</div>
<!--nav-->
<div class="am-container am-padding-horizontal-0 am-show-md-up">
  <div class="am-u-lg-4 am-padding-horizontal-0 am-padding-vertical"><img src="${ctxStatic}/templets/jiyu2015/images/logo22.png"></div>
  <div class="am-u-lg-8 am-padding-0">
    <ul class="am-nav am-nav-pills am-align-right " style="margin-top:25px;">
      <li class="am-active"><a href="">首页</a></li>
      
      
      <c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status">
      <c:if test="${status.index lt 5}">
                    <c:set var="menuCategoryId" value=",${category.id},"/>
		    		<li class="am-dropdown " data-am-dropdown>
		    		
		    		 <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"   href="${category.url}" target="${category.target}"> 
		    		 ${category.name}<span class="am-icon-caret-down"></span>
		    		</a>
		    		 <c:if test="${not empty  fnc:getSubCategory(site.id,category.id)}">
		    		 <ul class="am-dropdown-content">
		    		 <c:forEach items="${fnc:getSubCategory(site.id,category.id)}" var="subcategory" >
		    		 
		    		    <li><a href="${subcategory.url}" target="${subcategory.target}" > ${subcategory.name}</a></li>
		    		 </c:forEach>
		    		  </ul>
		    		  </c:if>
		    		
		    		
		    		</li>
       </c:if>
      </c:forEach>
		    	
       
     
     
    </ul>
  </div>
</div>

	<sitemesh:body/>


<!--友情链接-->
<div class="am-g bg_grey am-margin-top am-show-md-up">
  <div class="am-container am-padding-horizontal-0">
    <p class="am-margin-vertical-xs">友情链接：
    
    <a href="[field:arcurl/]" class="am-padding-horizontal-xs am-text-sm"><a href='http://www.shmythware.com' target='_blank'>极域上海</a> </a>
    
    <a href="[field:arcurl/]" class="am-padding-horizontal-xs am-text-sm"><a href='http://www.shmythware.com' target='_blank'>上海电子教室</a> </a>
    
    <a href="[field:arcurl/]" class="am-padding-horizontal-xs am-text-sm"><a href='http://www.shmythware.com' target='_blank'>上海语音教室</a> </a>
    
    <a href="[field:arcurl/]" class="am-padding-horizontal-xs am-text-sm"><a href='http://www.povaedu.com' target='_blank'>上海博华国际高中</a> </a>
    
    </p>
  </div>  
</div>




<!--footer-->
<div class="am-g bg_grey_1 am-hide-md-down">
  <div class="am-container am-padding-bottom am-padding-top am-padding-horizontal-0">
    <div class="am-u-lg-4 font_grey am-padding-horizontal-0 am-cf">
      <img src="${ctxStatic}/templets/jiyu2015/images/wx_footer.jpg" class="am-img-responsive">
    </div>
    <div class="am-u-lg-8 font_grey am-padding-horizontal-0 am-text-right">
      <p class="am-text-sm am-margin-vertical-0">上海浦东新区南泉北路1035弄紫金瀚宫505室　<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1256107945'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1256107945%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></p>
      <p class="am-text-sm am-margin-top-xs am-margin-bottom-0"><span>电话：400-6288-169 孙经理</span>｜<span>24小时热线：17321165360</span>｜<span>沪ICP备14025092号-2</span></p>
      <p class="am-text-sm am-margin-top-xs am-margin-bottom-0"><span>版权所有：上海智翱实业有限公司</span>｜<span>Copyright © 2010 - 2017 www.shmythware.com</span></p>
      
    </div>
  </div>
</div>
<!--smfooter-->
<div data-am-widget="navbar" class="am-navbar am-cf am-navbar-default am-hide-lg-only"
id="">
  <ul class="am-navbar-nav am-cf am-avg-sm-3">
    <li>
      <a href="http://webim.qiao.baidu.com//im/index?siteid=4333361&ucid=6848394" class="">
        <img src="http://amazeui.b0.upaiyun.com/assets/i/cpts/navbar/Information.png"
        alt="消息" />
        <span class="am-navbar-label">沟通</span>
      </a>
    </li>
    <li>
      <a href="tel:400-6288-169" class="">
        <span class="am-icon-phone"></span>
        <span class="am-navbar-label">呼叫</span>
      </a>
    </li>
    <li data-am-navbar-share>
      <a href="###" class="">
        <span class="am-icon-share-square-o"></span>
        <span class="am-navbar-label">分享</span>
      </a>
    </li>
  </ul>
</div>
<!--qq-->
<SCRIPT type=text/javascript src="${ctxStatic}/templets/jiyu2015/js/kefu.js"></SCRIPT>
<div id="floatTools" class="float0831 am-hide-sm-only">  
  <div id="divFloatToolsView" class="floatR">
    <div class="tp"></div>
    <div class="cn">
      <ul style="list-style: none;" class="am-margin-vertical-0">
        <li class="top2">
          <H3 class="titZx">在线咨询</H3>
        </li>
        <li><SPAN class="icoZx">在线咨询</SPAN> </li>
          <li><A class="icoTc am-text-xs" href="http://wpa.qq.com/msgrd?v=3&uin=2880723291&site=qq&menu=yes" target="_blank">赵老师</A> 
          </li>
          <li><A class="icoTc am-text-xs" href="http://wpa.qq.com/msgrd?v=3&uin=2880723299&site=qq&menu=yes" target="_blank">陆老师</A> 
          </li>
      <li><A class="icoTc am-text-xs" href="http://wpa.qq.com/msgrd?v=3&uin=2880723290&site=qq&menu=yes" target="_blank">孙老师</A> 
      </li>
      <li><A class="icoTc am-text-xs" href="http://wpa.qq.com/msgrd?v=3&uin=2880723293&site=qq&menu=yes" target="_blank">技术支持</A> 
      </li>
      </ul>
      <ul style="list-style: none;" class="am-margin-vertical-0">
        <li><SPAN class="icoZx">电话咨询</SPAN> </li>
        <li><SPAN class="icoTl am-text-xs">400-6288-169</SPAN> </li>
      </ul>
    </div>
  </div>
  
</div>

        


</body>
</html>