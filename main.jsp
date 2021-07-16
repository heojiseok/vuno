
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!doctype html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>대리점별 데모 계정 리스트</title>
  <link rel="stylesheet" href="css/main.css">


</head>

  <div class="img">

    <div class="content">
      <h1>UBcare</h1>

    </div>
  </div>
  <script type="text/javascript">
    
    function checkValue()
    {
        inputForm = eval("document.loginInfo");
        if(!inputForm.user_id.value)
        {
            alert("아이디를 입력하세요");    
            inputForm.user_id.focus();
            return false;
        }
        if(!inputForm.password.value)
        {
            alert("비밀번호를 입력하세요");    
            inputForm.password.focus();
            return false;
        }
    }
    </script>

<body class="align" style="background-image: url('메인3.JPG');">

  
  <div class="site__container">

    <div class="grid__container">

      <form action="login.jsp" method="post" class="form form--login" name="loginInfo" onsubmit="return checkValue()">

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">Username</span></label>
          <input id="login__username" name="user_id" type="text" class="form__input" placeholder="Username" required>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input id="login__password" name="password" type="password" class="form__input" placeholder="Password" required>
        </div>

        <div class="form__field">
          <input type="submit" value="Log In">
        </div>

      </form>

      

    </div>

  </div>


</body>
</html>