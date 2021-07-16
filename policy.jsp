<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@include file="loginCheck.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>대리점별 데모 계정 리스트</title>
	<link rel="stylesheet" href="css/board.css">


	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">


		<title>UBcare</title>

		<!-- Bootstrap core CSS -->
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="css/modern-business.css" rel="stylesheet">

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
			integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	</head>
	<%

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    Statement stmt = null;
    ResultSet result = null;

    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    Class.forName(driverName);

    String dbURL = "jdbc:sqlserver://192.168.40.1:1433;databaseName=VUNO";
    con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");

    String sql = "select * from demo ORDER BY idx";
    pstmt = con.prepareStatement(sql);


    rs = pstmt.executeQuery();

    stmt = con.createStatement();
String sql2 = "select * from [user] where user_id='" + user_id + "'";


result = stmt.executeQuery(sql2);

%> 

<body>


	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">UBcare</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
                        <% while (result.next()) { %>
                          <a class="nav-link"><%=result.getString("담당대리점")%> 님</a>
                          <% } %> 
                    </li>
					<li class="nav-item">
						<a class="nav-link" href="demo.jsp">Demo</a>
					</li>
					<li class="nav-item active">
					  <a class="nav-link" href="policy.jsp">Policy</a>
					</li>
		  
					<li class="nav-item">
					  <a class="nav-link" onclick="location.href='logout.jsp'">Logout</a>
					</li>

				</ul>
			</div>
		</div>
	</nav>


	<!-- Page Heading/Breadcrumbs -->
	<div style="text-align: center;">
		<h1 class="mt-4 mb-3">2021년 PACS 정책</h1>
	</div>

	<table class="container" width="100%" cellspacing='0'>


		<TR>
			<TD Align="center" width="5%">
				<Font size="3"> No. </Font>
			</TD>
			<TD Align="center" width="95%">
				<Font size="3"> 정책 설명 </Font>
			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 1 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3> <B> ◇ UBPACS-Z 가격 </B> </Font><BR>
				&emsp;&emsp;&emsp; 1. UBPACS-Z 월회비 <BR>
				&emsp;&emsp;&emsp;&emsp; - 의원 : 1 Copy 20,000원 (3Copy 이상 계약 시 1Copy 추가 무료 증정 가능) <BR>
				&emsp;&emsp;&emsp;&emsp; (단위 : 원, VAT 별도)<BR>
				<table class="container" width="100%" cellspacing='0'>
					<TR>
						<TD Align="center" width="20%"><B> 품 목 (1Copy 기준) </B></TD>
						<TD Align="center" width="10%"><B> 월 회비 </B></TD>
						<TD Align="center" width="14%"><B> 1년 약정 </B></TD>
						<TD Align="center" width="14%"><B> 2년 약정 </B></TD>
						<TD Align="center" width="14%"><B> 3년 약정 </B></TD>
						<TD Align="center" width="14%"><B> 4년 약정 </B></TD>
						<TD Align="center" width="14%"><B> 5년 약정 </B></TD>

					</TR>
					<TR>
						<TD Align="center" width="20%"><B> 표준 약정가 </B></TD>
						<TD Align="center" width="10%"> 20,000원 </TD>
						<TD Align="center" width="14%"> 168,000원 </TD>
						<TD Align="center" width="14%"> 336,000원 </TD>
						<TD Align="center" width="14%"> 504,000원 </TD>
						<TD Align="center" width="14%"> 672,000원 </TD>
						<TD Align="center" width="14%"> 840,000원 </TD>

					</TR>
					<TR>
						<TD Align="center" width="20%"><B> 신규 의사랑 교차 판매 </B></TD>
						<TD Align="center" width="10%"> 20,000원 </TD>
						<TD Align="center" width="14%"> 96,000원 </TD>
						<TD Align="center" width="14%"> 192,000원 </TD>
						<TD Align="center" width="14%"> 288,000원 </TD>
						<TD Align="center" width="14%"> 384,000원 </TD>
						<TD Align="center" width="14%"> 480,000원 </TD>

					</TR>
					<TR>
						<TD Align="center" width="20%"><B> 신규 의료기기 교차 판매 </B></TD>
						<TD Align="center" width="10%"> 20,000원 </TD>
						<TD Align="center" width="14%"> 96,000원 </TD>
						<TD Align="center" width="14%"> 192,000원 </TD>
						<TD Align="center" width="14%"> 288,000원 </TD>
						<TD Align="center" width="14%"> 384,000원 </TD>
						<TD Align="center" width="14%"> 480,000원 </TD>

					</TR>
					<TR>
						<TD Align="center" width="20%"><B> 신규 의료기기 + 신규의사랑 교차판매 </B></TD>
						<TD Align="center" width="10%"> 20,000원 </TD>
						<TD Align="center" width="14%"> 48,000원 </TD>
						<TD Align="center" width="14%"> 96,000원 </TD>
						<TD Align="center" width="14%"> 144,000원 </TD>
						<TD Align="center" width="14%"> 192,000원 </TD>
						<TD Align="center" width="14%"> 240,000원 </TD>

					</TR>
				</TABLE>
				&emsp;&emsp;&emsp; <Font color='FF3333'><B>* 교차 판매경우 신규(의사랑, 장비)만 해당 되며 문서상 1개월 이내만 적용가능 </B></Font><BR>

			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 2 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3><b> ◇ 2차급 병원 진출 </b></Font><BR>
				&emsp;&emsp;&emsp; 1. 기본 5Copy 150,000원 <BR>
				&emsp;&emsp;&emsp;&emsp;&emsp; - 추가 1 Copy 30,000원 <BR>
				&emsp;&emsp;&emsp; 2. 30 ~ 100 bed UBPACS-Z 설치 가능 <BR>
				&emsp;&emsp;&emsp; 3. 수도권 본사 직영 시스템 <BR>
				&emsp;&emsp;&emsp;&emsp; - 견적, 데모, 납품, 서비스까지 본사 진행 <BR>
				&emsp;&emsp;&emsp;&emsp; - 수도권 영업 소개 후 계약 완료 시 인센티브 지급.(년 수수료 총액의 25%, 1회 지급)<BR>
				&emsp;&emsp;&emsp;&emsp;&emsp; (월회비 300,000원 이상일경우) <BR>
				&emsp;&emsp;&emsp; 4. 그 외 지역 PACS 전문 대리점 운영 <BR>
				&emsp;&emsp;&emsp;&emsp; - 본사에서 제품 공급 및 기술이전만 담당<BR>
				&emsp;&emsp;&emsp;&emsp; - 납품, 데모, 서비스 전문 대리점 진행<BR>
				&emsp;&emsp;&emsp;&emsp; - 영업 소개 후 계약 완료 시 우수사원 점수 10점 인정<BR>
				<BR>
			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 3 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3> <B> ◇ 게이트웨이 </B> </Font><BR>
				&emsp;&emsp;&emsp; 1. 정책 <BR>
				&emsp;&emsp;&emsp;&emsp; 가. 미소몰 이용 하여 제품 구매 <BR>
				&emsp;&emsp;&emsp;&emsp; 나. SD, HD 동시 지원, 모든 제품 연결 가능(젠더 6종 포함 판매) <BR>
				&emsp;&emsp;&emsp;&emsp; 다. 30 ~ 100 Bed 2차급 병원 납품 시 본사 및 지방 전문대리점 판매 권한 부여<BR>
				&emsp;&emsp;&emsp;&emsp; 라. 제품 단종 시 타 제품으로 대체<BR>
				&emsp;&emsp;&emsp;&emsp;<Font color='FF3333'><B> 마. 타 지역 설치 시 본사에서 서비스 비용으로 서비스 대리점에게 100만원지급 </B>
				</Font><BR>
				&emsp;&emsp;&emsp; 2. 가격 <BR>


				<table class="container" width="100%" cellspacing='0'>
					<TR>
						<TD Align="center" width="59%"><B>구 분</B></TD>
						<TD Align="center" width="20%"><B> 동일지역 판매 </B></TD>
						<TD Align="center" width="20%"><B> 타 지역 판매 </B></TD>

					</TR>
					<TR>
						<TD Align="center" width="60%"> 기본(H/W, 캡쳐카드 + S/W + 멀티탭) </TD>
						<TD Align="center" width="20%"> 2,000,000원 </TD>
						<TD Align="center" width="20%"> 3,000,000원 </TD>


					</TR>
					<TR>
						<TD Align="center" width="60%"> Upgrade(캡쳐카드 + S/W) </TD>
						<TD Align="center" width="20%"> 1,300,000원 </TD>
						<TD Align="center" width="20%"> 2,300,000원 </TD>

					</TR>
					<TR>
						<TD Align="center" width="60%"> Upgrade(S/W) </TD>
						<TD Align="center" width="20%"> 1,000,000원 </TD>
						<TD Align="center" width="20%"> 2,000,000원 </TD>

					</TR>
					<TR>
						<TD Align="center" width="60%"> ONE 버튼 발판 스위치 </TD>
						<TD Align="center" width="40%" COLSPAN=2> 50,000원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="60%"> TWO 버튼 발판 스위치 </TD>
						<TD Align="center" width="40%" COLSPAN=2> 80,000원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="60%"> 캡쳐카드 </TD>
						<TD Align="center" width="40%" COLSPAN=2> 300,000원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="60%"> 케이블 Set </TD>
						<TD Align="center" width="40%" COLSPAN=2> 40,000원 </TD>
					</TR>

				</TABLE>

				<table class="container" width="100%" cellspacing='0'>
					<TR>
						<TD Align="center" width="50%"><B>구 분</B></TD>
						<TD Align="center" width="50%"><B>제품 모델명</B></TD>

					</TR>
					<TR>
						<TD Align="center" width="50%"> 일반 PC </TD>
						<TD Align="center" width="50%"> [삼성] DB400TCA-Y0A/R </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> 일반 PC SSD </TD>
						<TD Align="center" width="50%"> [삼성] DB400TCA-Y16/R </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> 슬림 PC </TD>
						<TD Align="center" width="50%"> [삼성] DB400SCA-Y10/R </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> 일반 모니터 </TD>
						<TD Align="center" width="50%"> [DELL] P1917S </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> WIDE 모니터 </TD>
						<TD Align="center" width="50%"> [삼성] LF24T650FYKXKR </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> ONE 버튼 발판 스위치 </TD>
						<TD Align="center" width="50%"> USB 풋 스위치 5M </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> TWO 버튼 발판 스위치 </TD>
						<TD Align="center" width="50%"> USB 풋 스위치 5M </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> 캡쳐카드(SD/HD) </TD>
						<TD Align="center" width="50%"> Avermedia C1311-M2 </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> 케이블 </TD>
						<TD Align="center" width="50%"> HDMI 외 4종 + 6젠터 </TD>
					</TR>
					<TR>
						<TD Align="center" width="50%"> 멀티탭 </TD>
						<TD Align="center" width="50%"> 개별전원 4구 </TD>
					</TR>

				</TABLE>
			</TD>

		</TR>
		<TR>
			<TD Align="center" width="5%"> 4 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font color='FF3333' size=3><b> 전자 문서 사용 </b></Font><BR>
				<BR> &emsp;<Font Size=3> <B> ◇ A.I 연동(뷰노) </B> </Font><BR>
				&emsp;&emsp;&emsp; 1. Boneage <BR>
				&emsp;&emsp;&emsp;&emsp; 가. 본사와 뷰노 독점 계약으로 100 Bed 이하 및 타PACS, 타EMR(이지스포함) 사용해도 모두 영업해야 함<BR>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<Font color='FF3333'><b> - 아동협회 소속 병원, 의원 영업 불가 </b></Font><BR>
				&emsp;&emsp;&emsp;&emsp; 나. DEMO 5Credit 제공 하며 고객에게 판매 불가<BR>
				&emsp;&emsp;&emsp;&emsp; 다. 월회비는 계약 후 다음달 1일 부터 사용가능, 계약 한 일부터 사용 시 선불제 구매 후 사용 <BR>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; - ex) 4월 2일 계약 : 5월 1일부터 월회비 사용가능하며 4월은 추가구매 10 Creadit 구매 후 사용
				<BR>
				&emsp;&emsp;&emsp;&emsp; 마. 월회비 구매 후 추가 10 Credit(8,000원) 재 구매 가능 <BR>
				&emsp;&emsp;&emsp;&emsp; 바. 선불제 및 추가(10 Credit) 구매 시 기간 제한 없이 사용 가능 <BR>
				&emsp;&emsp;&emsp;&emsp; <Font size=3 color='FF3333'><b>사. 최초 선불제 1 ~ 2개월 구매 하여 해당 병원 월 사용 빈도 확인 후 월회비
						구매 추천 </b></Font><BR>
				&emsp;&emsp;&emsp;&emsp; <Font size=3 color='FF3333'><b>아. 분석에서 나온 골연령 나이가 만7세 ~ 만18세까지만 예측키 제공 </b>
				</Font><BR>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; - 통상적으로 2창 성징 시작 하기 전 사춘기 이전에 진행하는것을 권장 <BR>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; - 골연령 진행 주기 : 6개월 또는 1년에 한번씩 진행 가능 <BR>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; - 6개월에 한번은 골연령과 역연령(달력상의 나이) 차이 많이 난 경우 follow up을 위해 권장 <BR>
				&emsp;&emsp;&emsp;&emsp; <Font size=3 color='FF3333'><b>자. 검사결과에 대한 신뢰도 표준편차 MAD 0.39세 </b></Font><BR>


				&emsp;&emsp;&emsp; 2. 선불제 가격 <BR>
				<TABLE border=1 cellPadding=1 cellSpacing=0 width='95%' Align="center">
					<TR>
						<TD Align="center" width="40%"><B> 구매 Creadit </B></TD>
						<TD Align="center" width="30%"><B> 고객 판매가 </B></TD>
						<TD Align="center" width="30%"><B> 객 단가 </B></TD>

					</TR>
					<TR>
						<TD Align="center" width="40%"> 30 Credit </TD>
						<TD Align="center" width="30%"> 270,000원 </TD>
						<TD Align="center" width="30%"> 9,000원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="40%"> 50 Credit </TD>
						<TD Align="center" width="30%"> 400,000원 </TD>
						<TD Align="center" width="30%"> 8,000원 </TD>
					</TR>
				</TABLE>
				&emsp;&emsp;&emsp; 3. 월회비 가격 <BR>
				<table class="container" width="100%" cellspacing='0'>
					<TR>
						<TD Align="center" width="20%"><B> 구분 </B></TD>
						<TD Align="center" width="15%"><B> 구매 Creadit </B></TD>
						<TD Align="center" width="15%"><B> UBPACS-Z사용 </B></TD>
						<TD Align="center" width="15%"><B> 객단가 </B></TD>
						<TD Align="center" width="15%"><B> 타PACS사용 </B></TD>
						<TD Align="center" width="20%"><B> 객단가 </B></TD>

					</TR>
					<TR>
						<TD Align="center" width="20%"> VIP </TD>
						<TD Align="center" width="15%"> 50 </TD>
						<TD Align="center" width="15%"> 300,000원 </TD>
						<TD Align="center" width="15%"> 6,000원 </TD>
						<TD Align="center" width="15%"> 350,000원 </TD>
						<TD Align="center" width="20%"> 7,000원 </TD>

					</TR>
					<TR>
						<TD Align="center" width="20%"> Premiun </TD>
						<TD Align="center" width="15%"> 30 </TD>
						<TD Align="center" width="15%"> 190,000원 </TD>
						<TD Align="center" width="15%"> 6,333원 </TD>
						<TD Align="center" width="15%"> 220,000원 </TD>
						<TD Align="center" width="20%"> 7,333원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="20%"> Standard </TD>
						<TD Align="center" width="15%"> 20 </TD>
						<TD Align="center" width="15%"> 130,000원 </TD>
						<TD Align="center" width="15%"> 6,500원 </TD>
						<TD Align="center" width="15%"> 150,000원 </TD>
						<TD Align="center" width="20%"> 7,500원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="20%"> Basic </TD>
						<TD Align="center" width="15%"> 10 </TD>
						<TD Align="center" width="15%"> 68,000원 </TD>
						<TD Align="center" width="15%"> 6,800원 </TD>
						<TD Align="center" width="15%"> 78,000원 </TD>
						<TD Align="center" width="20%"> 7,800원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="20%"> Mini </TD>
						<TD Align="center" width="15%"> 5 </TD>
						<TD Align="center" width="15%"> 35,000원 </TD>
						<TD Align="center" width="15%"> 7,000원 </TD>
						<TD Align="center" width="15%"> 40,000원 </TD>
						<TD Align="center" width="20%"> 8,000원 </TD>
					</TR>
					<TR>
						<TD Align="center" width="20%"> 추가 구매(선불제) </TD>
						<TD Align="center" width="15%"> 10 </TD>
						<TD Align="center" width="15%" colspan=4> 80,000원 </TD>

					</TR>



				</TABLE>

			</TD>

		</TR>

		<TR>
			<TD Align="center" width="5%"> 5 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3> <B> ◇ 본사 콜 센터 확대</B> </Font><BR>
				&emsp;&emsp;&emsp; 1. 2021년 1분기 본사 콜센터 현황 <BR>
				&emsp;&emsp;&emsp;&emsp; - 동원메디텍, 메디케어, 세일메디넷, 제주메디넷, 프로비즈넷 <BR>
				&emsp;&emsp;&emsp; 2. 분기 마다 1처 오픈 예정 <BR>
				&emsp;&emsp;&emsp; 3. 기 대리점이 해당 될경우 차 순위 대리점 오픈 <BR>
				&emsp;&emsp;&emsp; 4. 1,3 분기 <BR>
				&emsp;&emsp;&emsp;&emsp; - 분기당 컨버젼 및 신규 계약 수가 가장 많은 대리점 1처 <BR>
				&emsp;&emsp;&emsp; 5. 2,4 분기 <BR>
				&emsp;&emsp;&emsp;&emsp; - 분기당 컨버젼 목표수 중 70% 우선 달성처 1처 <BR>
				<BR>

			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 6 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3><b>◇ 컨버젼 인센티브 지급</b></Font><BR>
				&emsp;&emsp;&emsp; 1. 처당 100,000원 <BR>
				&emsp;&emsp;&emsp; 2. UB서비스 대리점이 컨버젼 인센티브 지급 기준 이상 달성 시 년말 소급적용 <BR>
				&emsp;&emsp;&emsp; 3. 해당 목표 未 달성 시 컨버젼 진행처가 존재해도 未 지급 됨. <BR>
				&emsp;&emsp;&emsp; 4. 방과 전문대리점 컨버젼 영업 시 인센티브는 방과 전문대리점에게 지급, UB서비스 대리점은 실적만 인정 <BR>
				<BR>
			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 7 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3><b> ◇ Market share가 많은 대리점 순으로 A, B, C, D 그룹 분류 </b>
				</Font><BR>
				&emsp;&emsp;&emsp; 1. A 그룹 : 대호메디케어, 에버넷, 엠네트, 이안메드 <BR>
				&emsp;&emsp;&emsp; 2. B 그룹 : 강남메디패스, 비즈현메디칼, 세일메디넷, 프로비즈넷 <BR>
				&emsp;&emsp;&emsp; 3. C 그룹 : 두리메디컴, 디라인, 메디네트, 이오넷 <BR>
				&emsp;&emsp;&emsp; 4. D 그룹 : 동원메디텍, 메디케어, 엠베이스, 제주메디넷 <BR>
				<BR>
			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 8 </TD>
			<TD Align="Left" width="95%"> <BR>&emsp;<Font Size=3><b> ◇ 최우수 사원 포상 제도</b></Font><BR>
				&emsp;&emsp;&emsp; 1. 1년 누적 점수 기준으로 총 8명 선정, 그룹별 각 2명 차등 지급 <BR>
				&emsp;&emsp;&emsp; 2. 컨버젼 및 신규 계약 건수, 컨버젼 가망처 입력율, 지방대리점 영업소개 후 성공시 점수화 <BR>
				&emsp;&emsp;&emsp; 3. 지급 금액 (총 14,000,000)<BR>
				&emsp;&emsp;&emsp;&emsp; - A 그룹 5,000,000원, 최우수 : 3,000,000원, 우수 : 2,000,000원<BR>
				&emsp;&emsp;&emsp;&emsp; - B 그룹 4,000,000원, 최우수 : 2,500,000원, 우수 : 1,500,000원<BR>
				&emsp;&emsp;&emsp;&emsp; - C 그룹 3,000,000원, 최우수 : 2,000,000원, 우수 : 1,000,000원<BR>
				&emsp;&emsp;&emsp;&emsp; - D 그룹 2,000,000원, 최우수 : 1,200,000원, 우수 : 800,000원<BR>
				<BR>
			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 9 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3><b>◇ 분기별 우수 사원 포상 제</b></Font><BR>
				&emsp;&emsp;&emsp; 1. 분기 누적 점수 기준 및 최소 건수 충족 시 총 8명 선정, 그룹별 각 2명 차등 지급 <BR>
				&emsp;&emsp;&emsp; 2. 최우수 사원 선발기준 점수제와 동일 <BR>
				&emsp;&emsp;&emsp; 3. 분기마다 점수 초기화<BR>
				&emsp;&emsp;&emsp; 4. 지급 금액 (총 16,000,000) <BR>
				&emsp;&emsp;&emsp;&emsp; - 각 그룹당 1,000,000원 지급 <BR>
				&emsp;&emsp;&emsp;&emsp; - 1등 : 600,000원, 2등 : 400,000원 지급 <BR><BR>

				&emsp;&emsp;&emsp;&emsp;<Font size=2 color='FF3333'><B>★ 1분기 시행 결과 그룹별 상대평가로 인한 영업 실적 미진한 담당자가 선발되어 이를
						보완하기 위해 아래<BR>
						&emsp;&emsp;&emsp;&emsp; 표를 기준으로 그룹별 계약(컨버젼+신규) 최소 건 수를 우수사원 선발 조건으로 추가 하였습니다.<BR>
						&emsp;&emsp;&emsp;&emsp; 즉, 누적점수 기준 그룹별 1 ~ 2등에 선정되어도 분기별 계약 건 수 미달성 시 인센티브를 지급하지 않음<B></Font>
				<BR>

				<BR> &emsp; &emsp;<Font Size=2> ◇ 그룹 별 분기별 계약 최소 건 수(1人 기준 컨버젼 + 신규개원)</Font><BR>
				<TABLE border=1 cellPadding=1 cellSpacing=0 width='94%' Align="center">
					<TR>
						<TD Align="center" width="25%">A그룹</TD>
						<TD Align="center" width="25%">B그룹</TD>
						<TD Align="center" width="25%">C그룹</TD>
						<TD Align="center" width="25%">D그룹</TD>

					</TR>
					<TR>
						<TD Align="center" width="10%">8</TD>
						<TD Align="center" width="15%">6</TD>
						<TD Align="center" width="15%">5</TD>
						<TD Align="center" width="15%">3</TD>
					</TR>
				</TABLE>
				&emsp;&emsp; ▶ 그룹별 가망처와 1분기 실적을 기준으로 하여 최소 건수를 설정 함(그룹별 가망처수 차이로 인한 형평성을 부여하고자 함)<BR>
				<BR>
			</TD>
		</TR>
		<TR>
			<TD Align="center" width="5%"> 10 </TD>
			<TD Align="Left" width="95%"> <BR> &emsp;<Font Size=3><b>◇ 점수 안내</b></Font><BR>
				<TABLE border=1 cellPadding=1 cellSpacing=0 width='94%' Align="center">
					<TR>
						<TD Align="center" width="10%">구분</TD>
						<TD Align="center" width="15%">비의사랑 컨버젼</TD>
						<TD Align="center" width="15%">의사랑 컨버젼</TD>
						<TD Align="center" width="15%">신규</TD>
						<TD Align="center" width="15%">비의사랑가망처입력</TD>
						<TD Align="center" width="15%">의사랑가망처입력</TD>
						<TD Align="center" width="15%">병원급소개후계약시</TD>

					</TR>
					<TR>
						<TD Align="center" width="10%">점수</TD>
						<TD Align="center" width="15%">10점</TD>
						<TD Align="center" width="15%">7점</TD>
						<TD Align="center" width="15%">5점</TD>
						<TD Align="center" width="15%">2점</TD>
						<TD Align="center" width="15%">1점</TD>
						<TD Align="center" width="15%">10점</TD>

					</TR>
				</TABLE>
				<BR>
				&emsp;&emsp; <Font size=3 color='FF3333'><b> - 컨버젼 경우 매월 전자 문서상에 있는 계약자로 적용되며 전자 문서상에 컨버젼 꼭 체크 해야 함 </b>
				</Font><BR>
				&emsp;&emsp; - 전자문서상에 있는 담당자와 실제 작업자가 상이 할 경우 반드시 AM에게 내용 전달<BR>
				&emsp;&emsp; - 지방대리점 한해 병원급 소개 후 계약 시 점수 인정 <BR>
			</TD>
		</TR>
	</TABLE>





	</div>
	</div>
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">@ 2021 UBcare Co., Ltd. All rights reserved.</p>
		</div>
		<!-- /.container -->
	</footer>


</body>

</html>