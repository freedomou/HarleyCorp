<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<html>
<head>
<meta http-equiv=Content-Type content="text/html;charset=utf-8">
<link type="text/css" rel="stylesheet" href="stylesheets/style.css" />
    <style>
        body {
            background-color: burlywood;
        }
        *{
		padding: 0;
		margin: 0;
		}
		ul {
			list-style: none
		}
		li{
			height: 70px;
			padding: 10px;
			border-bottom: 1px solid #ccc;
			vertical-align: middle;
		}
        
        .icon img {
		height: 70px;
		width: 70px;
		}
		.icon {
			display: inline-block;
			vertical-align: middle;
			/*border: 1px solid #00ff00;*/
		}
		.text {
		margin-left: 10px;
		width: calc(100% - 90px);
		display: inline-block;
		text-align: left;
		line-height: 70px;
		vertical-align: middle;
		} 
    </style>

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>index</title>
<script type="text/javascript">
var _config = <%= com.alibaba.dingtalk.openapi.demo.auth.AuthHelper.getConfig(request) %>;
</script>
<script type="text/javascript" src="javascripts/zepto.min.js"></script>
<script type="text/javascript" src="http://g.alicdn.com/ilw/ding/0.7.3/scripts/dingtalk.js">
</script>
<script type="text/javascript" src="javascripts/logger.js">
</script>
<script type="text/javascript" src="javascripts/demo.js">
 
</script>
<script>
function openLink(){
	dd.biz.util.openLink({
		url:'http://h5.m.laiwang.com/home/ding.html',
	    onSuccess : function(result) {
	    },
	    onFail : function(err) {
	    	alert(JSON.stringify(err));
	    }
	});
}

</script>

</head>

<body >
	<div>
		<img id ="userImg" alt="头像" src="./nav/default.png">
	</div>
	<div>
		<span>UserName:</span>
		<div id="userName" style="display:inline-block"></div>
	</div>
	<div>
		<span>UserId:</span>
		<div id="userId" style="display:inline-block"></div>
	</div>
	
<!-- 	<div><button onclick="openLink()">JSAPI</button></div>
	<div><button onclick="window.location='./nav/1.html'">导航框架</button></div>
	<div><button onclick="window.location='./list/list.html'">go to list</button></div>
	
	<div><button onclick="window.location='http://ddtalk.github.io/dingTalkDoc'">go to doc</button></div>
	
    <div class="clear-float"/>
    <div id="dd"></div>
 -->
 <ul>
<li>
	<div class="icon"><img src="list/heart1.png"></div>
	<div class="text">JSAPI</div>
</li>
<li>
	<div class="icon"><img src="list/heart2.png"></div>
	<div class="text">导航框架</div>
</li>
<li>
	<div class="icon"><img src="list/heart3.png"></div>
	<div class="text">开放平台文档</div>
</li>
<li>
	<div class="icon"><img src="list/heart4.png"></div>
	<div class="text">go to list</div>
</li>
</ul>
 <script type="text/javascript">
window.addEventListener('load', function() {
	setTimeout(function(){
	}, 500);
});

	var items = document.querySelectorAll('li');
	var i = 0;
	items[0].addEventListener('click',function(){
		openLink();
	});
	items[2].addEventListener('click',function(){
		window.location='http://ddtalk.github.io/dingTalkDoc';
	});
	items[3].addEventListener('click',function(){
		window.location='./list/list.html';
	});


	items[1].addEventListener('click', function(item, index) {
			return function(ev) {
                var left = 0
				var top = item.getBoundingClientRect().top;
                var width = 90;
				var height = item.offsetHeight;

				var icon = index % 3 + 1;
				var text = 'This is an awesome detail ';
				var url = './nav/1.html';
                var once = true;

                window.nuva.require('ui.nav').preload({
                    pages: [{id: 'jsapi', url: url}],
                    onSuccess: function(data) {
                        if (once) {
                            once = false;
                            setTimeout(function() {
                                window.nuva.require('ui.nav').go({
                                    createIfNeeded: true,
                                    id: 'jsapi',
                                    url: url,
                                    anim: 3,
                                    transit: {
                                        from: {
                                            top: top,
                                            left: 0,
                                            height: height
                                        },
                                        to: {

                                        }
                                    },
                                    onSuccess: function() {

                                    },
                                    onFail: function(err) {
                                        alert(JSON.stringify(err));
                                    }
                                });
                            }, 0);
                        }
                    },
                    onFail: function(err) {
                        alert(JSON.stringify(err));
                    }
                });
			};
		}(items[1], 1));
	
	</script>
 
</body>

</html>
