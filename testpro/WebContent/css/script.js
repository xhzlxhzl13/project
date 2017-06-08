$(function(){
		$("form").submit(function(){
			if($("#id").val() == ""){
				alert("아이디를 입력하세요");
				$("#id").focus();
				return false;
			}
			if($("#passwd").val() == ""){
				alert("비밀번호를 입력하세요");
				$("#passwd").focus();
				return false;
			}
			if($("#email").val() == ""){
				alert("이메일을 입력하세요.");
				$("#email").focus();
				return false;
			}
			if($("#name").val() == ""){
				alert("이름을 입력하세요.");
				$("#name").focus();
				return false;
			}
			if($("#nickname").val() == ""){
				alert("닉네임을 입력하세요.");
				$("#nickname").focus();
				return false;
			}
			if($("#phone").val() == ""){
				alert("휴대전화를 입력하세요.");
				$("#phone").focus();
				return false;
			}
		});
	});