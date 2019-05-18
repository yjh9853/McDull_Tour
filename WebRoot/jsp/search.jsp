<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/search.css">

  </head>
  
  <body style="background-color: whitesmoke">
  <div class="top">
      <img class="img" src="img/logo.png">
      <p class="text">请联系我们：15254129502&nbsp&nbsp&nbsp&nbsp9:30-18:30</p>
  </div>
  <div id="nov">
      <div id="menu">
          <ul>
              <li><a href="#">首页</a></li>
              <li><a href="#">旅行</a>
                  <ul>
                      <li><a href="#">国际旅行</a></li>
                      <li><a href="#">长途旅行</a></li>
                      <li><a href="#">周末旅行</a></li>
                      <li><a href="#">短期旅行</a></li>
                      <li><a href="#">微旅行</a></li>
                  </ul></li>
              <li><a href="#">我们</a>
                  <ul>
                      <li><a href="#">我们的故事</a></li>
                      <li><a href="#">我们的精神</a></li>
                      <li><a href="#">我们的旅行</a></li>
                      <li><a href="#">我们的人</a></li>
                      <li><a href="#">加入我们</a></li>
                      <li><a href="#">联系我们</a></li>
                  </ul></li>
              <li><a href="#">记录</a>
                  <ul>
                      <li><a href="#">周边小景</a></li>
                      <li><a href="#">临时有感</a></li>
                      <li><a href="#">幸福瞬间</a></li>
                      <li><a href="#">美景抓拍</a></li>
                      <li><a href="#">游记</a></li>
                  </ul>
               </li>
          </ul>
          <ul>
              <li><a class="right" href="#">推荐有礼</a></li>
              <li><a class="right" href="#">我的订单</a></li>
              <li><a class="right" href="#">退出&nbsp;&nbsp;&nbsp;</a></li>
          </ul>
      </div>
  </div>
  <div class="top2"></div>


  <div class="total">
      <img class="img1" src="img_search/1.jpg" title="星月国旅程等你">
      <div class="top4">
        <div class="top4-1-1">
          <label class="text1">目的地</label>
          <div  class="select">
              <select id="tabs" class="select1" style="width: 30%" name="tabs">
                  <option class="active" value="1">日本</option>
                  <option value="2">冰岛</option>
                  <option value="3">印度</option>
              </select>
          </div>
        </div>
      </div>
      
          <div class="top4-2-1">
              <label class="text1">时间</label>
              <div class="input">
                  <input class="input0" type="date" name="user_date">
              </div>
          </div>
          <button  class="btn0" onclick="showlist()">查&nbsp&nbsp找</button>
      </div>
  </div>

  <div class="design">
      <p class="texta">..................................................................
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp让我带你
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          环游世界&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp..................................................................</p>
      <img class="music" src="img_search/music.png">
  </div>

<div class="top5">
    <div class="top5-test1"></div>
    <div class="top5-1">
     <div class="wrap1">
      <ul class="list">
          <li class="item active">
              <img class="s1" src="img_search/s1.jpg"></li>
          <li class="item">
              <img class="s2" src="img_search/s2.jpg"></li>
          <li class="item">
              <img class="s3" src="img_search/s3.jpg"></li>
      </ul>
      <img class="btn" src="img_search/jt_left.png" id="goPre">
      <img class="btn" src="img_search/jt_right.png" id="goNext">
     </div>
        <div class="top5-1-1" ><p class="text1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp撒哈拉沙漠，骆驼，夕阳，还有你</p></div>
    </div>
  <script type="text/javascript">
      var items=document.getElementsByClassName('item');//图片
      var goPrebtn=document.getElementById('goPre');
      var goNextbtn=document.getElementById('goNext');
      var index=0;//表示第几张图片在展示
      var time=0;

      var clearActive=function () {
          for(var i=0;i<items.length;i++){
              items[i].className='item';
          }
      }
      var goIndex=function () {
          clearActive();
          items[index].className='item active';
      }
      var goNext=function () {
          if (index < 2) {
              index++;
          } else {
              index = 0;
          }
          goIndex();
      }
      var goPre=function () {
          if(index==0){
              index=2;
          }else{
              index--;
          }
          goIndex();
      }

      goNextbtn.addEventListener('click',function () {
          goNext();
      })
      goPrebtn.addEventListener('click',function () {
          goPre();
      })
      setInterval(function () {
          time++;
          if(time==20){
              goNext();
              time=0;
          }
      },100)
  </script>
    <div class="top5-test2"></div>
    <div class="top5-2">
     <div class="wrap2">
      <ul class="list2">
          <li class="item2 active">
              <img class="r1" src="img_search/r1.jpg"></li>
          <li class="item2">
              <img class="r2" src="img_search/r2.jpg"></li>
          <li class="item2">
              <img class="r3" src="img_search/r3.jpg"></li>
      </ul>
      <img class="btn2" src="img_search/jt_left.png" id="goPre2">
      <img class="btn2" src="img_search/jt_right.png" id="goNext2">
     </div>
        <div class="top5-2-1"><p class="text3">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp夏日，最浪漫不过东京的邂逅</p></div>
   </div>
  <script type="text/javascript">
      var items2=document.getElementsByClassName('item2');//图片
      var goPrebtn2=document.getElementById('goPre2');
      var goNextbtn2=document.getElementById('goNext2');
      var index2=0;//表示第几张图片在展示
      var time2=0;

      var clearActive2=function () {
          for(var i=0;i<items2.length;i++){
              items2[i].className='item2';
          }
      }
      var goIndex2=function () {
          clearActive2();
          items2[index2].className='item2 active';
      }
      var goNext2=function () {
          if (index2 < 2) {
              index2++;
          } else {
              index2 = 0;
          }
          goIndex2();
      }
      var goPre2=function () {
          if(index2==0){
              index2=2;
          }else{
              index2--;
          }
          goIndex2();
      }

      goNextbtn2.addEventListener('click',function () {
          goNext2();
      })
      goPrebtn2.addEventListener('click',function () {
          goPre2();
      })
      setInterval(function () {
          time2++;
          if(time2==20){
              goNext2();
              time2=0;
          }
      },100)
  </script>
    <div class="top5-test3"></div>
    <div class="top5-3">
     <div class="wrap3">
      <ul class="list3">
          <li class="item3 active">
              <img class="x1" src="img_search/x1.jpg"></li>
          <li class="item3">
              <img class="x2" src="img_search/x2.jpg"></li>
          <li class="item3">
              <img class="x3" src="img_search/x3.jpg"></li>
      </ul>
      <img class="btn3" src="img_search/jt_left.png" id="goPre3">
      <img class="btn3" src="img_search/jt_right.png" id="goNext3">
    </div>
        <div class="top5-3-1"><p class="text3">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp这是一首来自西班牙的赞歌</p></div>
    </div>
  <script type="text/javascript">
      var items3=document.getElementsByClassName('item3');//图片
      var goPrebtn3=document.getElementById('goPre3');
      var goNextbtn3=document.getElementById('goNext3');
      var index3=0;//表示第几张图片在展示
      var time3=0;

      var clearActive3=function () {
          for(var i=0;i<items3.length;i++){
              items3[i].className='item3';
          }
      }
      var goIndex3=function () {
          clearActive3();
          items3[index3].className='item3 active';
      }
      var goNext3=function () {
          if (index3 < 2) {
              index3++;
          } else {
              index3 = 0;
          }
          goIndex3();
      }
      var goPre3=function () {
          if(index3==0){
              index3=2;
          }else{
              index3--;
          }
          goIndex3();
      }

      goNextbtn3.addEventListener('click',function () {
          goNext3();
      })
      goPrebtn3.addEventListener('click',function () {
          goPre3();
      })
      setInterval(function () {
          time3++;
          if(time3==20){
              goNext3();
              time3=0;
          }
      },100)
  </script>
    <div class="top5-test4"></div>
  </div>
  <div class="abc">
      <div class="abc2"></div>
      <div class="a">
          <a style="text-decoration: none" href="#top6-1" class="atext">东京樱花</a>
      </div>
      <div class="atest"></div> 
      <div class="b">
          <a style="text-decoration: none" href="#top7-1" class="btext">冰岛探险</a>
      </div>
      <div class="btest"></div>
      <div class="c">
          <a style="text-decoration: none" href="#top8-1" class="ctext">印度咖喱</a>
      </div>
  </div>

  <div class="toplist" id="lists">
  <div class="top6" >
      <div id="top6-1">
          <img class="img1" src="img_search/string.png">
          <img class="img2" src="img_search/location.png">
          <p class="text1">日本</p>
      </div>
      <span class="top6-2">
          <img class="img1" src="img_search/rr1.jpg">
          <img class="img2" src="img_search/calendar.png">
          <p class="text1">东京樱花季</p>
          <button class="btn1">6.01启程</button>
          <button class="btn2">跟团游</button>
          <button class="btn3">名额空余</button>
          <p class="text2">济南出发</p>
          <p class="text3">【感受樱花文化魅力】这是一场粉红色的旅行，从京都到奈良，你准备好了吗？</p>
          <img class="img3" src="img_search/syh.png">
          <img class="img4" src="img_search/xyh.png">
          <p class="text4">赏樱日本胜于唐，如被牡丹兼海棠。恐是赵昌所难画，春风才起雪吹香。</p>
          <p class="text5">————&nbsp&nbsp《樱花》&nbsp&nbsp明：宋濂</p>
          <a style="text-decoration: none" href="#" class="text6">查看详情</a>
          <img class="img5" src="img_search/down.png">
          <p class="text7">￥ 6000 - 8800</p>
      </span>
      <span class="top6-3">
          <img class="img1" src="img_search/rr2.jpg">
          <img class="img2" src="img_search/calendar.png">
          <p class="text1">日式美食节</p>
          <button class="btn1">7.01启程</button>
          <button class="btn2">三天两夜</button>
          <button class="btn3">美食向导</button>
          <p class="text2">济南出发</p>
          <p class="text3">【美食的力量】你所期待的日式美食，这次让你吃个够！</p>
          <img class="img3" src="img_search/syh.png">
          <img class="img4" src="img_search/xyh.png">
          <p class="text4">总有一天，你的心上人会头顶寿司，手拿章鱼烧</p>
          <p class="text5">端着寿喜锅和生鱼片找到你，你要等</p>
          <a style="text-decoration: none" href="#" class="text6">查看详情</a>
          <img class="img5" src="img_search/down.png">
          <p class="text7">￥ 8000 - 9000</p>
      </span>
  </div>


  <div class="top7">
      <div id="top7-1">
          <img class="img1" src="img_search/string.png">
          <img class="img2" src="img_search/location.png">
          <p class="text1">冰岛</p>
      </div>
      <span class="top7-2">
          <img class="img1" src="img_search/bb1.jpg">
          <img class="img2" src="img_search/calendar.png">
          <p class="text1">冰岛探险</p>
          <button class="btn1">8.01启程</button>
          <button class="btn2">避暑胜地</button>
          <button class="btn3">室外探险</button>
          <p class="text2">济南出发</p>
          <p class="text3">【大千冰岛】广袤的天与地、恢弘的山与海，冰岛是一部唱给大自然的赞美诗。</p>
          <img class="img3" src="img_search/syh.png">
          <img class="img4" src="img_search/xyh.png">
          <p class="text4">在纯粹晶莹的冰山上与心爱的人一同看极光，是我毕生的梦想</p>
          <p class="text5">一去四季，一眼万年</p>
          <a style="text-decoration: none" href="#" class="text6">查看详情</a>
          <img class="img5" src="img_search/down.png">
          <p class="text7">￥ 10000 - 12000</p>
      </span>
  </div>

  <div class="top8">
      <div id="top8-1">
          <img class="img1" src="img_search/string.png">
          <img class="img2" src="img_search/location.png">
          <p class="text1">印度</p>
      </div>
      <span class="top8-2 ">
          <img class="img1" src="img_search/yy1.jpg">
          <img class="img2" src="img_search/calendar.png">
          <p class="text1">泰姬陵</p>
          <button class="btn1">9.01启程</button>
          <button class="btn2">赠送机票</button>
          <button class="btn3">行程自由</button>
          <p class="text2">济南出发</p>
          <p class="text3">【古老历史】泰姬陵当之无愧是阿格拉乃至整个印度的骄傲，它值得一观。</p>
          <img class="img3" src="img_search/syh.png">
          <img class="img4" src="img_search/xyh.png">
          <p class="text4">听说，这里埋葬着一位皇后</p>
          <p class="text5">一同被埋葬的，还有她的荣耀和爱情。</p>
          <a style="text-decoration: none" href="#" class="text6">查看详情</a>
          <img class="img5" src="img_search/down.png">
          <p class="text7">￥ 6000 - 8000</p>
      </span>
      <span class="top8-3">
          <img class="img1" src="img_search/yy2.jpg">
          <img class="img2" src="img_search/calendar.png">
          <p class="text1">新德里</p>
          <button class="btn1">10.01启程</button>
          <button class="btn2">畅游印度</button>
          <button class="btn3">酒店自选</button>
          <p class="text2">济南出发</p>
          <p class="text3">【文明古国】从新德里到孟买，一路皆是印度风情</p>
          <img class="img3" src="img_search/syh.png">
          <img class="img4" src="img_search/xyh.png">
          <p class="text4">梵语诗歌、古老寺庙、潺潺恒河、还有咖喱和瑜伽</p>
          <p class="text5">这里让我流连忘返</p>
          <a style="text-decoration: none" href="#" class="text6">查看详情</a>
          <img class="img5" src="img_search/down.png">
          <p class="text7">￥ 6000 - 8000</p>
      </span>
  </div>
  </div>


  <div class="bottom" >
      <img class="img0" src="img/logo.png"/>
      <a  href="">关于我们&nbsp&nbsp&nbsp|</a>
      <p class="text1">&nbsp&nbsp&nbsp&nbsp加入我们&nbsp&nbsp&nbsp｜&nbsp&nbsp&nbsp联系我们&nbsp&nbsp&nbsp｜&nbsp&nbsp&nbsp关注我们：</p>
      <img class="img1" src="img/gs.jpg"/>
      <p class="text2">鲁&nbsp&nbsp&nbspICP备&nbsp&nbsp&nbsp07298633号<br>山东省工商局备</p>
      <img class="img2" src="img/weixin.png"/>
      <img class="img3" src="img/qq.png"/>
      <img class="img4" src="img/weibo.png"/>
      <p class="text3">济南麦兜旅行有限公司 &nbsp&nbsp国家旅游局经营许可<br>
          地址：济南市山东财经大学   &nbsp&nbsp联系电话：152-5412-9502（8:30-18:30）<br>
          2019 ©  No part of this site may be reproduced without our written permission.
      </p>
  </div>

</body>
</html>
