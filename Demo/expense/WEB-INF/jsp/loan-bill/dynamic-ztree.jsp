<%@ page contentType="text/html;charset=UTF-8" import="java.util.*"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>费用管理</title>
	<%@include file="/common/meta.jsp" %>
</head>

<body onclick="$('#sysTableDiv').hide(); $('#styleList').hide();" >
	<script type="text/javascript">
		var secMenu="expenseReport";
		var thirdMenu="myExpenseReport";
	</script>
	<%@ include file="/menus/header.jsp"%>
	
	<div class="ui-layout-west">
		<%@ include file="/menus/loan-bill-menu.jsp"%>
	</div>
	
	<div class="ui-layout-center">
			<div class="opt-body">
				<aa:zone name="main">
					<div class="opt-btn">
						<button class='btn' onclick="createLoadBillZtree();"><span><span>新建</span></span></button>
						<button class='btn' onclick="updateLoadBillZtree($('#_ztree_folderId').attr('value'),'update');"><span><span>修改</span></span></button>
						<button class='btn' onclick="deleteLoadBillZtree();"><span><span>删除</span></span></button>
					</div>
					<div id="opt-content" >
						<form  id="contentForm" name="contentForm" method="post" action=""></form>
						<input id="_ztree_folderId" name="_ztree_folderId" value="${loanBill.id }" type="hidden" />
						点击节点id：&nbsp;&nbsp;<input id="ztree_dynamic_id"  readonly="readonly" /><br />
						点击节点名称：<input id="ztree_dynamic_name"  readonly="readonly" /><br />
						父节点id：&nbsp;&nbsp;&nbsp;&nbsp;<input id="ztree_dynamic_pid"  readonly="readonly" />
					</div>
				</aa:zone>
			</div>
	</div>
	
</body>
</html>