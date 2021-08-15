<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Employee"%>
<%@ page import="dto.Report"%>
<%@ page import="dto.Department" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List"%>

<%
//セッションスコープに保存された部署一覧を取得
List<Department> dlist = (List<Department>)session.getAttribute("dlist");
%>

<%
//セッションスコープに保存された社員情報を取得
Employee syain = (Employee)session.getAttribute("employee");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>マイページ編集</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>
<body>
<!-- ヘッダー -->
<header>
	<h1>PCMS</h1>
	<!-- ログイン中の社員番号、氏名、部署名,の表示 -->
	<nav class="header_menu">
		<ul>
			<li>社員番号:<%=syain.getNumber()%></li>
			<li>部署名:<%=syain.getDepartment_Name()%></li>
			<li>氏名:<%=syain.getLastName()%><%=syain.getFirstName()%></li>
			<!-- ヘッダーメニューの表示 -->
			<li><a href="mypage.jsp">マイページ</a></li>
			<li><a href="employee_password_change.jsp">パスワード変更</a></li>
			<li><a href="./Logout">ログアウト</a></li>
		</ul>
	</nav>
</header>

<!-- 画面名称 -->
<h5>マイページ編集</h5>

<!-- マイページ編集画面 -->
<div class="center_screen-5">
	<form action="./EmployeeUpd" method="post">
		<table class="border_table">
			<tr class="border_style">
				<th>社員番号</th>
				<td><%=syain.getNumber()%><input type="hidden" name="number" value="<%=syain.getNumber()%>"></td>
			</tr>

			<tr class="border_style">
				<th>フリガナ</th>
				<td><input type="text" name="lastKana" value="<%=syain.getLastKana()%>" class="textbox">
					<input type="text" name="firstKana" value="<%=syain.getFirstKana()%>" class="textbox"></td>
			</tr>

			<tr class="border_style">
				<th>氏名</th>
				<td><input type="text" name="lastName" value="<%=syain.getLastName()%>" class="textbox">
					<input type="text" name="firstName" value="<%=syain.getFirstName()%>" class="textbox"></td>
			</tr>

			<tr class="border_style">
				<th>所属部署</th>
				<td><select name="department_name" class="selectbox">
					<option value="">選択して下さい</option>
						<%for(int i = 0; i < dlist.size(); i++){%>
							<%Department department = (Department)dlist.get(i);%>
								<option value="<%=department.getDepartment_Name()%>"><%=department.getDepartment_Name()%></option>
							<% } %>
					</select>
				</td>
			</tr>

			<tr class="border_style">
				<th>血液型</th>
				<td><select name="blood" class="selectbox">
						<option value="">選択して下さい</option>
						<option value="A型">A型</option>
						<option value="B型">B型</option>
						<option value="O型">O型</option>
						<option value="AB型">AB型</option>
					</select>
				</td>
			</tr>

			<tr class="border_style">
				<th>生年月日/年齢</th>
				<td><input type="date" name="birthDay" value="<%=syain.getBirthDay()%>">
					<input type="text" name="age" value="<%=syain.getAge()%>" class="numberbox">歳
				</td>
			</tr>

			<tr class="border_style">
				<th>性別</th>
				<td><input type="radio" name="gender" value="男性" checked="checked">男性
					<input type="radio" name="gender" value="女性">女性
				</td>
			</tr>
		</table>

		<!-- 保存ボタン -->
		<button type="submit" class="button blue button_fixed">保存</button>
	</form>
</div>

<!-- マイページへ戻るボタン -->
<a href="mypage.jsp"><button type="button" class="back_button">戻る</button></a>

<!-- フッター -->
<footer>
	<div class="logo">PCMS</div>
	<h4><small>Copyright © 2020-2021 PCMS. All rights reserved.</small></h4>
</footer>
</body>
</html>