<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/member/product/productV.css">
</head>
<body>
	<c:import url="../../header.jsp"/>
	<div>
		<div><img id="indexImg" src="images/product.png"></div>
		<h1>상품정보</h1>
		<hr class="mainHr">
		<div id="productDiv">
			<div class="imgDiv"><img src="images/naturalAmple.png" onmouseover="this.src='images/naturalAmple2.png'" onmouseout="this.src='images/naturalAmple.png'"></div>
			<form>
				<div>
					<p><span id="productTitle">Natural Ample</span><br><br><span id="price">45,000원</span></p>
					<hr>
					<p>제조&nbsp;&nbsp;&nbsp;자체제작<br>
					   원산지&nbsp;&nbsp;&nbsp;국내<br>
					   용량&nbsp;&nbsp;&nbsp;75ml
					</p>
					<hr>
					<p>
						<label>Natural Ample</label>&nbsp;&nbsp;&nbsp;
						<input id="productCount" type='number' value="1" min='1' max='999' step='1' onclick="upatePrice();">
					</p>
					<hr>
					<p id="totalPrice">
						<span>TOTAL: </span>
						<span class="price">45,000</span>원
					</p>
					<button type="button">구매하기</button>
					<button type="button" onclick="window.open('productAlert','','width=600, height=200')">장바구니</button>
				</div>
			</form>
		</div>
		<hr class="mainHr">
		<b><a id="productInfo" class="productNav">제품상세정보</a></b>
		<a class="productNav" href="#purchaseGuide">상품구매안내</a>
		<a class="productNav" href="#productReview">상품리뷰(2)</a>
		<a class="productNav" href="#productQna">상품Q&A(2)</a>
		<hr class="mainHr">
		<p class="productContent">
			"외부 환경에 따라 변화하하는<br>
			민감한 피부를 위해<br>
			피부 전문가들이 고안한 솔루션"
		</p>
		<br>
		<div><img src="images/productContentImg1.png" width="1200px"></div>
		<br>
		<div class="productTitle">
			<h5>REGENERATING SKIN</h5>
			<p>
				피부층을 탄탄하게 재건<br>
				수분 탄력막
			</p>
			<h5>PERFECT AMPLE</h5>
		</div>
		<br><div><img src="images/naturalAmple2.png" width="1200px"></div><br>
		<div class="productTitle">
			<h5>01 Longlasting Moisturized</h5>
			<p>
				속 당김 부터 겉보습까지<br><br>
				표피성장 인자로 피부의 친수성을 올려<br>
				피부를 촉촉하게 유지시켜 줍니다.
			</p>
		</div>
		<hr class="mainHr">
		<div class="productTitle">
			<h5>02 Requlating ample</h5>
			<p>
				농축된 엠플의 제형<br><br>
				농축된 엠플의 쫀쫀한 제형이 매끄럽게 밀착되며 속부터 차오르는 수분광으로 윤기있는 피부결을 선사합니다.
			</p>
		</div>
		<hr class="mainHr">
		<div class="productTitle">
			<h5>03 Mild fomula</h5>
			<p>
				민감 피부를 위한 마일드 포뮬러<br><br>
				민감한 피부도 걱정없이 사용할 수 있는 저자극 성분으로 지친 피부의 컨디션을 올려줍니다.
			</p>
		</div>
		<hr class="mainHr">
		<h5>How to use</h5><br><br>
		<p>
			예민해진 피부를 진정시키며<br>
			피부장벽을 강화시켜주는 고농축 엠플로<br>
			외부 환경으로부터 지친 피부를 케어해줍니다.<br>
		</p><br><br>
		<br><h5>Day & Night</h5><br><br>
		<p>
			세안 후 물기를 충분히 제거한 뒤 앰플을 펴 발라줍니다.
		</p><br>
		<hr class="mainHr">
		<h5 id="howToThrow">잘 버리는법</h5><br><br>
		<div><img src="images/productContentImg2.png" width="1200px"></div><br><br>
		<h5>Natural Skin의 모든 제품은 No-label로 만들어지기 때문에 사용후 분리배출하기 쉽습니다.</h5><br>
		<p>
			앰플: 뚜껑 스포이드 부분을 꽉잡고 살짝 들어올리면 고무부분과 뚜껑이 쉽게<br>
			분리됩니다. 후에 세척 후 분리배출해주시면 됩니다.<br><br><br>
			크림: 뚜껑을 분리하고 세척 후 분리배출해주시면 됩니다.
		</p>
		<hr class="mainHr">
		<h5>제품요약정보</h5>
		<hr class="mainHr">
		<div id="productInfo2">
			<div><img src="images/naturalAmple.png" width="400px"></div>
			<p>
				<span>용량:</span> 75ml<br>
				<span>제품 주요 사양:</span> 모든피부<br>
				<span>성분:</span> 정제수, 코코넛오일, 나이아신아마드, 헥산다이올, 다이포타슘글리시리제이트, 카라멜<br>
				<span>사용기한:</span> 발송일로부터 1년이내 제조<br>
				<span>제조사:</span> (주)Natural Skin<br>
				<span>원산지:</span> 한국
			</p>
		</div>
		<hr class="mainHr">
		<a class="productNav" href="#productInfo">제품상세정보</a>
		<b><a id="purchaseGuide" class="productNav">상품구매안내</a></b>
		<a class="productNav" href="#productReview">상품리뷰(2)</a>
		<a class="productNav" href="#productQna">상품Q&A(2)</a>
		<hr class="mainHr">
		<div class="purchaseGuide">
			<div>
				<h5>상품결제정보</h5><br>
				<p>
					고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 
					확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 
					판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.<br><br>
					무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.<br>
					주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 
					3일 이내로 입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다.
				</p>
			</div>
			<div>
				<h5>배송정보</h5><br>
				<p>
					배송 방법 : 택배<br>
					배송 지역 : 전국지역<br>
					배송 비용 : 2,500원<br>
					배송 기간 : 1일 ~ 3일<br>
					배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.<br>
					고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.<br>
					- 군부대 및 도서산간지역은 우체국택배로 발송 되며, 1~2일의 추가기간이 소요 될 수 있습니다.(군부대 주소지 입력시 '사서함'이라는 단어가 들어가도록 주문 부탁드립니다.)<br>
					-해외배송의 경우 카카오톡 상담 후 발송 가능합니다.
				</p>
			</div>
		</div>
		<hr class="mainHr">
		<div class="purchaseGuide">
			<div>
				<h5>교환 및 반품정보</h5><br>
				<p>
					교환 및 반품이 가능한 경우<br><br>
					
					- 상품을 공급 받으신 날로부터 7일이내 단,상품가치가 상실된 경우에는 교환/반품이 불가능합니다.<br>
					- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과
					 다르거나 다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내<br><br>
					
					교환 및 반품이 불가능한 경우<br><br>
					
					- 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단, 상품의 내용을 확인하기 위하여
					 포장 등을 훼손한 경우는 제외<br>
					- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우<br>
					- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을
					 제공한 경우에 한 합니다.<br>
					- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우
					  (자세한 내용은 Q&A게시판을 이용해 주시기 바랍니다.)<br><br>
					
					※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.
				</p>
			</div>
			<div>
				<h5>서비스문의</h5><br>
				<p>
					-Q&A 게시판 바로가기
				</p>
			</div>
		</div>
		<hr class="mainHr">
		<a class="productNav" href="#productInfo">제품상세정보</a>
		<a class="productNav" href="#purchaseGuide">상품구매안내</a>
		<b><a id="productReview" class="productNav">상품리뷰(2)</a></b>
		<a class="productNav" href="#productQna">상품Q&A(2)</a>
		<hr class="mainHr">
		<h5>리뷰</h5>
		<button id="reviewBtn" type="button" style="float: right;width:100px;">리뷰작성하기</button><br>
		<hr class="reveiwHr">
		<div class="review">
			<div>
				<span>별점:</span><img src="images/star5.png" width="80px">
			</div>
			<div>
				<span>아이디: dlanfslk</span>&nbsp;&nbsp;&nbsp;<span>작성일: 2020-00-00</span>&nbsp;&nbsp;&nbsp;<span>조회수: 10</span>
			</div>
		</div>
		<hr class="reveiwHr">
		<div class="reviewContent">
			<a href=""><span>만족합니다.</span></a><br>
			<img src="images/naturalAmple.png" width="130px">
			<img src="images/naturalAmple.png" width="130px">
		</div>
		<hr class="reveiwHr">
		<div class="review">
			<div>
				<span>별점:</span><img src="images/star5.png" width="80px">
			</div>
			<div>
				<span>아이디: dlanfslk</span>&nbsp;&nbsp;&nbsp;<span>작성일: 2020-00-00</span>&nbsp;&nbsp;&nbsp;<span>조회수: 10</span>
			</div>
		</div>
		<hr class="reveiwHr">
		<div class="reviewContent">
			<a href=""><span>만족합니다.</span></a><br>
			<img src="images/naturalAmple.png" width="130px">
			<img src="images/naturalAmple.png" width="130px">
		</div>
		<hr class="mainHr">
		페이징
		<hr class="mainHr">
		<a class="productNav" href="#productInfo">제품상세정보</a>
		<a class="productNav" href="#purchaseGuide">상품구매안내</a>
		<a class="productNav" href="#productReview">상품리뷰(2)</a>
		<b><a class="productNav" id="productQna">상품Q&A(2)</a></b>
		<hr class="mainHr">
		<h5>Q&A</h5>
		<button id="reviewBtn" type="button" style="float: right;width:100px;">Q&A작성하기</button><br>
		<hr class="reveiwHr">
		<table>                    
			<tr id="first-tr">
				<th>번호</th>
				<th>제목</th>
				<th>아이디</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td>1</td>
				<td>
					상품문의드립니다.
					<img id="lock" src="images/lock.png" alt="잠금"/>
				</td>
				<td>아이린</td>
				<td>2020-00-00</td>
				<td>10</td>
			</tr>
			<tr>
				<td>2</td>
				<td>
					<img id="re" src="images/re.png" alt="답글"/>
					상품문의드립니다.
					<img id="lock" src="images/lock.png" alt="잠금"/>
				</td>
				<td>admin</td>
				<td>2020-00-00</td>
				<td>10</td>
			</tr>
	</table>
	</div>
	<c:import url="../../footer.jsp"/>
	<script>
		function upatePrice(){
			let price = document.querySelector(".price");
			let productCount = document.getElementById("productCount");
			price.innerText = (productCount.value * 45000).toLocaleString();
		}
	</script>
</body>
</html>