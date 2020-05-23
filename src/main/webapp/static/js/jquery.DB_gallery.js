/* 덜쯤憐잿：댕庫貢 www.datouwang.com */
;(function($){
$.fn.DB_gallery=function(options){
	var opt={
		thumWidth:110,              //썸네일가로
		thumGap:8,                  //썸네일간격
		thumMoveStep:5,             //썸네일이동갯수
		moveSpeed:300,              //이동속도
		fadeSpeed:300,              //화면전환속도
		end:''
	}
	$.extend(opt,options);
	return this.each(function(){
		var $this=$(this);
		var $imgSet=$this.find('.DB_imgSet');
		var $imgWin=$imgSet.find('.DB_imgWin');
		var $page=$this.find('.DB_page');
		var $pageCurrent=$page.find('.DB_current');
		var $pageTotal=$page.find('.DB_total');
		var $thumSet=$this.find('.DB_thumSet');
		var $thumMove=$thumSet.find('.DB_thumMove');
		var $thumList=$thumMove.find('li');
		var $thumLine=$this.find('.DB_thumLine');
		var $nextBtn=$this.find('.DB_nextBtn');
		var $prevBtn=$this.find('.DB_prevBtn');
		var $nextPageBtn=$this.find('.DB_nextPageBtn');
		var $prevPageBtn=$this.find('.DB_prevPageBtn');
		var objNum=$thumList.length;
		var currentObj=0;
		var fixObj=0;
		var currentPage=0;
		var totalPage=Math.floor(objNum/opt.thumMoveStep);
		var oldImg;

		init();

		function init(){
			setInit();
			setMouseEvent();
			changeImg();
		}

		function setInit(){
			//썸네일 라인 위치변경
			$thumMove.append($thumLine.get())
		}

		//바인딩
		function setMouseEvent(){
			$thumList.bind('click',function(e){
				e.preventDefault();
				currentObj=$(this).index();
				changeImg();
			});
			$nextBtn.bind('click',function(){
				currentObj++;
				changeImg();
				currentPage=Math.floor(currentObj/opt.thumMoveStep);
				moveThum();

			});
			$prevBtn.bind('click',function(){
				currentObj--;
				changeImg();
				currentPage=Math.floor(currentObj/opt.thumMoveStep);
				moveThum();
			});
			$nextPageBtn.bind('click',function(){
				currentPage++;
				moveThum();
			});
			$prevPageBtn.bind('click',function(){
				currentPage--;
				moveThum();
			});
		
		}
		
		//썸네일 이동
		function moveThum(){
			var pos=((opt.thumWidth+opt.thumGap)*opt.thumMoveStep)*currentPage
			$thumMove.animate({'left':-pos},opt.moveSpeed);
			//
			setVisibleBtn();
		}

		//이미지변경에 따른 버튼처리
		function setVisibleBtn(){
			$prevPageBtn.show();
			$nextPageBtn.show();
			$prevBtn.show();
			$nextBtn.show();
			if(currentPage==0)$prevPageBtn.hide();
			if(currentPage==totalPage-1)$nextPageBtn.hide();
			if(currentObj==0)$prevBtn.hide();
			if(currentObj==objNum-1)$nextBtn.hide();
		}

		//이미지변경
		function changeImg(){
			if(oldImg!=null){
				//부드러운 전환을 위해 배경에 기존이미지를 배치
				$imgWin.css('background','url('+oldImg+') no-repeat');
			}
			//클릭이미지
			var $thum=$thumList.eq(currentObj)
			var _src=oldImg=$thum.find('a').attr('href');
			$imgWin.find('img').hide().attr('src',_src).fadeIn(opt.fadeSpeed);
			oldImg=_src

			//썸네일라인 위치변경
			$thumLine.css({'left':$thum.position().left})

			//페이지변경
			$pageCurrent.text(currentObj+1);
			$pageTotal.text(objNum);
			
			setVisibleBtn();
		}
	})
}
})(jQuery)