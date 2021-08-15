<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Admin" %>

<%
//セッションスコープに保存された社員情報を取得
Admin manager=(Admin)session.getAttribute("admin");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>エラー</title>
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

<div class="center_screen">

	<p>工数記録の更新に失敗しました。</p>
	<p>お手数ですが最初からやり直して下さい。</p>

	<!-- 管理者メニュー画面へ -->
	<a href="admin_menu.jsp"><button type="button" class="button blue">管理者メニューへ</button></a>
</div>

<!-- フッター -->
<footer>
	<div class="logo">PCMS</div>
	<h4><small>Copyright © 2020-2021 PCMS. All rights reserved.</small></h4>
</footer>
</body>
</html>