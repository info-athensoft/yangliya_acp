<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- global variables settings -->
<c:set var="webapp_name" value="/acp"/>

<div class="page-sidebar-wrapper">
	<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
	<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
	<div class="page-sidebar navbar-collapse collapse">
		<!-- BEGIN SIDEBAR MENU -->
		<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
		<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
		<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
		<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
			<li class="start active ">
				<a href="/acp/index">
				<i class="icon-home"></i>
				<span class="title">首页</span>
				<span id="menu-dashborad" class="selected"></span>
				</a>
			</li>
			
			
			
			<li>
				<a href="javascript:;">
				<i class="icon-badge"></i>
				<span class="title">班级管理</span>
				<span class="arrow "></span>
				</a>
								
				
				<ul class="sub-menu">
					
					<li>
						<a href="${webapp_name}/member/list.html">
						 班级列表</a>
					</li>
					<!--
					<li>
						<a href="${webapp_name}/member/list.html">
						 会员信息</a>
					</li> 
					<li>
						<a href="${webapp_name}/member/list.html">
						 会员申请</a>
					</li>
					<li>
						<a href="${webapp_name}/member/list.html">
						 会员续约</a>
					</li>
					<li>
						<a href="${webapp_name}/member/list.html">
						 状态审核</a>
					</li> -->
				</ul>
			</li>
			
			
			
			
			<li>
				<a href="javascript:;">
				<i class="icon-badge"></i>
				<span class="title">学员管理</span>
				<span class="arrow "></span>
				</a>
								
				
				<ul class="sub-menu">
					
					<li>
						<a href="${webapp_name}/member/list.html">
						 学员列表</a>
					</li>
					<!--
					<li>
						<a href="${webapp_name}/member/list.html">
						 会员信息</a>
					</li> 
					<li>
						<a href="${webapp_name}/member/list.html">
						 会员申请</a>
					</li>
					<li>
						<a href="${webapp_name}/member/list.html">
						 会员续约</a>
					</li>
					<li>
						<a href="${webapp_name}/member/list.html">
						 状态审核</a>
					</li> -->
				</ul>
			</li>
			
			
			<li>
				<a href="javascript:;">
				<i class="icon-badge"></i>
				<span class="title">新闻管理</span>
				<span class="arrow "></span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="${webapp_name}/events/news/list.html">
						 新闻列表</a>
					</li>
					<li>
						<a href="${webapp_name}/events/news/create.html">
						新增新闻</a>
					</li>
					<li>
						<a href="${webapp_name}/events/news/list.html">
						 修改新闻</a>
					</li>
					<li>
						<a href="${webapp_name}/events/news/deletelist.html">
						 删除新闻</a>
					</li>
				</ul>
			</li>
			
			
			<li>
				<a href="javascript:;">
				<i class="icon-badge"></i>
				<span class="title">广告管理</span>
				<span class="arrow "></span>
				</a>
				<ul class="sub-menu">
					<!-- 
					<li>
						<a href="${webapp_name}/ad/adpost/list.html">
						请求受理</a>
					</li> -->
					<li>
						<a href="${webapp_name}/ad/adpost/list.html">
						广告管理</a>
					</li>
					<li>
						<a href="${webapp_name}/ad/adpost/create.html">
						新增广告</a>
					</li>
					<li>
						<a href="${webapp_name}/ad/adrcmd/list.html">
						广告推荐</a>
					</li>
					<!-- 
					<li>
						<a href="${webapp_name}/ad/adpost/list.html">
						修改广告</a>
					</li>
					<li>
						<a href="${webapp_name}/ad/adpost/list.html">
						删除广告</a>
					</li> -->
				</ul>
			</li>
			
			
			<li>
				<a href="javascript:;">
				<i class="icon-badge"></i>
				<span class="title">帮助中心</span>
				<span class="arrow "></span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="${webapp_name}/support/contactus.html">
						 用户手册</a>
					</li>
					<li>
						<a href="${webapp_name}/support/contactus.html">
						 联系我们</a>
					</li>
					<li>
						<a href="${webapp_name}/support/contactus.html">
						 用户协议与条款</a>
					</li>
				</ul>
			</li>
		
			
			
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>