<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<body>
	<div id="wraper">
		<div class="tabel-call-history">
			<table>
				<tr>
					<td>ID</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Call ID</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Type Call</td>
					<td>Complant</td>
				</tr>
				<tr>
					<td>Time On Phone</td>
					<td>12:30</td>
				</tr>
				<tr>
					<td>Time On Queue</td>
					<td>00:30</td>
				</tr>
				<tr>
					<td>Time abandoned</td>
					<td>01:00</td>
				</tr>
				<tr>
					<td>Call Content</td>
					<td><button id="play">PLAY</button></td>
				</tr>
				<tr>
					<td>Feed Back</td>
					<td>True</td>
				</tr>
			</table>
		</div>
	</div>
	<!--nút sửa-->
	<div class="btn">
		<button onclick="window.location.href='/history/1/update'" id="btn-edit">Chỉnh sửa</button>
	</div>
	<div class="btn">
		<button id="btn-delete">Xóa</button>
	</div>
</body>

