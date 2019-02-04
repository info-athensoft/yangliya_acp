<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- global variables settings -->
<c:set var="webapp_name" value="/acp"/>


<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
<!-- ENDS page variables -->

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>INF. Athensoft | ACP</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #2 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="${webapp_name}/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="${webapp_name}/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="${webapp_name}/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="${webapp_name}/assets/layouts/layout2/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/layouts/layout2/css/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="${webapp_name}/assets/layouts/layout2/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner ">
                <!-- BEGIN LOGO -->
                <jsp:include page="${inc_dir}/page-logo.jsp"></jsp:include>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN PAGE ACTIONS -->
                <!-- DOC: Remove "hide" class to enable the page header actions -->
                <jsp:include page="${inc_dir}/page-action.jsp"></jsp:include>
                <!-- END PAGE ACTIONS -->
                <!-- BEGIN PAGE TOP -->
                <jsp:include page="${inc_dir}/page-top.jsp"></jsp:include>
                <!-- END PAGE TOP -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN HEADER & CONTENT DIVIDER -->
        <div class="clearfix"> </div>
        <!-- END HEADER & CONTENT DIVIDER -->
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN SIDEBAR -->
            <div class="page-sidebar-wrapper">
                <!-- END SIDEBAR -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <jsp:include page="${inc_dir}/page-sidebar.jsp"></jsp:include>
                <!-- END SIDEBAR -->
            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">
                    <!-- BEGIN PAGE HEADER-->
                    <!-- BEGIN THEME PANEL -->
                    <!-- END THEME PANEL -->
                    
                    <h1 class="page-title"> 杨丽娅舞蹈学校管理后台
                        <small>版本号 1.0 发布日期 2019-01</small>
                    </h1>
                    <!-- 
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="#">Home</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                <span>Dashboard</span>
                            </li>
                        </ul>
                        
                    </div> -->
                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 ">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-green-sharp">
                                            <span data-counter="counterup" data-value="${newsTotalCount}">0</span>
                                        </h3>
                                        <small>总新闻数</small>
                                    </div>
                                    <div class="icon">
                                        <i class="icon-pie-chart"></i>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                            <span class="sr-only">76% progress</span>
                                        </span>
                                    </div>
                                    <div class="status">
                                        <div class="status-title"> 增长率 </div>
                                        <div class="status-number"> 76% </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 ">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-red-haze">
                                            <span data-counter="counterup" data-value="${reviewsTotalCount}">0</span>
                                        </h3>
                                        <small>总评论数</small>
                                    </div>
                                    <div class="icon">
                                        <i class="icon-like"></i>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 85%;" class="progress-bar progress-bar-success red-haze">
                                            <span class="sr-only">85% change</span>
                                        </span>
                                    </div>
                                    <div class="status">
                                        <div class="status-title"> 增长率 </div>
                                        <div class="status-number"> 85% </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 ">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-blue-sharp">
                                            <span data-counter="counterup" data-value="${adpostTotalCount}"></span>
                                        </h3>
                                        <small>总班级数</small>
                                    </div>
                                    <div class="icon">
                                        <i class="icon-basket"></i>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 45%;" class="progress-bar progress-bar-success blue-sharp">
                                            <span class="sr-only">45% grow</span>
                                        </span>
                                    </div>
                                    <div class="status">
                                        <div class="status-title"> 增长率 </div>
                                        <div class="status-number"> 45% </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat2 ">
                                <div class="display">
                                    <div class="number">
                                        <h3 class="font-purple-soft">
                                            <span data-counter="counterup" data-value="${memberTotalCount}"></span>
                                        </h3>
                                        <small>总学员数</small>
                                    </div>
                                    <div class="icon">
                                        <i class="icon-user"></i>
                                    </div>
                                </div>
                                <div class="progress-info">
                                    <div class="progress">
                                        <span style="width: 57%;" class="progress-bar progress-bar-success purple-soft">
                                            <span class="sr-only">56% change</span>
                                        </span>
                                    </div>
                                    <div class="status">
                                        <div class="status-title"> 增长率 </div>
                                        <div class="status-number"> 57% </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-6 col-xs-12 col-sm-12">
                            <div class="portlet light ">
                                <div class="portlet-title tabbable-line">
                                    <div class="caption">
                                        <i class="icon-bubbles font-dark hide"></i>
                                        <span class="caption-subject font-dark bold uppercase">会员管理请求</span>
                                    </div>
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#portlet_member_1" data-toggle="tab"> 新申请 </a>
                                        </li>
                                        <li>
                                            <a href="#portlet_member_2" data-toggle="tab"> 其它处理 </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="portlet_member_1">
                                            <!-- BEGIN: Comments -->
                                            <div class="mt-comments">
                                            	
                                            	
                                            	<c:forEach var="member" items="${listMemberRequest}">
                                            		<div class="mt-comment">
	                                                    <div class="mt-comment-img">
	                                                        <img src="${webapp_name}/assets/layouts/layout2/img/avatar.png" /> </div>
	                                                    <div class="mt-comment-body">
	                                                        <div class="mt-comment-info">
	                                                            <span class="mt-comment-author">${member.name1}&nbsp;&nbsp;${member.name2}</span>
	                                                            <span class="mt-comment-date">${member.memberApplyDate}</span>
	                                                        </div>
	                                                        
	                                                        <div class="mt-comment-text">
		                                                        <c:choose>
														         <c:when test = "${member.gender eq 1}">
														            <c:set var="strGender" value="先生,"/>
														         </c:when>
														         <c:when test = "${member.gender eq 2}">
														            <c:set var="strGender" value="女士,"/>
														         </c:when>
														         <c:otherwise>
														         	<c:set var="strGender" value=""/> 
														         </c:otherwise>
														      	</c:choose>
														      	${strGender}&nbsp;&nbsp;&nbsp;${member.occupation}&nbsp;&nbsp;&nbsp;&nbsp;<br/>
														      	${member.acctName}&nbsp;&nbsp;&nbsp;&nbsp;电话${member.phone1}&nbsp;&nbsp;&nbsp;&nbsp;微信${member.wechat}
														    </div>
	                                                        
	                                                        <div class="mt-comment-details">
	                                                            <span class="mt-comment-status mt-comment-status-approved">
	                                                            	<c:choose>
															         <c:when test = "${member.memberLevel eq 2}">
															            <c:set var="strMemberLevel" value="普通会员"/>
															         </c:when>
															         <c:when test = "${member.memberLevel eq 3}">
															            <c:set var="strMemberLevel" value="VIP会员"/>
															         </c:when>
															         <c:otherwise>
															         	<c:set var="strMemberLevel" value=""/> 
															         </c:otherwise>
															      	</c:choose>
															      	已提交申请&nbsp;&nbsp;&nbsp;${strMemberLevel}
	                                                            </span>
	                                                            <ul class="mt-comment-actions">
	                                                                <li>
	                                                                    <a href="${webapp_name}/member/edit.html?acctName=${member.acctName}"><strong>处理</strong></a>
	                                                                </li>
	                                                                <!-- 
	                                                                <li>
	                                                                    <a href="#">View</a>
	                                                                </li>
	                                                                <li>
	                                                                    <a href="#">Delete</a>
	                                                                </li> -->
	                                                            </ul>
	                                                        </div>
	                                                    </div>
	                                                </div>
                                            	</c:forEach>
                                            
                                            </div>
                                            <!-- END: Comments -->
                                        </div>
                                        <div class="tab-pane" id="portlet_member_2">
                                            <!-- BEGIN: Comments -->
                                            <div class="mt-comments">
                                            
                                            	<c:forEach var="member" items="${listMemberOtherRequest}">
                                            		<div class="mt-comment">
	                                                    <div class="mt-comment-img">
	                                                        <img src="${webapp_name}/assets/layouts/layout2/img/avatar.png" /> </div>
	                                                    <div class="mt-comment-body">
	                                                        <div class="mt-comment-info">
	                                                            <span class="mt-comment-author">${member.name1}&nbsp;&nbsp;${member.name2}</span>
	                                                            
	                                                            <c:choose>
															         <c:when test = "${member.memberStatus eq 2}">
															            <c:set var="strMemberStatus" value="缴纳会费"/>
															            <span class="mt-comment-date">${member.memberApprovedDate}</span>
															         </c:when>
															         <c:when test = "${member.memberLevel eq 4}">
															            <c:set var="strMemberStatus" value="过期续约"/>
															            <span class="mt-comment-date">${member.memberInactiveDate}</span>
															         </c:when>
															         <c:when test = "${member.memberLevel eq 5}">
															            <c:set var="strMemberStatus" value="异常或违规"/>
															            <span class="mt-comment-date">${member.memberPendingDate}</span>
															         </c:when>
															         <c:otherwise>
															         	<span class="mt-comment-date">${member.memberApplyDate}</span>
															         </c:otherwise>
															    </c:choose>
	                                                            
	                                                        </div>
	                                                        
	                                                        <div class="mt-comment-text">
		                                                        <c:choose>
														         <c:when test = "${member.gender eq 1}">
														            <c:set var="strGender" value="先生,"/>
														         </c:when>
														         <c:when test = "${member.gender eq 2}">
														            <c:set var="strGender" value="女士,"/>
														         </c:when>
														         <c:otherwise>
														         	<c:set var="strGender" value=""/> 
														         </c:otherwise>
														      	</c:choose>
														      	${strGender}&nbsp;&nbsp;&nbsp;${member.occupation},&nbsp;&nbsp;&nbsp;${member.acctName},&nbsp;&nbsp;&nbsp;电话${member.phone1},&nbsp;&nbsp;&nbsp;微信${member.wechat}
														    </div>
	                                                        
	                                                        <div class="mt-comment-details">
	                                                            <span class="mt-comment-status mt-comment-status-rejected">
	                                                            	<c:choose>
															         <c:when test = "${member.memberStatus eq 2}">
															            <c:set var="strMemberStatus" value="缴纳会费"/>
															         </c:when>
															         <c:when test = "${member.memberStatus eq 4}">
															            <c:set var="strMemberStatus" value="过期续约，缴纳会费"/>
															         </c:when>
															         <c:when test = "${member.memberStatus eq 5}">
															            <c:set var="strMemberStatus" value="异常或违规"/>
															         </c:when>
															         <c:otherwise>
															         	<c:set var="strMemberStatus" value="其它事宜"/>
															         </c:otherwise>
															    	</c:choose>
															      	待处理&nbsp;&nbsp;&nbsp;${strMemberStatus}
	                                                            </span>
	                                                            <ul class="mt-comment-actions">
	                                                                <li>
	                                                                    <a href="${webapp_name}/member/edit.html?acctName=${member.acctName}"><strong>处理</strong></a>
	                                                                </li>
	                                                                <!-- 
	                                                                <li>
	                                                                    <a href="#">View</a>
	                                                                </li>
	                                                                <li>
	                                                                    <a href="#">Delete</a>
	                                                                </li> -->
	                                                            </ul>
	                                                        </div>
	                                                    </div>
	                                                </div>
                                            	</c:forEach>
                                            
                                                
                                                
                                            </div>
                                            <!-- END: Comments -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-xs-12 col-sm-12">
                            <div class="portlet light ">
                                <div class="portlet-title tabbable-line">
                                    <div class="caption">
                                        <i class="icon-bubbles font-dark hide"></i>
                                        <span class="caption-subject font-dark bold uppercase">广告管理请求</span>
                                    </div>
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#portlet_ad_1" data-toggle="tab"> 新增申请 </a>
                                        </li>
                                        <li>
                                            <a href="#portlet_ad_2" data-toggle="tab"> 变更申请 </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="portlet_ad_1">
                                            <!-- BEGIN: Comments -->
                                            <div class="mt-comments">
                                            
                                            	<c:forEach var="adRequest" items="${listAdRequest}">
                                            
                                                <div class="mt-comment">
                                                    <div class="mt-comment-img">
                                                        <img src="${webapp_name}/assets/pages/media/users/avatar1.jpg" /> </div>
                                                    <div class="mt-comment-body">
                                                        <div class="mt-comment-info">
                                                            <span class="mt-comment-author">${adRequest.requestName}</span>
                                                            <span class="mt-comment-date">${adRequest.requestDate}</span>
                                                        </div>
                                                        <div class="mt-comment-text"> ${adRequest.acctName} </div>
                                                        <div class="mt-comment-details">
                                                            <span class="mt-comment-status mt-comment-status-approved">
																已申请发布广告
															</span>
                                                            <ul class="mt-comment-actions">
                                                                <li>
                                                                    <a href="#">Quick Edit</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">View</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Delete</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                                
                                            </div>
                                            <!-- END: Comments -->
                                        </div>
                                        <div class="tab-pane" id="portlet_ad_2">
                                            <!-- BEGIN: Comments -->
                                            <div class="mt-comments">
                                                <c:forEach var="adRequest" items="${listAdOtherRequest}">
                                            
                                                <div class="mt-comment">
                                                    <div class="mt-comment-img">
                                                        <img src="${webapp_name}/assets/pages/media/users/avatar1.jpg" /> </div>
                                                    <div class="mt-comment-body">
                                                        <div class="mt-comment-info">
                                                            <span class="mt-comment-author">${adRequest.requestName}</span>
                                                            <span class="mt-comment-date">${adRequest.requestDate}</span>
                                                        </div>
                                                        <div class="mt-comment-text"> ${adRequest.acctName} </div>
                                                        <div class="mt-comment-details">
                                                            <span class="mt-comment-status mt-comment-status-rejected">
																<c:choose>
															         <c:when test = "${adRequest.requestType eq 1}">
															            <c:set var="strRequestType" value="广告咨询"/>
															         </c:when>
															         <c:when test = "${adRequest.requestType eq 3}">
															            <c:set var="strRequestType" value="广告修改申请"/>
															         </c:when>
															         <c:when test = "${adRequest.requestType eq 4}">
															            <c:set var="strRequestType" value="广告撤回申请"/>
															         </c:when>
															         <c:otherwise>
															         	<c:set var="strRequestType" value="其它事宜"/>
															         </c:otherwise>
															    	</c:choose>
															      	待处理&nbsp;&nbsp;&nbsp;${strRequestType}
															</span>
                                                            <ul class="mt-comment-actions">
                                                                <li>
                                                                    <a href="#">Quick Edit</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">View</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Delete</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                               
                                            </div>
                                            <!-- END: Comments -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        
                        <div class="col-lg-6 col-xs-12 col-sm-12">
                            <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption caption-md">
                                        <i class="icon-bar-chart font-dark hide"></i>
                                        <span class="caption-subject font-dark bold uppercase">新闻与活动</span>
                                        <span class="caption-helper"></span>
                                    </div>
                                    <div class="inputs">
                                        <div class="portlet-input input-inline input-small ">
                                            <div class="input-icon right">
                                            	<!-- 
                                                <i class="icon-magnifier"></i>
                                                <input type="text" class="form-control form-control-solid input-circle" placeholder="search..."> -->
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="scroller" style="height: 538px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                        <div class="general-item-list">
                                        
                                        	<c:forEach var="news" items="${listNews}">
                                        		<div class="item">
	                                                <div class="item-head">
	                                                    <div class="item-details">
	                                                        <img class="item-pic rounded" src="${webapp_name}/assets/pages/media/users/avatar4.jpg">
	                                                        <a href="" class="item-name primary-link">${news.title}</a><br/>
	                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                        <span class="item-label">${news.author}, ${news.postDate}</span>
	                                                    </div>
	                                                    <span class="item-status">
		                                                    <c:choose>
													         <c:when test = "${news.eventStatus eq 1}">
													            <c:set var="strEventStatus" value="已发布"/>
													            <span class="badge badge-empty badge-success"></span> ${strEventStatus}
													         </c:when>
													         <c:when test = "${news.eventStatus eq 2}">
													            <c:set var="strEventStatus" value="待发布"/>
													            <span class="badge badge-empty badge-warning"></span> ${strEventStatus}
													         </c:when>
													         <c:when test = "${news.eventStatus eq 3}">
													            <c:set var="strEventStatus" value="已删除"/>
													            <span class="badge badge-empty badge-primary"></span> ${strEventStatus}
													         </c:when>
													          <c:when test = "${news.eventStatus eq 4}">
													            <c:set var="strEventStatus" value="已过期"/>
													            <span class="badge badge-empty badge-primary"></span> ${strEventStatus}
													         </c:when>
													          <c:when test = "${news.eventStatus eq 5}">
													            <c:set var="strEventStatus" value="审查中"/>
													            <span class="badge badge-empty badge-danger"></span> ${strEventStatus}
													         </c:when>
													         <c:otherwise>
													         	<c:set var="strEventStatus" value="未知状态"/>
													         	<span class="badge badge-empty badge-primary"></span> ${strEventStatus}
													         </c:otherwise>
													    	</c:choose>
	                                                    </span>    
	                                                        
	                                                </div>
	                                                <div class="item-body"> ${news.descShort} </div>
	                                            </div>
                                        	</c:forEach>
                                        	
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="col-lg-6 col-xs-12 col-sm-12">
                            <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption caption-md">
                                        <i class="icon-bar-chart font-dark hide"></i>
                                        <span class="caption-subject font-dark bold uppercase">管理新闻评论</span>
                                        <span class="caption-helper"></span>
                                    </div>
                                    <div class="inputs">
                                        <div class="portlet-input input-inline input-small ">
                                            <div class="input-icon right">
                                            	<!-- 
                                                <i class="icon-magnifier"></i>
                                                <input type="text" class="form-control form-control-solid input-circle" placeholder="search...">  -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="scroller" style="height: 538px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                        <div class="general-item-list">
                                        	
                                        	<c:forEach var="review" items="${listReviews}">
                                        		<div class="item">
	                                                <div class="item-head">
	                                                    <div class="item-details">
	                                                        <img class="item-pic rounded" src="${webapp_name}/assets/layouts/layout2/img/avatar.png">
	                                                        <a href="${webapp_name}/events/news/edit?eventUUID=${review.eventUUID}" class="item-name primary-link">管理该评论</a><br/>
	                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                        <span class="item-label">${review.reviewDatetime}</span>
	                                                    </div>
	                                                    <span class="item-status">
		                                                    <c:choose>
													         <c:when test = "${review.reviewStatus eq 1}">
													            <c:set var="strReviewStatus" value="已发布"/>
													            <span class="badge badge-empty badge-success"></span> ${strReviewStatus}
													         </c:when>
													         <c:when test = "${review.reviewStatus eq 2}">
													            <c:set var="strReviewStatus" value="审查中"/>
													            <span class="badge badge-empty badge-warning"></span> ${strReviewStatus}
													         </c:when>
													         <c:when test = "${review.reviewStatus eq 3}">
													            <c:set var="strReviewStatus" value="已禁止"/>
													            <span class="badge badge-empty badge-danger"></span> ${strReviewStatus}
													         </c:when>
													         <c:otherwise>
													         	<c:set var="strEventStatus" value="未知状态"/>
													         	<span class="badge badge-empty badge-primary"></span> ${strReviewStatus}
													         </c:otherwise>
													    	</c:choose>
	                                                    </span>    
	                                                        
	                                                </div>
	                                                <div class="item-body"> ${review.reviewContent} </div>
	                                            </div>
                                        	</c:forEach>
                                        
                                
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    	
                        
                    	
                    
                    </div>
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            <!-- BEGIN QUICK SIDEBAR -->
            
            <!-- END QUICK SIDEBAR -->
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <jsp:include page="${inc_dir}/page-footer.jsp"></jsp:include>
        <!-- END FOOTER -->
        <!-- BEGIN QUICK NAV -->
        
        <!-- END QUICK NAV -->
            <!--[if lt IE 9]>
<script src="${webapp_name}/assets/global/plugins/respond.min.js"></script>
<script src="${webapp_name}/assets/global/plugins/excanvas.min.js"></script> 
<script src="${webapp_name}/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
   <!-- BEGIN CORE PLUGINS -->
   <script src="${webapp_name}/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
   <!-- END CORE PLUGINS -->
   <!-- BEGIN PAGE LEVEL PLUGINS -->
   <script src="${webapp_name}/assets/global/plugins/moment.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
   <!-- END PAGE LEVEL PLUGINS -->
   <!-- BEGIN THEME GLOBAL SCRIPTS -->
   <script src="${webapp_name}/assets/global/scripts/app.min.js" type="text/javascript"></script>
   <!-- END THEME GLOBAL SCRIPTS -->
   <!-- BEGIN PAGE LEVEL SCRIPTS -->
   <script src="${webapp_name}/assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
   <!-- END PAGE LEVEL SCRIPTS -->
   <!-- BEGIN THEME LAYOUT SCRIPTS -->
   <script src="${webapp_name}/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
   <script src="${webapp_name}/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
   <!-- END THEME LAYOUT SCRIPTS -->
   <script>
       $(document).ready(function(){
    	   
    	 
       });
       
       function showMemberDesc(index,gender,acctName,occupation){
    	   
    	   alert(index+","+gender+","+acctName+", "+occupation);
    	   switch(gender){
	   	  	case "1":
	   		  gender = "先生,"; break;
	   	  	case "2":
	     		  gender = "女士"; break;
	   	  	default:
	     		  gender = ""; break;
	   		  
	   	  }    	  
	   	  if(occupation.trim()==""){
	   		  occupation="职业不详";
	   	  }
	   	  
	   	  $("#member-desc_"+index).html(gender+acctName+", "+occupation);
       }
   </script>
</body>

</html>