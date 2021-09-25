let searchBar = document.getElementById("input");
let table = document.querySelector("table");
let searchBy = "전체보기";        	     //첫화면에선 selected 적용이 안돼서 여기서 적용시켜줌
searchBar.style.display = "none";  	 //초기값이 전체보기, 전체보기에는 searchBar 필요없음

function searchMemberBy(){                      //ajax구현 함수
	if(searchBy == "전체보기"){
		fetch("aMeberMainShowAll")
		.then(res => res.json())
		.then(data => {
			removeTr();							 //기존tr 데이터 삭제
			data.forEach((memberInfo, idx)=>{
				let tr = initTr(memberInfo.member_id);    	 //tr 생성 및 설정
				
				let memberInfoArr = [                      //td에 필요한 데이터배열생성
					idx + 1,
					convertNoByStr(memberInfo.member_role),
					memberInfo.member_id,
					memberInfo.member_name,
					memberInfo.member_date
				];
				initTrBy(memberInfoArr, tr);          		//td 생성 및 설정
			})
		})
		.catch(error => console.log(error))
	}
	if(searchBy == "아이디"){
		if(isEmptySearchBar()){                              //검색창이 빈값인지 체크
			return alert("검색하실 아이디를 입력해주세요!");
		}
		
		fetch("aMemberMainSearchById?member_id=" + searchBar.value)
		.then(res => res.json())
		.then(memberInfo => {
			removeTr(); 									//기존 tr 데이터 삭제
			
			let tr = initTr(memberInfo.member_id);    		 //tr생성 및 설정
			
			let memberInfoArr = [                           //td에 필요한 데이터배열생성
				1,
				convertNoByStr(memberInfo.member_role),
				memberInfo.member_id,
				memberInfo.member_name,
				memberInfo.member_date
			];
			initTrBy(memberInfoArr, tr);          		//td 생성 및 설정
		})	 
		.catch(error => {								//검색결과가 없을경우
			alert("해당 아이디가 존재하지 않습니다.");
			console.log(error)}) 
	}
	if(searchBy == "이름"){
		if(isEmptySearchBar()){								//검색창 빈값체크
			return alert("검색하실 이름을 입력해주세요!");
		}
		fetch("aMemberMainSearchByName?member_name=" + searchBar.value)
		.then(res => res.json())
		.then(data => {
			console.log(data);
			removeTr(); 											//기존 tr 데이터 삭제
			data.forEach((memberInfo, idx)=>{
				let tr = initTr(memberInfo.member_id);    	  		 //tr생성 및 설정
				
				let memberInfoArr = [                     		 	//td에 필요한 데이터배열생성
					idx + 1,
					convertNoByStr(memberInfo.member_role),
					memberInfo.member_id,
					memberInfo.member_name,
					memberInfo.member_date
				];
				initTrBy(memberInfoArr, tr);          		//td 생성 및 설정
			})
		})
		.catch(error => {
			alert("해당 이름이 존재하지 않습니다.");    			//검색결과 없을경우
			console.log(error)}) 
	}
	if(searchBy == "일반회원"){
		fetch("aMemberMainSearhByRole?member_role="+0)
		.then(res => res.json())
		.then(data => {
			removeTr(); 												//기존 tr 데이터 삭제
			
			data.forEach((memberInfo, idx) => {
				let tr = initTr(memberInfo.member_id);    	   			 //tr생성 및 설정
				
				let memberInfoArr = [									//td에 필요한 데이터배열생성
					idx + 1,
					convertNoByStr(memberInfo.member_role),
					memberInfo.member_id,
					memberInfo.member_name,
					memberInfo.member_date
				]
				initTrBy(memberInfoArr, tr);          		//td 생성 및 설정
			})
		})
		.catch(error => {
			alert("일반회원이 존재하지 않습니다.");    			//검색결과 없을경우
			console.log(error)}) 
	}
	if(searchBy == "관리자"){
		fetch("aMemberMainSearhByRole?member_role="+1)
		.then(res => res.json())
		.then(data => {		
			removeTr(); 								  //기존 tr 데이터 삭제
			
			data.forEach((memberInfo, idx) => {
				let tr = initTr(memberInfo.member_id);     //tr생성 및 설정
				
				let memberInfoArr = [					  //td에 필요한 데이터배열생성
					idx + 1,
					convertNoByStr(memberInfo.member_role),								
					memberInfo.member_id,
					memberInfo.member_name,
					memberInfo.member_date
				];
				initTrBy(memberInfoArr, tr);          	//td 생성 및 설정
			})
		})
		.catch(error => {
			alert("관리자가 존재하지 않습니다.");    			//검색결과 없을경우
			console.log(error)}) 
	}
}

function removeTr(){                                   //기존 tr 데이터 삭제
	let trs = document.querySelectorAll(".member_info_tr");   
	trs.forEach( tr => {
		tr.remove();
	})
}

function initTr(member_id){                            //tr생성 및 설정
	let tr = document.createElement("tr");     
	tr.className = "member_info_tr";
	table.appendChild(tr);
	tr.addEventListener("click",()=>{
		window.open('aMemberV?member_id='+member_id,'','width=650, height=700');
	})
	return tr;
}

function convertNoByStr(no){					//member_role문자열로 변환
	if(no == 0){
		return "일반회원";
	}else{
		return "관리자";
	}
}

function initTrBy(arr, parentElement){         	//td 생성 및 설정
	arr.forEach(data => {
		let td = document.createElement("td");
		td.textContent = data;
		parentElement.appendChild(td);
	})
}



function selected2nd(value){                     //2번째 select박스 선택시 
	searchBy = value;
}

function isEmptySearchBar(){					//검색창이 비어있는지 체크
	if(!document.getElementById("input").value){
		return true;
	}
	return false;
}