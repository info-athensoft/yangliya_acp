<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
        <title>Athensoft | Member - Member Edit</title>
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
        <link rel="shortcut icon" href="${webapp_name}/assets/global/plugins/datatables/media/images/favicon.ico"/>
    </head>
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
                    <h1 class="page-title">会员系统 <small> 管理会员信息与状态</small></h1>
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="${webapp_name}/index.html">首页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="${webapp_name}/member/list.html">会员系统</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">会员信息管理</a>
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
                                            	会员信息管理<span class="caption-helper"> </span> </div>
                                        <div class="actions btn-set">
                                            <button type="button" name="back" class="btn btn-secondary-outline" onclick="backToMemberList();">
                                                <i class="fa fa-angle-left"></i> 返回</button>
                                            <button class="btn btn-secondary-outline" onclick="resetMember();">
                                                <i class="fa fa-reply"></i> 重置</button>
                                            <button class="btn btn-success" onclick="updateMember();">
                                                <i class="fa fa-check"></i> 保存</button>
                                            
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tabbable-bordered">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a href="#tab_general" data-toggle="tab"> 会员信息</a>
                                                </li>
                                                <!-- 
                                                <li>
                                                    <a href="#tab_images" data-toggle="tab"> 新闻图片 </a>
                                                </li>
                                                <li>
                                                    <a href="#tab_reviews" data-toggle="tab"> 评论
                                                        <span class="badge badge-success"></span>
                                                    </a>
                                                </li> -->
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_general">
                                                    <div class="form-body">
                                                    
                                                    <!-- 
													<div class="form-group">
														<label class="col-md-2 control-label">全局编号: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="globalId" name="globalId" placeholder="" disabled="disabled"  value="${memberObject.globalId}">
														</div>
													</div>  -->
													
													<div class="form-group">
													<label class="col-md-2 control-label">会员账户: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="acctName" name="acctName" value="${memberObject.acctName}" readonly="readonly">
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">当前会员等级:
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="memberLevel_2" name="memberLevel_2" disabled="disabled">
																<option value="1" ${memberObject.memberLevel == '1' ? 'selected' : ''}>请选择...</option>
																<option value="2" ${memberObject.memberLevel == '2' ? 'selected' : ''}>普通会员 </option>
																<option value="3" ${memberObject.memberLevel == '3' ? 'selected' : ''}>VIP会员 </option>
																<option value="4" ${memberObject.memberLevel == '4' ? 'selected' : ''}>核心会员</option>
															</select>
														</div>
														
														<label class="col-md-2 control-label"><span class="custom-operation-em">管理会员等级: </span><span class="required">
														* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="memberLevel" name="memberLevel">
																<option value="1" ${memberObject.memberLevel == '1' ? 'selected' : ''}>请选择...</option>
																<option value="2" ${memberObject.memberLevel == '2' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;普通会员 </option>
																<option value="3" ${memberObject.memberLevel == '3' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;VIP会员 </option>
																<option value="4" ${memberObject.memberLevel == '4' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;核心会员</option>
															</select>
														</div>
													</div>
													
													
													<div class="form-group">
													
														<label class="col-md-2 control-label">当前状态: 
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="memberStatus_2" name="memberStatus_2" disabled="disabled">
																<option value="0" ${memberObject.memberStatus == '0' ? 'selected' : ''}>未知状态</option>
																<option value="1" ${memberObject.memberStatus == '1' ? 'selected' : ''}>已申请</option>
																<option value="2" ${memberObject.memberStatus == '2' ? 'selected' : ''}>已通过预审</option>
																<option value="3" ${memberObject.memberStatus == '3' ? 'selected' : ''}>已激活</option>
																<option value="4" ${memberObject.memberStatus == '4' ? 'selected' : ''}>未激活</option>
																<option value="5" ${memberObject.memberStatus == '5' ? 'selected' : ''}>审查中</option>
																<option value="6" ${memberObject.memberStatus == '6' ? 'selected' : ''}>已禁止</option>
															</select>
														</div>
														
														<label class="col-md-2 control-label"><span class="custom-operation-em">管理状态</span>: <span class="required">* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="memberStatus" name="memberStatus">
																<option value="0" ${memberObject.memberStatus == '0' ? 'selected' : ''}>请选择...</option>
																<option value="1" ${memberObject.memberStatus == '1' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已申请</option>
																<option value="2" ${memberObject.memberStatus == '2' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已通过预审</option>
																<option value="3" ${memberObject.memberStatus == '3' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已激活</option>
																<option value="4" ${memberObject.memberStatus == '4' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;未激活</option>
																<option value="5" ${memberObject.memberStatus == '5' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;审查中</option>
																<option value="6" ${memberObject.memberStatus == '6' ? 'selected' : ''}>(变更到)&nbsp;&nbsp;已禁止</option>
															</select>
														</div>
														
														
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">会员申请日: <span class="required">* </span>
														</label>
														<div class="col-md-4">
															<div class="input-group input-large date-picker input-daterange" data-date="2018-01-01" data-date-format="yyyy-mm-dd">
																<input type="text" class="form-control" id="memberApplyDate" name="memberApplyDate"  value='<fmt:formatDate type="date" pattern="yyyy-MMM-dd HH:mm:ss" value="${memberObject.memberApplyDate}"/>' >
															</div>
															<span class="help-block"></span>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">预审通过日: <span class="required">* </span>
														</label>
														<div class="col-md-4">
															<div class="input-group input-large date-picker input-daterange" data-date="2018-01-01" data-date-format="yyyy-mm-dd">
																<input type="text" class="form-control" id="memberApprovedDate" name="memberApprovedDate"  value='<fmt:formatDate type="date" pattern="yyyy-MMM-dd HH:mm:ss" value="${memberObject.memberApprovedDate}"/>' disabled="disabled">
															</div>
															<span class="help-block"></span>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">会员激活日: <span class="required">* </span>
														</label>
														<div class="col-md-4">
															<div class="input-group input-large date-picker input-daterange" data-date="2018-01-01" data-date-format="yyyy-mm-dd">
																<input type="text" class="form-control" id="memberActiveDate" name="memberActiveDate"  value='<fmt:formatDate type="date" pattern="yyyy-MMM-dd HH:mm:ss" value="${memberObject.memberActiveDate}"/>' disabled="disabled">
															</div>
															<span class="help-block"></span>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">会员到期日: <span class="required">* </span>
														</label>
														<div class="col-md-4">
															<div class="input-group input-large date-picker input-daterange" data-date="2018-01-01" data-date-format="yyyy-mm-dd">
																<input type="text" class="form-control" id="memberInactiveDate" name="memberInactiveDate"  value='<fmt:formatDate type="date" pattern="yyyy-MMM-dd HH:mm:ss" value="${memberObject.memberInactiveDate}"/>' disabled="disabled">
															</div>
															<span class="help-block"></span>
														</div>
													</div>
													
													
													<div class="form-group">
														<div class="col-md-12">
															<hr/>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">中文姓名: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="name1" name="name1" placeholder=""  value="${memberObject.name1}">
														</div>
														
														<label class="col-md-2 control-label">英法文名: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="name2" name="name2" placeholder=""  value="${memberObject.name2}">
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-md-2 control-label">性别: <span class="required">
														* </span>
														</label>
														<div class="col-md-4">
															<select class="table-group-action-input form-control input-medium" id="gender" name="gender">
																<option value="0" ${memberObject.gender == '0' ? 'selected' : ''}>请选择...</option>
																<option value="1" ${memberObject.gender == '1' ? 'selected' : ''}>男</option>
																<option value="2" ${memberObject.gender == '2' ? 'selected' : ''}>女</option>
																<option value="3" ${memberObject.gender == '3' ? 'selected' : ''}>未知</option>
															</select>
														</div>
														
														<label class="col-md-2 control-label">国籍: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="nationality" name="nationality" placeholder=""  value="${memberObject.nationality}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">电话: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="phone1" name="phone1" placeholder=""  value="${memberObject.phone1}">
														</div>
														
														<label class="col-md-2 control-label">手机: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="phone2" name="phone2" placeholder=""  value="${memberObject.phone2}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">微信: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="wechat" name="wechat" placeholder=""  value="${memberObject.wechat}">
														</div>
														
														<label class="col-md-2 control-label">电子邮件: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="email" name="email" placeholder=""  value="${memberObject.email}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">最高学历: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="degree" name="degree" placeholder=""  value="${memberObject.degree}">
														</div>
														
														<label class="col-md-2 control-label">职业: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="occupation" name="occupation" placeholder=""  value="${memberObject.occupation}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">出生日期: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="dob" name="dob" placeholder=""  value="${memberObject.dob}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">出生地（省，州）: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="pobProvince" name="pobProvince" placeholder=""  value="${memberObject.pobProvince}">
														</div>
														
														<label class="col-md-2 control-label">出生地（市，镇，县）: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="pobCity" name="pobCity" placeholder=""  value="${memberObject.pobCity}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">住址: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="homeAddress" name="homeAddress" placeholder=""  value="${memberObject.homeAddress}">
														</div>
														
														<label class="col-md-2 control-label">邮编: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="postalcode" name="postalcode" placeholder=""  value="${memberObject.postalcode}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">兴趣爱好: <span class="required"> * </span>
														</label>
														<div class="col-md-4">
															<input type="text" class="form-control" id="hobbies" name="hobbies" placeholder=""  value="${memberObject.hobbies}">
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
<script type="text/javascript" src="${webapp_name}/assets/pages/scripts-local/member/member-edit.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script>
//jQuery(document).ready(function() { 
	/*
	var acctName = $("#acctName").val();

	var memberStatusValue = ${memberObject.memberStatus};
	$("#memberStatus").val(memberStatusValue);
	*/
//});


 
</script>
</body>

</html>