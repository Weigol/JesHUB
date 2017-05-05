<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
	  <!-- Amaze UI CSS -->
  <link rel="stylesheet" href="${ctxStatic}/templets/jiyu2015/css/amazeui.css">
  <link rel="stylesheet" href="${ctxStatic}/templets/jiyu2015/css/style.css">
  <!--[if lt IE 9]>

<script src="${ctxStatic}/templets/jiyu2015/js/polyfill/rem.min.js"></script>

<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctxStatic}/templets/jiyu2015/js/jquery.min.js"></script>
<script src="${ctxStatic}/templets/jiyu2015/js/amazeui.min.js"></script>
<!--<![endif]-->
</head>
<body>
  <%--   <div class="hero-unit" style="padding-bottom:35px;margin:10px 0;">
      <c:set var="article" value="${fnc:getArticle('2')}"/>
      <h1>${fns:abbr(article.title,28)}</h1><p></p>
      <p>${fns:abbr(fns:replaceHtml(article.articleData.content),260)}</p>
      <p><a href="${article.url}" class="btn btn-primary btn-large">&nbsp;&nbsp;&nbsp;查看详情 &raquo;&nbsp;&nbsp;&nbsp;</a></p>
    </div>
    <div class="row">
      <div class="span4">
        <h4><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>组织机构</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span4">
        <h4> <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>质量监督</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 6, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span4">
        <h4><small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>政策法规</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
    </div> --%>
    
    
    
    
    
    <!--banner-->
<div class="am-container am-hide-sm-only am-padding-horizontal-0">
  <div data-am-widget="slider" class="am-slider am-slider-d2" data-am-slider='{&quot;directionNav&quot;:false}'>
  <ul class="am-slides">
    <!--<li>
      <a href="#" target="_blank">
      <img src="${ctxStatic}/templets/jiyu2015/images/banner/banner1.jpg" class="am-img-responsive">
      <div class="am-slider-desc-1 am-show-lg-only">
        <div class="am-slider-content">
          <h2 class="am-slider-title">远方 有一个地方 那里种有我们的梦想</h2>
          <p>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内</p>
        </div>
        <a class="am-btn am-btn-primary" href="#">了解更多</a>
      </div>
      </a>
    </li>-->
    <li>
      <a href="chanping/40.html" target="_blank">
      <img src="${ctxStatic}/templets/jiyu2015/images/banner/banner2.jpg" class="am-img-responsive">
      <div class="am-slider-desc-2 am-show-lg-only">
        <!--<div class="am-slider-content">
          <h2 class="am-slider-title">某天 也许会相遇 相遇在这个好地方</h2>
          <p>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内</p>
        </div>-->
        <!--<a class="am-btn am-btn-primary" href="chanping/40.html" target="_blank">了解更多</a>-->
      </div>
      </a>
    </li>
    <li>
      <a href="chanping/39.html" target="_blank">
      <img src="${ctxStatic}/templets/jiyu2015/images/banner/banner3.jpg" class="am-img-responsive">
      <div class="am-slider-desc-3 am-show-lg-only">
        <!--<div class="am-slider-content">
          <h2 class="am-slider-title">不要太担心 只因为我相信 终会走过这条遥远的道路</h2>
          <p>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内</p>
        </div>-->
        <!--<a class="am-btn am-btn-primary" href="chanping/39.html" target="_blank">了解更多</a>-->
      </div>
      </a>
    </li>
    <li>
      <img src="${ctxStatic}/templets/jiyu2015/images/banner/banner4.jpg" class="am-img-responsive">
      <!--<div class="am-slider-desc">
        <div class="am-slider-content">
          <h2 class="am-slider-title">OH PARA PARADISE 是否那么重要 你是否那么地遥远</h2>
          <p>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内</p>
        </div>
        <a class="am-slider-more" href="#">了解更多</a>
      </div>-->
    </li>
  </ul>
  </div>
</div>
<!--banner-->
<div class="am-g am-show-sm-only">
  <div data-am-widget="slider" class="am-slider am-slider-d2" data-am-slider='{&quot;directionNav&quot;:false}'>
  <ul class="am-slides">
    <li>
      <a href="chanping/40.html" target="_blank">
      <img src="${ctxStatic}/templets/jiyu2015/images/banner/banner2_sm.jpg" class="am-img-responsive">
      </a>
    </li>
    <li>
      <a href="chanping/39.html" target="_blank">
      <img src="${ctxStatic}/templets/jiyu2015/images/banner/banner3_sm.jpg" class="am-img-responsive">
      </a>
    </li>
  </ul>
  </div>
</div>
<!--box1-->
<div class="am-container am-padding-horizontal-0">
  <!--新闻中心-->
  <div class="am-u-lg-4 am-padding-horizontal-sm">
    <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default am-margin-horizontal-0">
      <h2 class="am-titlebar-title ">新闻动态</h2>
      <nav class="am-titlebar-nav">
        <a href="news" class="">more &raquo;</a>
      </nav>
    </div>
    <div class="am-list-news-bd">
      <ul class="am-list am-padding-horizontal-xs">
        <li class="am-g am-list-item-dated" style="border:0">
          <a href="news/104.html" title="极域成功晋级第四届创新创业大赛国赛" class="am-list-item-hd ">极域成功晋级第四届创新创业大赛国赛</a>
          <span class="am-list-date">16-08-08</span>
        </li>
<li class="am-g am-list-item-dated" style="border:0">
          <a href="news/103.html" title="极域参加2016年春季全国高教仪器设备" class="am-list-item-hd ">极域参加2016年春季全国高教仪器设备</a>
          <span class="am-list-date">16-08-08</span>
        </li>
<li class="am-g am-list-item-dated" style="border:0">
          <a href="news/105.html" title="极域参加第 69 届教育装备展示会" class="am-list-item-hd ">极域参加第 69 届教育装备展示会</a>
          <span class="am-list-date">16-08-08</span>
        </li>
<li class="am-g am-list-item-dated" style="border:0">
          <a href="news/91.html" title="2015省数学专业委员会年会圆满召开 极" class="am-list-item-hd ">2015省数学专业委员会年会圆满召开 极</a>
          <span class="am-list-date">15-02-06</span>
        </li>

      </ul>
    </div>
  </div>
  <!--快捷通道-->
  <div class="am-u-lg-4 am-padding-horizontal-sm">
    <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default am-margin-horizontal-0">
      <h2 class="am-titlebar-title ">快捷通道</h2>
    </div>
    <ul class="am-avg-lg-2 am-avg-md-2 am-avg-sm-2 am-margin-top-xs">
      <li class="am-padding-horizontal-xs">
        <a class="am-btn am-btn-primary am-btn-block" href="chanping/" target="_blank">
          <div><i class="am-icon-desktop am-icon-lg" style="margin-bottom:3px;"></i></div>
          产品中心</a>
      </li>
      <li class="am-padding-horizontal-xs">
        <a class="am-btn am-btn-primary am-btn-block" href="fangan/" target="_blank">
          <div><i class="am-icon-clipboard am-icon-lg" style="margin-bottom:3px;"></i></div>
          解决方案</a>
      </li>
    </ul>
    <ul class="am-avg-lg-2 am-avg-md-2 am-avg-sm-2 am-margin-top-xs">
      <li class="am-padding-horizontal-xs">
        <a class="am-btn am-btn-primary am-btn-block" href="soft/free/" target="_blank">
          <div><i class="am-icon-download am-icon-lg" style="margin-bottom:3px;"></i></div>
          产品试用</a>
      </li>
      <li class="am-padding-horizontal-xs">
        <a class="am-btn am-btn-primary am-btn-block" href="service/" target="_blank">
          <div><i class="am-icon-users am-icon-lg" style="margin-bottom:3px;"></i></div>
          极域服务</a>
      </li>
    </ul>
  </div>
  <!--案例中心-->
  <div class="am-u-lg-4 am-padding-horizontal-sm">
    <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default am-margin-horizontal-0">
      <h2 class="am-titlebar-title ">案例中心</h2>
      <nav class="am-titlebar-nav">
        <a href="chenggonganli" class="">more &raquo;</a>
      </nav>
    </div>
    <div data-am-widget="slider" class="am-slider am-slider-c1" data-am-slider='{&quot;directionNav&quot;:false}'>
      <ul class="am-slides">
        <li>
          <a href="chenggonganli/42.html">
            <img src="uploads/150806/1-150P6222QC91.jpg">
            <div class="am-slider-desc">复旦大学</div>
          </a>
        </li>
<li>
          <a href="chenggonganli/32.html">
            <img src="uploads/150806/1-150P6222935543.jpg">
            <div class="am-slider-desc">同济大学</div>
          </a>
        </li>
<li>
          <a href="chenggonganli/31.html">
            <img src="uploads/150806/1-150P6222954602.jpg">
            <div class="am-slider-desc">华东理工大学</div>
          </a>
        </li>
<li>
          <a href="chenggonganli/41.html">
            <img src="uploads/150806/1-150P6224229D7.jpg">
            <div class="am-slider-desc">上海市西南位育中学</div>
          </a>
        </li>

      </ul>
    </div>
  </div>
</div>
<!--box2-->
<div class="am-container am-padding-horizontal-sm">
  <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default am-margin-horizontal-0">
    <h2 class="am-titlebar-title ">极域产品</h2>
    <nav class="am-titlebar-nav">
      <a href="chanping" class="">more &raquo;</a>
    </nav>
  </div>
  <ul class="am-avg-lg-3 am-avg-md-3 am-avg-sm-2 am-padding-top-xs">
  <li>
      <div class="am-u-lg-12 am-u-lg-centered am-u-md-12 am-u-md-centered am-u-sm-10 am-u-sm-centered"><a href="chanping/4.html"><img src="uploads/140626/1-140626163U3c4.jpg" class="am-img-responsive" alt="电子教室系统"></a></div>
      <p class="am-text-center am-margin-vertical-xs am-text-xl am-show-md-up"><a href="chanping/4.html">电子教室系统</a></p>
      <p class="am-text-center am-margin-vertical-xs am-text-sm am-show-sm-only"><a href="chanping/4.html">电子教室系统</a></p>
    </li>
<li>
      <div class="am-u-lg-12 am-u-lg-centered am-u-md-12 am-u-md-centered am-u-sm-10 am-u-sm-centered"><a href="chanping/39.html"><img src="uploads/140626/1-1406261604032c.jpg" class="am-img-responsive" alt="数字语音系统"></a></div>
      <p class="am-text-center am-margin-vertical-xs am-text-xl am-show-md-up"><a href="chanping/39.html">数字语音系统</a></p>
      <p class="am-text-center am-margin-vertical-xs am-text-sm am-show-sm-only"><a href="chanping/39.html">数字语音系统</a></p>
    </li>
<li>
      <div class="am-u-lg-12 am-u-lg-centered am-u-md-12 am-u-md-centered am-u-sm-10 am-u-sm-centered"><a href="chanping/40.html"><img src="uploads/140625/1-140625164TV43.jpg" class="am-img-responsive" alt="电子书包课堂管理系统"></a></div>
      <p class="am-text-center am-margin-vertical-xs am-text-xl am-show-md-up"><a href="chanping/40.html">电子书包课堂管理系统</a></p>
      <p class="am-text-center am-margin-vertical-xs am-text-sm am-show-sm-only"><a href="chanping/40.html">电子书包课堂管理系统</a></p>
    </li>
<li>
      <div class="am-u-lg-12 am-u-lg-centered am-u-md-12 am-u-md-centered am-u-sm-10 am-u-sm-centered"><a href="chanping/11.html"><img src="uploads/140626/1-1406261A40Y14.jpg" class="am-img-responsive" alt="还原管理系统"></a></div>
      <p class="am-text-center am-margin-vertical-xs am-text-xl am-show-md-up"><a href="chanping/11.html">还原管理系统</a></p>
      <p class="am-text-center am-margin-vertical-xs am-text-sm am-show-sm-only"><a href="chanping/11.html">还原管理系统</a></p>
    </li>
<li>
      <div class="am-u-lg-12 am-u-lg-centered am-u-md-12 am-u-md-centered am-u-sm-10 am-u-sm-centered"><a href="chanping/37.html"><img src="uploads/140626/1-1406261AR41A.jpg" class="am-img-responsive" alt="全自动跟踪录播方案"></a></div>
      <p class="am-text-center am-margin-vertical-xs am-text-xl am-show-md-up"><a href="chanping/37.html">全自动跟踪录播方案</a></p>
      <p class="am-text-center am-margin-vertical-xs am-text-sm am-show-sm-only"><a href="chanping/37.html">全自动跟踪录播方案</a></p>
    </li>
<li>
      <div class="am-u-lg-12 am-u-lg-centered am-u-md-12 am-u-md-centered am-u-sm-10 am-u-sm-centered"><a href="chanping/38.html"><img src="uploads/140626/1-140626161303T4.jpg" class="am-img-responsive" alt="移动录播系统"></a></div>
      <p class="am-text-center am-margin-vertical-xs am-text-xl am-show-md-up"><a href="chanping/38.html">移动录播系统</a></p>
      <p class="am-text-center am-margin-vertical-xs am-text-sm am-show-sm-only"><a href="chanping/38.html">移动录播系统</a></p>
    </li>

  </ul>
</div>



    
</body>
</html>