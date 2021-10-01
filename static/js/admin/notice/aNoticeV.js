function resize(obj){
	obj.style.height = '1px';
	obj.style.height = (12 + obj.scrollHeight) + 'px';
	}

function btn(){ alert('공지사항이 수정되었습니다'); 
   self.close();
   opener.location.reload();

    } 
