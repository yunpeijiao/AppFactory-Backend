<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<%@ attribute name="cell" required="true" type="appfactory.dto.CellData" %>

<div class="cell_form col-md-6">
    <div class="row">
        <div class="col-md-4">
            <div class="icon">
                <img src="<spring:url value='${cell.iconURL}' />" width="100" height="100" class="img-rounded"/>
            </div>
        </div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-6">标题</div>
                <div class="col-md-6">${cell.title}</div>
            </div>
            <div class="row">
                <div class="col-md-6">功能代码</div>
                <div class="col-md-6">${function_code_map[cell.functionCode]} - ${cell.functionIdDisplay}</div>
            </div>
        </div>
    </div>
    <div class="btn-group">
        <a class="btn btn-primary" href="<spring:url value='/appconfig/menu_page/cells/${cell.id}/edit' />">编辑</a>
        <a class="btn btn-danger" data-method="delete" data-confirm="are you sure?" href="<c:url value='/appconfig/menu_page/cells/${cell.id}' />">删除</a>
    </div>
</div>