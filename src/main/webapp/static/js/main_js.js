//主页
$(function(){
	$(".header_banner_box").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"leftLoop",  autoPlay:true, autoPage:true, trigger:"click" });
	$(".mien_slidBox").slide({mainCell:".slide ul",autoPage:true,effect:"left",autoPlay:true,vis:4});	
	$(".models_slidBox").slide({ mainCell:".slide",vis:6,prevCell:".prev",nextCell:".next",effect:"leftLoop"});
	$(".contain_models").slide({titCell:".contain_models_nav li",mainCell:".parBd",autoPlay:true});
	
	//
	var widthOff = document.body.offsetWidth;
	if(widthOff>1200){
		$(".header_banner_list li img").css("width",widthOff+"px");
		var searchwidth = $(".header_search").width();
		$(".header_search").css("left",(widthOff-searchwidth)/2+"px");
		//contain nav
		$(".contain_models_leftbg").css({"width":(widthOff-1200)/2+"px","left":-(widthOff-1200)/2+"px"});
		$(".contain_activity_rightbg").css({"width":(widthOff-1200)/2+"px","right":-(widthOff-1200)/2+"px"});
		if((widthOff-1200)/2>49){
			$(".contain_models_rightbg").css({"width":49+"px","right":-49+"px"});
			$(".contain_activity_leftbg").css({"width":49+"px","left":-48+"px"});
		}
		//
	}else{
		$(".header_banner_list li img").css("width","1200px");
		$(".header_search").css("left","215px")
	}
	
	//选择门店时间预定
	$(".down_list1").click(function(){
		$(".list_store").css("display","block");
	})
	$(".down_list2").click(function(){
		$(".list_type").css("display","block");
	})
	$(".list_store li").click(function(){
		$(".down_list1").html($(this).html());
		$(".list_store").css("display","none");
		$("#store_id").val($(this).attr("var"));
	})
	$(".list_type li").click(function(){
		$(".down_list2").html($(this).html());
		$(".list_type").css("display","none");
		$("#type_id").val($(this).attr("var"));
	})
	
	// 精彩活动
	$('.contain_activity_list li').mouseenter(function(){
		$(this).find('span').fadeIn(2000);
		$(this).find('img').show();
	}).mouseleave(function(){
		$(this).find('span').hide();
	})
	
	
	
})