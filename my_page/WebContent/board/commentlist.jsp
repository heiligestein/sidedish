<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 리플 출력 -->
	<div id="comment_list">
		<table>
			<colgroup>
				<col width="120">
				<col width="*">
				<col width="150">
			</colgroup>
			<tbody>
				<tr>
					<td colspan="3">
						<input type="hidden" name="hidden_replycnt" id="hidden_replycnt" value="${replyview.size()}">
						<div class="com_name">댓글 (${replyview.size()})</div>
					</td>
				</tr>

				<c:forEach items="${replyview}" var="rview">
					<tr>
						<td>
							<div class="com_name">${rview.writer}</div>
						</td>

						<td>
							<div>${rview.content}</div>
						</td>
						<td>
							<div class="bbs_link">
								<span> <fmt:formatDate pattern="yyyy/MM/dd"
										value="${rview.regdate}" /> <c:if
										test="${sessionScope.loginUser.mname == rview.writer}">
										<input type="button" data_num="${rview.rno}" value="X"
											class="reply_del">
									</c:if>
								</span>
							</div>
						</td>
					</tr>
				</c:forEach>
				<c:if test="${replyview.size() == 0 }">
					<tr>
						<td colspan="3"><div style="color: #88b04b; font-weight: bold; font-size: 15px;">등록된 댓글이 없습니다.댓글을 등록하세요.</div></td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>