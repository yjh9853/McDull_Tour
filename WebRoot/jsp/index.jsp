<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/index.css">

  </head>
  
  <body style="background-color: #f5f5f5">
    <div class="top">
        <img class="img" src="img/logo.png">
        <p class="text">请联系我们：15254129502&nbsp;&nbsp;&nbsp;&nbsp;9:30-18:30</p>
    </div>
    <div id="nov">
        <div id="menu">
            <ul>
                <li><a href="#">首页</a>
                <li><a href="#">旅行</a>
                    <ul>
                        <li><a href="#">国际旅行</a></li>
                        <li><a href="#">长途旅行</a></li>
                        <li><a href="#">周末旅行</a></li>
                        <li><a href="#">短期旅行</a></li>
                        <li><a href="#">微旅行</a></li>
                    </ul>
                <li><a href="#">我们</a></li>
                    <ul>
                        <li><a href="#">我们的故事</a></li>
                        <li><a href="#">我们的精神</a></li>
                        <li><a href="#">我们的旅行</a></li>
                        <li><a href="#">我们的人</a></li>
                        <li><a href="#">加入我们</a></li>
                        <li><a href="#">联系我们</a></li>
                    </ul>
                <li><a href="#">记录</a></li>
                    <ul>
                        <li><a href="#">周边小景</a></li>
                        <li><a href="#">临时有感</a></li>
                        <li><a href="#">幸福瞬间</a></li>
                        <li><a href="#">美景抓拍</a></li>
                        <li><a href="#">游记</a></li>
                    </ul>
            </ul>
            <ul>
                <li><a class="right" href="#">推荐有礼</a></li>
                <li><a class="right" href="#">我的订单</a></li>
                <li><a class="right" href="#">退出&nbsp;&nbsp;&nbsp;</a></li>
            </ul>
            
        </div>
    </div>
        <div class="wrap">
            <ul class="list">
                <li class="item active">
                    <img class="b1" src="img/b1.jpg"></li>
                <li class="item">
                    <img class="b2" src="img/b2.jpg"></li>
                <li class="item">
                    <img class="b3" src="img/b3.jpg"></li>
                <li class="item">
                    <img class="b4" src="img/b4.jpg"></li>
                <li class="item">
                    <img class="b5" src="img/b5.jpg"></li>
            </ul>
            <ul class="pointlist">
                <li class="point active" data-index='0'></li>
                <li class="point"data-index='1'></li>
                <li class="point"data-index='2'></li>
                <li class="point"data-index='3'></li>
                <li class="point"data-index='4'></li>
            </ul>
            <img class="btn" src="img/jt-left.png" id="goPre">
            <img class="btn" src="img/jt-right.png" id="goNext">
       </div>

        <script type="text/javascript">
            var items=document.getElementsByClassName('item');//图片
            var points=document.getElementsByClassName('point');//点
            var goPrebtn=document.getElementById('goPre');
            var goNextbtn=document.getElementById('goNext');
            var time=0;//定时器图片跳转
            var index=0;//index表示第几张图片在展示//第几个点在展示

            var clearActive=function () {
                for(var i=0;i<items.length;i++){
                    items[i].className='item';
                }
                for(var i=0;i<points.length;i++){
                    points[i].className='point';
                }
            }
            var goIndex=function () {
                clearActive();
                console.log(index)
                points[index].className='point active';
                items[index].className='item active';
            }
            var goNext=function () {
                if(index<4){
                    index++;
                }else{
                    index=0;
                }
                goIndex();
            }

            var goPre=function () {
                if(index==0){
                    index=4;
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
            for(var i=0;i<points.length;i++){
                points[i].addEventListener('click',function () {
                    var pointIndex=this.getAttribute('data-index');
                    index=pointIndex;
                    goIndex();
                    time=0;
                })
            }
            //2000ms跳转一次
            setInterval(function () {
                time++;
                if(time==20){
                    goNext();
                    time=0;
                }
            },100)
        </script>
       <div id="b">
        <p class="texta">..................................................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我来到你的城市，让你并不孤独
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;..................................................</p>
        <p class="textb">完善的信用体系和安全保障，精彩的旅游指南和出行推荐<br><br>
            给您精彩、安全、美好的团游体验</p>
        <div class="total">
            <div class="l1"></div><img class="img1" src="img/shenfen.png"/></div>
        <p class="text1">身份核实验证</p>
        <img class="img2" src="img/anquan.png"/>
        <p class="text2">出行安全保障</p>
        <img class="img3" src="img/fuwu.png"/>
        <p class="text3">优质放心服务</p>
        <img class="img4" src="img/dianping.png"/>
        <p class="text4">真实点评信用</p>
       </div>
        <div style="height: 550px">
            <p align="center">
            <video controls="controls" autoplay="autoplay" loop="loop" height="500">
                <source src="travel.mp4" type="video/mp4">
            </video>
        </p>
        </div>

        <div class="c">
            <div class="c1">
                <ul>
                    <li>
                        <div class="left"><img class="img1" src="img2/1.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom"><img src="img/jt-left.png" >
                        <p class="text1">【全新路线】这个夏天，来雪山畅享清凉！</p><br><p class="text2">梦幻王国</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
                <div style="height:30px;"></div>
                <ul>
                    <li>
                        <div class="left3"><img class="img3" src="img2/3.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom3"><img src="img/jt-left.png" >
                            <p class="text5">【文艺路线】乌镇——这是一场与梦的邂逅</p><br><p class="text6">浪漫乌镇</p>
                            <a style="text-decoration:none;" href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
                <div style="height:30px;"></div>
                <ul>
                    <li>
                        <div class="left5"><img class="img5" src="img2/5.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom5"><img src="img/jt-left.png" >
                            <p class="text9">【寻找美食】一次难忘的旅行，一场味觉的盛宴</p><br><p class="text10">潮汕肥牛</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
                <div style="height:30px;"></div>
                <ul>
                    <li>
                        <div class="left7"><img class="img7" src="img2/7.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom7"><img src="img/jt-left.png" >
                            <p class="text13">【畅玩法国】横跨塞纳河的最佳旅行地点，你的假期，交给我！</p><br><p class="text14">优美巴黎</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="c2">
                <ul>
                    <li>
                        <div class="left2"><img class="img2" src="img2/2.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom2"><img src="img/jt-left.png" >
                            <p class="text3">【毕业旅行】壮美云南石林——我准备好了，你们呢？</p><br><p class="text4">石林探险</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
                <div style="height:30px;"></div>
                <ul>
                    <li>
                        <div class="left4"><img class="img4" src="img2/4.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom4"><img src="img/jt-left.png" >
                            <p class="text7">【文艺路线】乌镇——这是一场与梦的邂逅</p><br><p class="text8">浪漫乌镇</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
                <div style="height:30px;"></div>
                <ul>
                    <li>
                        <div class="left6"><img class="img6" src="img2/6.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom6"><img src="img/jt-left.png" >
                            <p class="text11">【飞驰人生】惊险，刺激，你想要的户外项目都在这里！</p><br><p class="text12">西北酷玩</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
                <div style="height:30px;"></div>
                <ul>
                    <li>
                        <div class="left8"><img class="img8" src="img2/8.jpg"><img class="img0" src="img2/biaoqian.png"> </div>
                        <div class="left_bottom8"><img src="img/jt-left.png" >
                            <p class="text15">【国内路线】古典与流行，传奇与复兴</p><br><p class="text16">上海外滩</p>
                            <a style="text-decoration:none;"href="http://localhost:8080/travel/jsp/search.jsp" class="text0">>点击查看更多旅行</a>
                        </div>
                    </li>
                </ul>
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
         <p class="text3">济南麦兜旅行有限公司 &nbsp;&nbsp;国家旅游局经营许可<br>
             地址：济南市山东财经大学   &nbsp&nbsp联系电话：152-5412-9502（8:30-18:30）<br>
             2019 ©  No part of this site may be reproduced without our written permission.
         </p>
       </div>


</body>
</html>
