<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- global variables settings -->
<c:set var="webapp_name" value="/acp"/>

<!-- page variables  -->
<c:set var="inc_dir" value="../inc"/>
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
        <title>Athensoft | School - Class Edit</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #2 for edit product" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="${webapp_name}/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="${webapp_name}/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="${webapp_name}/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="${webapp_name}/assets/layouts/layout2/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="${webapp_name}/assets/layouts/layout2/css/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="${webapp_name}/assets/layouts/layout2/css/custom.css" rel="stylesheet" type="text/css" />
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
            
                <jsp:include page="${inc_dir}/page-sidebar.jsp"></jsp:include>
            	<!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">
                    <!-- BEGIN PAGE HEADER-->
                    <!-- BEGIN THEME PANEL -->
                    
                    <!-- END THEME PANEL -->
                    <h1 class="page-title">教务系统 <small>班级管理</small></h1>
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="${webapp_name}/index.html">首页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="${webapp_name}/school/class/list.html">班级管理</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">编辑班级</a>
						</li>
					</ul>
                        
                    </div>
                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-md-12">
                            <form class="form-horizontal form-row-seperated" action="#">
                                <div class="portlet">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            	编辑班级<span class="caption-helper"> </span> </div>
                                        <div class="actions btn-set">
                                            <button type="button" name="back" class="btn btn-secondary-outline" onclick="backToNewsList(); return false;">
                                                <i class="fa fa-angle-left"></i> 返回</button>
                                            <button class="btn btn-secondary-outline" onclick="resetNews(); return false;">
                                                <i class="fa fa-reply"></i> 重置</button>
                                            <button class="btn btn-success" onclick="updateNews(); return false;">
                                                <i class="fa fa-check"></i> 保存</button>
                                            
                                            <!-- 
                                            <button class="btn btn-success" onclick="updateNewsAndContinue(); return false;">
                                                <i class="fa fa-check-circle"></i> 保存并继续</button>
                                            <div class="btn-group">
                                                <a class="btn btn-success dropdown-toggle" href="javascript:;" data-toggle="dropdown">
                                                    <i class="fa fa-share"></i> 其它
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="dropdown-menu pull-right">
                                                	<ul>
	                                                    <li><a href="javascript:;"> Duplicate </a></li>
	                                                   	<li><a href="javascript:;"  onclick="markNewsStatusDeleted('${newsObject.eventUUID}'); return false;">Mark Deleted </a></li>
	                                                    <li class="dropdown-divider"> </li>
	                                                    <li><a href="javascript:;"> Print </a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                             -->
                                            
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tabbable-bordered">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a href="#tab_general" data-toggle="tab"> 班级信息</a>
                                                </li>
                                                <li>
                                                    <a href="#tab_images" data-toggle="tab"> 班级图片 </a>
                                                </li>
                                                <li>
                                                    <a href="#tab_tags" data-toggle="tab"> 班级标签 </a>
                                                </li>
                                                <li>
                                                    <a href="#tab_reviews" data-toggle="tab"> 班级留言
                                                        <span class="badge badge-success"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_general">
                                                    <div class="form-body">
                                                    <!-- 
													<div class="form-group">
														<label class="col-md-2 control-label">全局编号: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="globalId" name="globalId" placeholder="" disabled="disabled"  value="${newsObject.globalId}">
														</div>
													</div>
													 -->
													<input type="hidden" class="form-control" id="globalId" name="globalId" value="${schoolClassObject.globalId}">
													
													<div class="form-group">
														<label class="col-md-2 control-label">班级编号: 
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="classCode" name="classCode"  placeholder="" value="${schoolClassObject.classCode}" readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">创建时间: 
														</label>
														<div class="col-md-4">
															<div class="input-group input-large">
																<input type="text" class="form-control" id="createDate" name="createDate"  value="${schoolClassObject.createDate}" disabled="disabled">
															</div>
															<span class="help-block"></span>
														</div>
													</div>
													
													<!-- 
													<div class="form-group">
														<label class="col-md-2 control-label">发布时间: 
														</label>
														<div class="col-md-4">
															<div class="input-group input-large">
																<input type="text" class="form-control" id="postDate" name="postDate"  value="" disabled="disabled">
															</div>
															<span class="help-block"></span>
														</div>
													</div>
													 -->
													 
													<!-- 
													<div class="form-group">
														<label class="col-md-2 control-label">上次修改时间: 
														</label>
														<div class="col-md-4">
															<div class="input-group input-large">
																<input type="text" class="form-control" id="modifyDate" name="modifyDate"  value="" disabled="disabled">
															</div>
															<span class="help-block"></span>
														</div>
													</div>  --> 
													
													<div class="form-group">
														<label class="col-md-2 control-label">当前类别: <span class="required">
														* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="classType_2" name="classType_2" disabled="disabled">
																<option value="0" ${schoolClassObject.classType == '0' ? 'selected' : ''}>请选择...</option>
																<option value="1" ${schoolClassObject.classType == '1' ? 'selected' : ''}>成人</option>
																<option value="2" ${schoolClassObject.classType == '2' ? 'selected' : ''}>未成年人</option>
																<option value="3" ${schoolClassObject.classType == '3' ? 'selected' : ''}>其它</option>
															</select>
														</div>
														<label class="col-md-2 control-label custom-operation-em">管理类别: <span class="required">
														* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="classType" name="classType">
																<option value="0" ${schoolClassObject.classType == '0' ? 'selected' : ''}>请选择...</option>
																<option value="1" ${schoolClassObject.classType == '1' ? 'selected' : ''}>成人</option>
																<option value="2" ${schoolClassObject.classType == '2' ? 'selected' : ''}>未成年人</option>
																<option value="3" ${schoolClassObject.classType == '3' ? 'selected' : ''}>其它</option>
															</select>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">当前状态: <span class="required">
														* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="eventStatus_2" name="eventStatus_2" disabled="disabled">
																<option value="0" ${schoolClassObject.classStatus == '0' ? 'selected' : ''}>请选择...</option>
																<option value="1" ${schoolClassObject.classStatus == '1' ? 'selected' : ''}>已创建</option>
																<option value="2" ${schoolClassObject.classStatus == '2' ? 'selected' : ''}>招生中</option>
																<option value="3" ${schoolClassObject.classStatus == '3' ? 'selected' : ''}>开课中</option>
																<option value="4" ${schoolClassObject.classStatus == '4' ? 'selected' : ''}>已结业</option>
																<option value="5" ${schoolClassObject.classStatus == '5' ? 'selected' : ''}>已解散</option>
															</select>
														</div>
														<label class="col-md-2 control-label custom-operation-em">管理状态: <span class="required">
														* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="eventStatus" name="eventStatus">
																<option value="0" ${schoolClassObject.classStatus == '0' ? 'selected' : ''}>请选择...</option>
																<option value="1" ${schoolClassObject.classStatus == '1' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已创建</option>
																<option value="2" ${schoolClassObject.classStatus == '2' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;招生中</option>
																<option value="3" ${schoolClassObject.classStatus == '3' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;开课中</option>
																<option value="4" ${schoolClassObject.classStatus == '4' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已结业</option>
																<option value="5" ${schoolClassObject.classStatus == '5' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已解散</option>
															</select>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">班级名称: <span class="required"> * </span>
														</label>
														<div class="col-md-10">
															<input type="text" class="form-control" id="className" name="className" placeholder="className"  value="${schoolClassObject.className}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">指导老师: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="classOwner" name="classOwner" placeholder="classOwner"  value="${schoolClassObject.classOwner}">
														</div>
													</div>
													
													<!-- 
													<div class="form-group">
														<label class="col-md-2 control-label">摘要: <span class="required"> * </span>
														</label>
														<div class="col-md-10">
															<textarea class="form-control" id="descShort" name="descShort">newsObject.descShort</textarea>
															<span class="help-block"> </span>
														</div>
														
													</div> -->
													
															<div class="form-group">
														<label class="col-md-2 control-label">班级描述: <span class="required"> * </span>
														</label>
														<div class="col-md-10">
															<textarea class="form-control" id="classDesc" name="classDesc" rows="12">${schoolClassObject.classDesc}</textarea>
														</div>
														
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">班级人数: 
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="maxPerson" name="maxPerson" value="${schoolClassObject.maxPerson}">
														</div>
													</div>
													
												</div>
                                                </div>
                                                <div class="tab-pane" id="tab_images">
                                                	<!--
                                                    <div class="alert alert-success margin-bottom-10">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                                                        <i class="fa fa-warning fa-lg"></i> Image type and information need to be specified. 
                                                   
                                                    </div> 
                                                     -->
                                                    <div id="tab_images_uploader_container" class="text-align-reverse margin-bottom-10">
                                                        <a id="tab_images_uploader_pickfiles" href="javascript:;" class="btn btn-success">
                                                            <i class="fa fa-plus"></i> 选择图片 </a>
                                                        <a id="tab_images_uploader_uploadfiles" href="javascript:;" class="btn btn-primary">
                                                            <i class="fa fa-share"></i> 上传文件 </a>
                                                    </div>
                                                    <div class="row">
                                                        <div id="tab_images_uploader_filelist" class="col-md-6 col-sm-12"> </div>
                                                    </div>
                                                    <table class="table table-bordered table-hover" id="event-media-table">
                                                        <thead>
                                                            <tr role="row" class="heading">
                                                                <th width="8%">图片</th>
																<th width="20%">标签</th>
																<th width="8%">排序号</th>
																<th width="15%">发布时间</th>
																<th width="10%">是否为封面</th>
																<th width="10%">操作</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${eventMediaList}" var="eventMedia">
															<tr>
																<td>
																	<a href="${eventMedia.mediaURL}${eventMedia.mediaName}" class="fancybox-button" data-rel="fancybox-button">
																	<img class="img-responsive" src="${eventMedia.mediaURL}${eventMedia.mediaName}" alt="">
																	</a>
																</td>
																<td>
																	<input type="text" class="form-control" name="mediaLabel" value="${eventMedia.mediaLabel}" onchange="changeMediaLabel(this,${eventMedia.mediaId},'${eventMedia.eventUUID}');">
																</td>
																<td>
																	<input type="text" class="form-control" name="sortNumber" value="${eventMedia.sortNumber}" onchange="changeSortNumber(this,${eventMedia.mediaId},'${eventMedia.eventUUID}');">
																</td>
																
																<td>
																	<input type="text" class="form-control" name="postTimestamp" value="${eventMedia.postTimestamp}" disabled="disabled">
																</td>
																<td>
																	<input type="text" class="form-control" name="primaryMedia" value="${eventMedia.primaryMedia}" disabled="disabled">
																</td>
																<td>
																	<a href="javascript:;" class="btn default btn-sm" onclick="setCoverMedia(${eventMedia.mediaId},'${eventMedia.eventUUID}');return false;" >
																	<i class="fa fa-edit"></i> 设为封面 </a>
																	<a href="javascript:;" class="btn default btn-sm" onclick="removeCoverMedia(${eventMedia.mediaId},'${eventMedia.eventUUID}');return false;" >
																	<i class="fa fa-times"></i> 删除 </a>
																</td>
															</tr>
														</c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="tab_reviews">
                                                    <div class="table-container">
                                                        <table class="table table-striped table-bordered table-hover" id="datatable_eventNewsReviews">
                                                            <thead>
                                                                <tr role="row" class="heading">
                                                                    <th width="5%"> 评论&nbsp;# </th>
                                                                    <th width="10%"> 评论日期 </th>
                                                                    <th width="10%"> 评论者 </th>
                                                                    <th width="20%"> 评论内容 </th>
                                                                    <th width="10%"> 当前状态 </th>
                                                                    <th width="10%"> 操作 </th>
                                                                </tr>
                                                                <tr role="row" class="filter">
                                                                    <td>
                                                                        <input type="text" class="form-control form-filter input-sm" name="event_review_no" id="event_review_no"> </td>
                                                                    <td>
                                                                        <div class="input-group date date-picker margin-bottom-5" data-date-format="yyyy-mm-dd">
                                                                            <input type="text" class="form-control form-filter input-sm" readonly name="event_review_date_from" placeholder="From" id="event_review_date_from">
                                                                            <span class="input-group-btn">
                                                                                <button class="btn btn-sm default" type="button">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </button>
                                                                            </span>
                                                                        </div>
                                                                        <div class="input-group date date-picker" data-date-format="yyyy-mm-dd">
                                                                            <input type="text" class="form-control form-filter input-sm" readonly name="event_review_date_to" placeholder="To" id="event_review_date_to">
                                                                            <span class="input-group-btn">
                                                                                <button class="btn btn-sm default" type="button">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </button>
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" class="form-control form-filter input-sm" name="event_review_customer" id="event_review_customer"> </td>
                                                                    <td>
                                                                        <input type="text" class="form-control form-filter input-sm" name="event_review_content" id="event_review_content"> </td>
                                                                    <td>
                                                                        <select name="product_review_status" class="form-control form-filter input-sm" id="event_review_status">
                                                                            <option value="0">请选择...</option>
																			<option value="1">已通过</option>
																			<option value="2">审查中</option>
																			<option value="3">已拒绝</option>
                                                                        </select>
                                                                    </td>
                                                                    <td>
                                                                        <div class="margin-bottom-5">
                                                                            <button class="btn btn-sm btn-success filter-submit margin-bottom" onclick="filterSearchReview();">
                                                                                <i class="fa fa-search"></i> 查找</button>
                                                                        </div>
                                                                        <button class="btn btn-sm btn-danger filter-cancel">
                                                                            <i class="fa fa-times"></i> 清除</button>
                                                                    </td>
                                                                </tr>
                                                            </thead>
                                                            <tbody> </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab_tags">
                                                	<div class="form-group">
														<label class="col-md-2 control-label">标签: <span class="required"> * </span>
														</label>
														<div class="col-md-10">
															<div>
																<input type="text" class="form-control" id="eventTags" name="eventTags" data-role="tagsinput" value="${newsTagNames}">
															</div>
															<!-- <button name="testTag" class="btn btn-success" onclick="showtagstring(); return false;" >Show Tags String</button>  -->
															<div>
																<button name="saveTag" class="btn btn-success" onclick="saveNewsTags(); return false;" >保存标签</button>
															</div>
														</div>
													</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            <!-- BEGIN QUICK SIDEBAR -->
            <!-- Removed to quick_sidebar.html -->
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
<script src="${webapp_name}/assets/global/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/global/plugins/plupload/js/plupload.full.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${webapp_name}/assets/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->

<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${webapp_name}/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
<!-- 
<script src="${webapp_name}/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${webapp_name}/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
 -->
<!-- END THEME LAYOUT SCRIPTS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<!-- 
<script type="text/javascript" src="${webapp_name}/assets/pages/scripts-local/event/event-news-edit.js"></script>
<script type="text/javascript" src="${webapp_name}/assets/pages/scripts-local/event/event-news-review-list.js"></script>
<script type="text/javascript" src="${webapp_name}/assets/pages/scripts-local/tag/tag-edit.js"></script>
 -->
<script type="text/javascript" src="${webapp_name}/assets/pages/scripts-local/school/school-class-edit.js"></script>
<script type="text/javascript" src="${webapp_name}/assets/pages/scripts-local/school/school-class-review-list.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script>
jQuery(document).ready(function() {    
	var classCode = $("#classCode").val();
	SchoolClassEdit.init(classCode);
	//EventNewsReviewList.init();

//local
//select object for event class
	var classTypeValue = ${schoolClassObject.classType};
	$("#classType").val(classTypeValue);

//select object for event status
	var classStatusValue = ${schoolClassObject.classStatus};
	$("#classStatus").val(classStatusValue);
	
});
    
</script>
<script>
function resetNews(){
	
	//object for reset
	var p3 = '${schoolClassObject.className}';
	var p4 = '${schoolClassObject.classOwner}';
	var p6 = '${schoolClassObject.maxPerson}';
	//var p7 = 'schoolClassObject.descShort';
	var p8 = '${schoolClassObject.classDesc}';
	var p9 = '${schoolClassObject.classType}';
	var p10 ='${schoolClassObject.classStatus}';
	
	$("#className").val(p3);
	$("#classOwner").val(p4);
	$("#maxPerson").val(p6);
	//$("#descShort").val(p7);
	$("#classDesc").val(p8);
	$("#classType").val(p9);
	$("#classStatus").val(p10);
}

</script>
</body>

</html>