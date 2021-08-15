<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Admin"%>

<%
//セッションスコープに保存された管理者情報を取得
Admin manager=(Admin)session.getAttribute("admin");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理者パスワード変更</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>
<body>
<!-- ヘッダー -->
<header>
	<h1>PCMS</h1>

	<nav class="header_menu">
		<ul>
			<!-- ログイン中の管理者氏名の表示 -->
			<li>管理者:<%=manager.getLastName()%><%=manager.getFirstName()%></li>
			<!-- ヘッダーメニューの表示 -->
			<li><a href="admin_password_change.jsp">管理者パスワード変更</a></li>
			<li><a href="./Logout">ログアウト</a></li>
		</ul>
	</nav>
</header>

<!-- 画面名称 -->
<h5>管理者パスワード変更</h5>

<div class="center_screen-3">
	<!-- 管理者パスワード情報の入力 -->
	<form action="./AdminPasswordChange" method="post">
		<p>現在の管理者パスワードと新しい管理者パスワードを入力し、変更ボタンをクリックして下さい。</p>
			<table class="border_table">
				<tr class="border_style">
					<th>現在の管理者パスワード<span>(必須)</span></th>
					<td>
						<input type="password" name="current_password" required class="longbox">
						<br>
						<span class="password">※現在設定している管理者パスワードを入力して下さい。</span>
					</td>
				</tr>

				<tr class="border_style">
					<th>新しい管理者パスワード<span>(必須)</span></th>
					<td>
						<input type="password" name="new_password" required class="longbox">
						<br>
						<span class="password">※半角英数字,6桁以上11桁以内で入力して下さい。</span>
					</td>
				</tr>

				<tr class="border_style">
					<th>新しい管理者パスワード(確認用)<span>(必須)</span></th>
					<td>
						<input type="password" name="renew_password" required class="longbox">
						<br>
						<span class="password">※確認のため、新しい管理者パスワードをもう一度入力して下さい。</span>
					</td>
				</tr>
			</table>

		<!-- 管理者パスワード変更ボタン -->
		<button type="submit" class="button blue button_fixed">管理者パスワード変更</button>
	</form>
</div>

<!-- 管理者メニューへ戻るボタン -->
<a href="admin_menu.jsp"><button type="button" class="back_button">戻る</button></a>

<!-- フッター -->
<footer>
	<div class="logo">PCMS</div>
	<h4><small>Copyright © 2020-2021 PCMS. All rights reserved.</small></h4>
</footer>
</body>
</html>