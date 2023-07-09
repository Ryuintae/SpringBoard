<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <%--  css파일  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        @font-face {
            font-family: 'Noto Sans KR';
            font-style: normal;
            font-weight: 100;
            src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2) format('woff2'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff) format('woff'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf) format('opentype');
        }

        @font-face {
            font-family: 'Noto Sans KR';
            font-style: normal;
            font-weight: 300;
            src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2) format('woff2'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff) format('woff'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf) format('opentype');
        }

        @font-face {
            font-family: 'Noto Sans KR';
            font-style: normal;
            font-weight: 400;
            src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2) format('woff2'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff) format('woff'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf) format('opentype');
        }

        @font-face {
            font-family: 'Noto Sans KR';
            font-style: normal;
            font-weight: 500;
            src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2) format('woff2'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff) format('woff'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf) format('opentype');
        }

        @font-face {
            font-family: 'Noto Sans KR';
            font-style: normal;
            font-weight: 700;
            src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2) format('woff2'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff) format('woff'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf) format('opentype');
        }

        @font-face {
            font-family: 'Noto Sans KR';
            font-style: normal;
            font-weight: 900;
            src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2) format('woff2'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff) format('woff'), url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf) format('opentype');
        }

        body {
            margin: 0 auto;
        }

        /* body, table, div, p ,span{font-family:'Nanum Gothic';} */
        body, table, div, p, span {
            font-family: 'Noto Sans KR';
        }

        a {
            text-decoration: none;
            color: #333;
        }

        #con {
            width: 100%;
            height: 100vh;
            background-color: #f5f1ee;
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            padding: 0;
        }

        #login {
            width: 600px;
            height: 600px;
            margin: 0 auto;
            /* position: relative; */
            /* background:#ddd; */
        }

        #login_form {
            /* text-align:center; */
            border-radius: 10px;
            padding: 50px;
            background: #fff;
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .login {
            font-size: 25px;
            font-weight: 900;
            color: #333;
        }

        .size {
            width: 300px;
            height: 30px;
            padding-left: 10px;
            background-color: #f4f4f4;
            /* margin-left:10px; */
            border: none;
            border-radius: 5px;
        }

        .btn {
            width: 310px;
            height: 40px;
            font-size: 15px;
            background-color: #df3278;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn:hover {
            background: #ca296a;
        }

        hr {
            margin-top: 20px;
            background: #eee;

        }

        .find {
            color: #ddd;
            font-size: 12px;
        }

        .find span {
            padding-left: 10px;
        }

        .find span::before {
            content: '|';
            color: #333;
            padding-right: 10px;
        }

        .find span:nth-child(1):before {
            content: none;
        }

        .find span:nth-child(1) {
            padding-left: 0px;
        }

        .find a:hover {
            color: #707070;
        }


        /* base - 브라우저 별로 다를 수도 있는 것을 초기화 */
        * {
            padding: 0;
            margin: 0;
        }

        /* 태그 여백 없앰 */
        li {
            list-style: none;
        }

        /* 기호나 번호를 제거 */
        a {
            text-decoration: none;
        }

        /* 링크텍스트에 밑줄없앰 */
        button {
            cursor: pointer;
        }

        /* 모든 버튼에 마우스손모양 처리 */

        /* body설정 */
        body {
            background-color: #ededed;
        }

        .loginbox {
            width: 780px;
            height: 550px;
            margin: 0 auto; /* 블록요소를 부모영역에서 가운데 처리 */
        }

        .loginbox h2 {
            width: 100%; /* 부모영역을 상속 */

            /* 한줄텍스트인 경우만 height와 line-height가 같으면 세로 가운데 처리 */
            height: 100px;
            line-height: 100px;
            text-align: center;
            font-size: 20px;
            font-weight: normal;
        }

        .loginbox form {
            width: 100%;
            height: 450px;
            background-color: #fff;
            /* 패딩수치를 인사이드 처리 */
            padding: 60px;
            box-sizing: border-box;
        }

        .loginbox fieldset {
            border: none; /* 테두리 제거 */
        }

        .loginbox legend {
            /* 요소를 화면 밖으로 처리 */
            position: absolute;
            left: -999em;

            /* 웹접근성으로 스크린리더기가 읽어줘야 하므로 display: none;을 사용하지 말것 */
        }

        .loginbox label {
            display: block;
            font-size: 12px;
            color: #333;
            margin-bottom: 10px; /* 동위선택자와의 간격 조정 */
        }

        .loginbox input {
            display: block;
            width: 100%;
            height: 50px;
            margin-bottom: 25px; /* 동위선택자와의 간격 조정 */
            border: none;
            background-color: #ededed;
            padding: 0 20px; /* 앞상하 뒷좌우 */
            box-sizing: border-box; /* 패딩수치를 인사이드 처리 */
        }

        .loginbox ul {
            width: 100%;
            text-align: right; /* 글자를 오른쪽으로 처리 */
            margin-bottom: 60px;
        }

        .loginbox li {
            display: inline-block;
            height: 12px;
            line-height: 12px;
        }

        .loginbox li:last-child {
            border-left: 1px solid #333;
            padding-left: 10px; /* 테두리 안쪽 여백 */
            margin-left: 4px; /* 테두리 바깥쪽 여백 */
        }

        .loginbox a {
            /* 글자관련은 보통 최종태그에 줘야 적용 */
            color: #333;
            font-size: 12px;

            /* 현재 위치에서 상대적 이동 */
            position: relative;
            top: -2px;
        }

        .loginbox button {
            display: block;
            width: 220px;
            height: 50px;
            margin: 0 auto; /* 블록요소가 부모 영역에서 가운데 오기 */
            border: none;
            background-color: #1673ea;
            color: #fff;
            font-size: 14px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div id="con">
    <div id="login">
        <div id="login_form"><!--로그인 폼-->
            <form action="/member/login" method="post">
                <h3 class="login" style="letter-spacing:-1px;">게시판 로그인</h3>
                <hr>
                <label>
                    <!-- <span>ID</span> -->
                    <p style="text-align: left; font-size:12px; color:#666">Username</p>
                    <input type="text" placeholder="아이디(E-mail)을 입력해 주세요" class="size" name="memberEmail">
                    <!-- <input type="submit" value="확인"> -->
                    <p></p>
                </label>

                <label>
                    <!-- <span>PW</span> -->
                    <p style="text-align: left; font-size:12px; color:#666">Password </p>
                    <input type="text" class="size" placeholder="비밀번호를 입력해 주세요" name="memberPassword">
                    <!-- <input type="submit" value="확인"> -->
                </label>

                <p>
                    <input type="submit" value="Sign in" class="btn">
                </p>
            </form>
            <hr>
            <p class="find">
                <span><a href="">아이디 찾기</a></span>
                <span><a href="">비밀번호 찾기</a></span>
                <span><a href="/member/save">회원가입</a></span>
            </p>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>