<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setAttribute("APP", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${APP }/css/common.css">
  <link rel="stylesheet" href="${APP }/css/style.css">
  <script type="text/javascript" src="${APP }/js/jquery.min.js"></script>
  <script type="text/javascript" src="${APP }/js/jquery.SuperSlide.js"></script>
  <script type="text/javascript">
  $(function(){
	  $('.sideMenu h3').each(function(i){ //菜单折叠展开js
	      $(this).click(function(){
	    	  $('.sideMenu ul').eq(i).slideToggle(300);
	      })
	  })

     $('.sideMenu ul li').each(function(){ //点击当前菜单给予激活样式
    	  $(this).click(function(){
    	      $('.sideMenu ul li').removeClass('on');
    		  $(this).addClass('on');
    	  })
      })
      $(window).resize(function() {
          scrollWW();
      });
      $('.sideMenu li').each(function(){ //当前位置的js
    	  $(this).click(function(){
    		  $('#position').text($(this).text());
    	  })
      })
  });
  function scrollWW(){
    if($(".side").height()<$(".sideMenu").height()){
       $(".scroll").show();
       var pos = $(".sideMenu ul:visible").position().top-38;
       $('.sideMenu').animate({top:-pos});
    }else{
       $(".scroll").hide();
       $('.sideMenu').animate({top:0});
       n=1;
    }
  } 

var n=1;
function menuScroll(num){
  var Scroll = $('.sideMenu');
  var ScrollP = $('.sideMenu').position();
  /*alert(n);
  alert(ScrollP.top);*/
  if(num==1){
     Scroll.animate({top:ScrollP.top-38});
     n = n+1;
  }else{
    if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
    if (ScrollP.top<0) {
      Scroll.animate({top:38+ScrollP.top});
    }else{
      n=1;
    }
    if(n>1){
      n = n-1;
    }
  }
}
  </script>
  <title>后台首页</title>
</head>
<body>
    <div class="top">
      <div id="top_t">
        <div id="photo_info" class="fr">
          <div id="photo" class="fl">
            <a href="#"><img src="images/a.png" alt="" width="60" height="60"></a>
          </div>
          <div id="base_info" class="fr">
            <div class="help_info">
              <a href="1" id="hp">&nbsp;</a>
              <a href="2" id="gy">&nbsp;</a>
              <a href="javascript:;" id="out" >&nbsp;</a>
            </div>
            <div class="info_center">
              ${sessionScope.user }
            </div>
          </div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置><span id="position">欢 迎</span></div>
      </div>
    </div>
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
          <h3>学生管理</h3>
          <ul>
            <li><a href="intoStudent" target="right">学生信息</a></li>
          </ul>
          <h3>教师管理</h3>
          <ul>
            <li><a href="intoTeacher" target="right">教师信息</a></li>
          </ul>
          <h3>院系管理</h3>
          <ul>
            <li><a href="intoDepartment" target="right">院系信息</a></li>
          </ul>
          <h3>班级管理</h3>
          <ul>
            <li><a href="intoClasses" target="right">班级信息</a></li>
          </ul>
          <h3>课程管理</h3>
          <ul>
            <li><a href="intoCourse" target="right">课程信息</a></li>
          </ul>
          <h3>用户管理</h3>
          <ul>
            <li><a href="intoUser" target="right">用户信息</a></li>
          </ul>
           
       </div>
    </div>
    <div class="main">
       <iframe name="right" id="rightMain" src="./welcome" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
    </div>
    <div class="bottom">
      <div id="bottom_bg">Copyright © 2018-2 Vito Corleone. All rights reserved. </div>
    </div>
    <div class="scroll">
          <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
          <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
    </div>

</body>
<script type="text/javascript">
   $("#out").click(function () {
	if(confirm("确定退出吗")){
		location.href='logout';
	}
})
</script>
</html>