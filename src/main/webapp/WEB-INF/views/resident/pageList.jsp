<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	Enumeration<String> names=request.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement();
		Object value = request.getAttribute(name);
		if(value instanceof com.communitySystem.util.Page){
			request.setAttribute("page", value);
		}
	}
%>

<!-- 分页信息 -->
<c:set var="pageCount" value="${page.totalPage }"/>
<c:set var="rowCount" value="${page.totalRecord }"/>
<c:set var="pageNum" value="${page.pageNo }"/>
<c:set var="pageSize" value="${page.pageSize }"/>

<c:set var="actionUrl" value="${page.actionUrl}${'?'}"/>

<c:set var="pNames" value="${pageContext.request.parameterNames}"/>
<c:set var="temp" value=""/>
<c:set var="params" value=""/>
<c:forEach items="${pNames}" var="pn" varStatus="vs">
	<c:set var="temp" value="${param[pn]}"/>
	<%
		String t=(String)pageContext.getAttribute("temp");
		//t=java.net.URLEncoder.encode(t, neo.core.Constants.ENCODING);
		pageContext.setAttribute("temp",t);
	%>
	<c:if test="${(pn!='pageNum')&&(pn!='pagingList')}">
		<c:set var="params" value="${params}${(vs.first?'':'&')}${pn}=${temp}"/>

	</c:if>
	
</c:forEach>


<!-- 处理分页参数 -->
<c:set var="base" value="${pageContext.request.contextPath}"/>
<c:set var="pageUrl" value="${base}${actionUrl}${params}"/>

<c:if test="${rowCount == 0}">
	<c:if test="${!empty(useFlag)}">
	<div style="border:1px solid #666;padding:2 5 2 5;background:#efefef;color:#333">没有相关记录</div>
	</c:if>
	<c:if test="${empty(useFlag)}">
	<c:set var="useFlag"  value="1"/>
	</c:if>

</c:if>
<c:if test="${rowCount != 0}">

<table align="center">
<tr>
	<td >
	<c:if test="${(pageCount <= 11)}">
		<c:set var="startPage" value="1"/>
		<c:set var="endPage" value="${pageCount}"/>
	</c:if>
	<c:if test="${(pageCount > 11)&&(pageNum + 5 > pageCount)}">
		<c:set var="startPage" value="${pageCount - 10 }"/>
		<c:set var="endPage" value="${pageCount}"/>
	</c:if>
	<c:if test="${(pageCount > 11)&&(pageNum + 5 <= pageCount)&&(pageNum - 5 < 1)}">
		<c:set var="startPage" value="1"/>
		<c:set var="endPage" value="11"/>
	</c:if>
	<c:if test="${(pageCount > 11) && (pageNum + 5 <= pageCount) && (pageNum - 5 >= 1)}">
		<c:set var="startPage" value="${pageNum - 5}"/>
		<c:set var="endPage" value="${pageNum + 5}"/>
	</c:if>
	

             
	<nav><ul class="pagination">&nbsp;&nbsp;&nbsp; 共 ${rowCount} 条记录 ${pageCount} 页
	<c:if test="${(pageCount > 1)}">
		<c:if test="${(pageNum != 1)}">
			<c:if test="${fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}pageNum=1"/>
			</c:if>
			<c:if test="${!fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}&pageNum=1"/>
			</c:if>
			<li>
		      <a href="${newPageUrl}" aria-label="Previous">
		        <span class="glyphicon glyphicon-fast-backward" aria-hidden="true"></span>
		      </a>
		    </li>
		    <c:if test="${fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}pageNum=${pageNum-1}"/>
			</c:if>
			<c:if test="${!fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}&pageNum=${pageNum-1}"/>
			</c:if>
			<li>
		      <a href="${newPageUrl}" aria-label="Previous">
		        <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>
		      </a>
		    </li>
			<c:if test="${(pageCount > 11)}">
				<c:if test="${fn:endsWith(pageUrl,'?')}">
					<c:set var="newPageUrl" value="${pageUrl}pageNum=1"/>
				</c:if>
				<c:if test="${!fn:endsWith(pageUrl,'?')}">
					<c:set var="newPageUrl" value="${pageUrl}&pageNum=1"/>
				</c:if>
				
				<c:if test="${(pageNum == 7)}">   
					<li><a href="${newPageUrl}">1</a></li>
				</c:if>
				<c:if test="${(pageNum > 7)}">   
					<li><a href="${newPageUrl}">1</a></li>
					<c:if test="${pageCount!=12}">
					<li><span>...</span></li>
					</c:if>
				</c:if>
			    
			</c:if>
			
		</c:if>
		<c:if test="${(pageNum == 1)}">		
			<li class="disabled"><span><span class="glyphicon glyphicon-fast-backward" aria-hidden="true"></span></span></li>						
		    <li class="disabled"><span><span class="glyphicon glyphicon-backward" aria-hidden="true"></span></span></li>			
		</c:if>
		<c:forEach begin="${startPage}" end="${endPage}"  var="x">
		<c:if test="${x==pageNum}">
		<li class="active"><span>${x} <span class="sr-only">(current)</span></span></li>
		</c:if>
		<c:if test="${x!=pageNum}">
			
			<c:if test="${fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}pageNum=${x}"/>
			</c:if>
			<c:if test="${!fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}&pageNum=${x}"/>
			</c:if>
			<li><a href="${newPageUrl}">${x}</a></li>
			
		</c:if>
		</c:forEach>
		<c:if test="${(pageCount != pageNum)}">
			
			<c:if test="${(pageCount > 11)}">
				<c:if test="${fn:endsWith(pageUrl,'?')}">
					<c:set var="newPageUrl" value="${pageUrl}pageNum=${pageCount}"/>
				</c:if>
				<c:if test="${!fn:endsWith(pageUrl,'?')}">
					<c:set var="newPageUrl" value="${pageUrl}&pageNum=${pageCount}"/>
				</c:if>
							
				<c:if test="${(pageCount-pageNum == 6)}">   
					<li><a href="${newPageUrl}">${pageCount}</a></li>
				</c:if>
				<c:if test="${(pageCount-pageNum > 6)}">  
					<c:if test="${pageCount!=12}">
					<li><span>...</span></li> 
					</c:if>
				  	<li><a href="${newPageUrl}">${pageCount}</a></li>
				</c:if>
			    
			</c:if>
			<c:if test="${fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}pageNum=${pageNum+1}"/>
			</c:if>
			<c:if test="${!fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}&pageNum=${pageNum+1}"/>
			</c:if>
			<li>
		      <a href="${newPageUrl}" aria-label="Next">
		        <span class="glyphicon glyphicon-forward" aria-hidden="true"></span>
		      </a>
		    </li>
		    <c:if test="${fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}pageNum=${pageCount}"/>
			</c:if>
			<c:if test="${!fn:endsWith(pageUrl,'?')}">
				<c:set var="newPageUrl" value="${pageUrl}&pageNum=${pageCount}"/>
			</c:if>
			<li>
				<a href="${newPageUrl}" aria-label="Next">
				  <span class="glyphicon glyphicon-fast-forward" aria-hidden="true"></span>
				</a>
		    </li>
		</c:if>
		<c:if test="${(pageCount == pageNum)}">	
			<li class="disabled">
		      <span>
		        <span class="glyphicon glyphicon-forward" aria-hidden="true"></span>
		      </span>
		    </li>	
		    <li class="disabled">
		      <span>
		        <span class="glyphicon glyphicon-fast-forward" aria-hidden="true"></span>
		      </span>
		    </li>		
		</c:if>
	</c:if>
	</ul></nav>
	</td>
</tr>
</table>

</c:if>

