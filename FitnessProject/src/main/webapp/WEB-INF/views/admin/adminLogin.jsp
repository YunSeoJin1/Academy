<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="sidebar.jsp" %>
<script type="text/javascript">
function worker_check()
{
  if(document.frm.admin_id.value==""){
      alert("아이디를 입력하세요.");
      return false;
  } else if(document.frm.admin_pwd.value==""){
     alert("비밀번호를 입력하세요.");
      return false;
  }
  
  return true;  
}
</script>
<style>
	#adminwrap{
			margin: auto;
			width: 500px;
			height: 500px;

		}
		header{
			display: flex;
			justify-content: center;
		}
		.input-box{
			position: relative;
			margin: 10px 0;
		}

		.input-box >input {
			background: transparent;
			border: none;
			border-bottom: solid 1px #ccc;

			padding: 20px 0px 5px 0px;
			font-size:  14pt;
			width: 100%;
		}
		input::placeholder{
			color: transparent;
		}
		input:placeholder-shown + label {
			color: #aaa;
			font-size: 14pt;
			top: 15px;
		}

		input:focus + label, label{
			color:#8aa1a1;
			font-size:10pt; 
			pointer-events: none; 
			position: absolute; 
			left:0px; 
			top:0px; 
			transition: all 0.2s ease ; 
			-webkit-transition: all 0.2s ease; 
			-moz-transition: all 0.2s ease; 
			-o-transition: all 0.2s ease;
		}

		input:focus, input:not(:placeholder-shown){
			border-bottom: solid 1px #8aa1a1; 
			outline:none; 
		}

		input[type=submit]{
                background-color: #8aa1a1;
                border:none;
                color:white;
                border-radius: 5px;
                width:100%;
                height:35px;
                font-size: 14pt;
                margin-top:100px;
            }
</style>
	<div id="adminwrap">
		<header>
			<h2>관리자 로그인 페이지</h2>
		</header>

		<form action="admin_login" method="POST">
			<div class="input-box">
				<input id="admin_id" type="text" name="admin_id" placeholder="아이디">
				<label for="admin_id">아이디</label>
			</div>

			<div class="input-box">
				<input id="admin_pwd" type="password" name="admin_pwd" placeholder="비밀번호">
				<label for="admin_pwd">비밀번호</label>
			</div>

			<input type="submit" value="로그인">
		</form>

	</div>
<%@include file="footer.jsp" %>