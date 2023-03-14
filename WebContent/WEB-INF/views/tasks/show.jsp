<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">

    <c:choose>
        <c:when test="${task != null}">
            <h2>タスク詳細ページ</h2>
            <table>
                <tbody>
                    <tr>
                        <th>id</th>
                        <td><c:out value="${task.id}" /></td>
                    </tr>
                    <tr>
                        <th>タスク</th>
                        <td><c:out value="${task.content}" /></td>
                    </tr>
                    <tr>
                        <th>作成日時</th>
                        <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    </tr>
                    <tr>
                        <th>更新日時</th>
                        <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    </tr>
                </tbody>
            </table>
            <p>このタスクを編集するには<a href="${pageContext.request.contextPath}/edit?id=${task.id}">こちら</a></p>
        </c:when>
        <c:otherwise>
            <h2>お探しのタスクは見つかりませんでした。</h2>
        </c:otherwise>
    </c:choose>
    <p>一覧に戻るには<a href="${pageContext.request.contextPath}/index">こちら</a></p>
    </c:param>
</c:import>