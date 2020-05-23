/**
 * 乡工会 脚本
 * @authors 默De想法(2767652008@qq.com)
 * @date    2016-03-27
 * @version 1.0
 */
// 商品属性选择
$(function(){
	$(".price_cnt").each(function(){
		var i=$(this);
		var p=i.find("ul>li");
		p.click(function(){
			if(!!$(this).hasClass("selected")){
				$(this).removeClass("selected");
			}else{
				p.removeClass("selected");
				$(this).addClass("selected");
			}
			
		})
	})
});

// 表单 下拉列表 mitateSelect()
(function($){
    $.fn.mitateSelect = function(options){
        // 设置默认属性
        var defaults = {}

        // 合并多个对象
        var options = $.extend(defaults, options);

        //插件实现代码
        return this.each(function(){
            var $this_span = $(this).children('span');
            var $this_ul = $(this).children('ul');
            var $this_li = $this_ul.children('li');
            var $this_input = $(this).children('input[type="hidden"]');
            var this_li_val = '';

            // 判断鼠标是否在 模拟select框内
            $(this).hover(function(){
                return false;
            }, function(){
                // 否，判断ul是否可见，是，则收起ul
                if($this_ul.is(':visible')){
                    // 是，收起ul
                    $this_ul.stop().slideUp(300);
                    return false;
                }
            });

            // 注册模拟select框的点击效果
            $(this).on('click', function(){
                // 判断ul是否可见
                if($this_ul.is(':visible')){
                    // 是，收起ul
                    $this_ul.stop().slideUp(300);
                }else{
                    // 否，滑下ul
                    $this_ul.stop().slideDown(300);
                    // 列表项 鼠标悬浮效果
                    $this_li.hover(function(){
                        $(this).addClass('is-hover');
                    }, function(){
                        $(this).removeClass('is-hover');
                    });
                }
                return false;
            });

            $this_li.on('click', function(){
                this_li_val = $(this).text();
                $this_span.text(this_li_val);
                $this_input.val(this_li_val);
            });
        });
    };
})(jQuery);

// 表单 单选按钮 mitateRadio()
(function($){
    $.fn.imitateRadio = function(options){
        // 设置默认属性
        var defaults = {}

        // 合并多个对象
        var options = $.extend(defaults, options);

        //插件实现代码
        return this.each(function(){
            $(this).on('click', function(){
                if($(this).hasClass('checked')){
                    return false;
                }else{
                    $(this).siblings().removeClass('checked');
                    $(this).addClass('checked');
                    $(this).siblings('input[type="hidden"]').attr('value', $(this).attr('_val'));
                }
            });
        });
    };
})(jQuery);

// 表单 复选按钮 imitateChecked()
(function($){
    $.fn.imitateChecked = function(options){
        // 设置默认属性
        var defaults = {
            val : ['1']
        }

        // 合并多个对象
        var options = $.extend(defaults, options);

        //插件实现代码
        return this.each(function(){
            $(this).on('click', function(){
                if($(this).hasClass('checked')){
                    $(this).removeClass('checked')
                    // 将对应的值从数组中删除
                    var vals = $(this).attr('_val');
                    options.val = $.grep(options.val, function(val, index){
                        return val != vals;
                    });
                    // 判断复选条件是否全不选中
                    if(options.val.length == 0){
                        // 是，给隐藏域默认值0
                        $(this).siblings('input[type="hidden"]').attr('value', 0);
                    }else{
                        $(this).siblings('input[type="hidden"]').attr('value', options.val);
                    }
                }else{
                    $(this).addClass('checked');
                    // 添加对应的值到数组中
                    options.val.push($(this).attr('_val'));
                    $(this).siblings('input[type="hidden"]').attr('value', options.val);
                }
            });
        });
    };
})(jQuery);

// 鼠标悬浮 透明度0.7 mouseOver()
(function($){
    $.fn.mouseOver = function(options){
        // 设置默认属性
        var defaults = {
            opacity : '.7',
            speed : 300
        }

        // 合并多个对象
        var options = $.extend(defaults, options);

        //插件实现代码
        return this.each(function(){
            $(this).hover(function(){
                $(this).stop().animate({
                    opacity : options.opacity
                }, options.speed);
            }, function(){
                $(this).stop().animate({
                    opacity : 1
                }, options.speed);
            });
        });
    };
})(jQuery);


$(function(){
    // 表单 下拉列表  
    $('.selectBox').mitateSelect()
    // 表单 复选按钮
    $('.checkedBox').imitateChecked();
    // 表单 单选按钮
    $('.radioBox').imitateRadio();

    // 首页 头部功能按钮
    $('.header').find('.myOrder').hover(function(){
        $(this).find('ul').stop().slideDown(200);
    }, function(){
        $(this).find('ul').stop().slideUp(200);
    });
	// 首页 头部微信
	$('.header').find('.btn-weixin').hover(function(){
        $(this).find('div').stop().slideDown(200);
    }, function(){
        $(this).find('div').stop().slideUp(200);
    });
	
	// 首页 登录退出
	$('.header').find('.btn-regist_t').hover(function(){
        $(this).find('ul').stop().slideDown(200);
    }, function(){
        $(this).find('ul').stop().slideUp(200);
    });
    // 首页
    $('.f-homemaking,.f-goods,.f-cooperate').find('.right').find('.title-item').on('click', function(){
        var index = $(this).index();
        $(this).siblings('.title-item').removeClass('is-current');
        $(this).addClass('is-current');
        $(this).parent().siblings('.content').find('ul').fadeOut(100);
        $(this).parent().siblings('.content').find('ul').eq(index).fadeIn(100);
    });


    // 首页 banner
    $(".bannerBox").find('.banner').slide({
        mainCell : ".bd ul",
        autoPlay : true,
        trigger : "click",
        delayTime : 2000
    });


    // 首页 全部商品导航
    $('.header-nav-all').on('click', function(){
        if($(this).hasClass('is-index')){
            //return false;
        }else{
            var $nav_ul = $(this).find('.header-nav-all-ul');
            if($nav_ul.is(':visible')){
                $nav_ul.stop().slideUp(300);
            }else{
                $nav_ul.stop().slideDown(300);
            };
        }
    });

    // 首页 全部商品导航 子导航
    $('.header-nav-all-li').hover(function(){
        $(this).find('ul').stop().show(200);
    }, function(){
        $(this).find('ul').stop().hide(200);
    });

    // 产品详情 相册
    $('.picLib').DB_gallery({
        thumWidth : 103,
        thumGap : 5,
        thumMoveStep : 1,
        moveSpeed : 300,
        fadeSpeed : 500
    });

    // 我的地址 新增地址
    $('.add-address-form').find('.btn-sub').mouseOver();
    // 下单内容
    $('.order_sub').on('click', function(){
        if($("#fwsj").val()==""||$("#xdsj").val()==""){
        	alert("请选择服务时间")
        	return false;
        }else if($("#address_id").val()==""||$("#address_id").val()==0){
        	alert("请选择地点")
        	return false;
        }else{
        	$(this).submit();
        }
    });
    // 预约下单 服务地点
    $('.user-order-address').find('ul').on('click', function(){
        $(this).siblings().removeClass('checked');
        $(this).addClass('checked');
        $(this).siblings('input').attr('value', $(this).attr('_val'));
    });

    // 预约下单 发票信息
    $('.user-order-receipt').find('.btn-sub-save, .btn-sub-none').mouseOver();

    // 预约下单 备注
    $('.user-order-remark').find('.btn-sub').mouseOver();
    
    // 预约下单 不开发票
    $('.user-order-receipt').find('.btn-sub-none').on('click', function(){
        $(this).siblings('input[type="hidden"]').attr('value', $(this).attr('_val'))
    });

    // 订单中心
    $('.user-myOrder').find('.user-bd-main').children('.title').find('a').on('click', function(){
        var index = $(this).index();
        $(this).siblings().removeClass('is-current');
        $(this).addClass('is-current');
        $(this).parent().siblings('.content').fadeOut(0);
        $(this).parent().siblings('.content').eq(index).fadeIn(0);
    });

    // 优惠券
    $('.user-coupon').find('.coupon').children('.title').find('a').on('click', function(){
        var index = $(this).index();
        $(this).siblings().removeClass('is-current');
        $(this).addClass('is-current');
        $(this).parent().siblings('.main').fadeOut(0);
        $(this).parent().siblings('.main').eq(index).fadeIn(0);
    });
});
