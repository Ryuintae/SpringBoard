<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
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
            padding: 30px 50px;
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

        .num1 {
            width: 60px;
            text-align: left;
        }

        .num2 {
            width: 235px;
        }

    </style>
</head>
<body>
<div id="con">
    <div id="login">
        <div id="login_form"><!--로그인 폼-->
            <form action="/member/save" method="post">
                <h3 class="login" style="letter-spacing:-1px;">게시판 회원가입</h3>
                <hr>

                <label>
                    <!-- <span>PW</span> -->
                    <p style="text-align: left; font-size:12px; color:#666">이름</p>
                    <input type="text" name="memberName" placeholder="이름" class="size">
                </label> <!--이메일-->

                <label>
                    <!-- <span>PW</span> -->
                    <p style="text-align: left; font-size:12px; color:#666">나이</p>
                    <input type="text" name="memberAge" placeholder="나이" class="size">
                </label> <!--이메일-->

                <!-- <span>ID</span> -->
                <p style="text-align: left; font-size:12px; color:#666">이메일</p>
                <input type="text" name="memberEmail" placeholder="이메일" class="size" id="memberEmail"
                       onblur="emailCheck()">
                <p id="check-result"></p>

                <p></p>
                <label>
                    <!-- <span>PW</span> -->
                    <p style="text-align: left; font-size:12px; color:#666">Password </p>
                    <input type="password" name="memberPassword" placeholder="비밀번호" class="size">
                </label><!--비밀번호-->

                <label>
                    <!-- <span>PW</span> -->
                    <p style="text-align: left; font-size:12px; color:#666"></p>
                    <input type="password" name="memberPassword2" placeholder="비밀번호 확인" class="size">
                </label><!--비밀번호 확인-->

                <label>
                    <!-- <span>PW</span> -->
                    <p style="text-align: left; font-size:12px; color:#666">Mobile Phone</p>
                    <select class="size num1">
                        <option value="1" selected>SKT</option>
                        <option value="2" selected>KT</option>
                        <option value="3" selected>LG</option>
                    </select>
                    <input placeholder="-빼고 숫자만 입력" name="memberMobile" class="size num2" required>
                </label> <!--전화번호-->
                <br>
                <p>
                    <input type="submit" value="회원가입" class="btn">

                </p>
            </form>

            <hr>
            <p class="find">
                <span><a href="/member/login">로그인 페이지로 이동</a></span>
            </p>
        </div>

    </div>
</div>
</body>
<script>
    // 이메일 입력값을 가져오고,
    // 입력값을 서버로 전송하고 똑같은 이메일이 있는지 체크한 후
    // 사용 가능 여부를 이메일 입력창 아래에 표시
    const emailCheck = () => {
        const email = document.getElementById("memberEmail").value;
        const checkResult = document.getElementById("check-result");
        console.log("입력한 이메일", email);
        $.ajax({
            // 요청방식: post, url: "email-check", 데이터: 이메일
            type: "post",
            url: "/member/email-check",
            data: {
                "memberEmail": email
            },
            success: function (res) {
                console.log("요청성공", res);
                if (res == "ok") {
                    console.log("사용가능한 이메일");
                    checkResult.style.color = "green";
                    checkResult.innerHTML = "사용가능한 이메일";
                } else {
                    console.log("이미 사용중인 이메일");
                    checkResult.style.color = "red";
                    checkResult.innerHTML = "이미 사용중인 이메일";
                }
            },
            error: function (err) {
                console.log("에러발생", err);
            }
        });
    }
</script>
</html>










