<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>小威的博客</title>
  <link rel="stylesheet" type="text/css" href="../static/res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="../static/res/css/main.css">
<!--加载meta IE兼容文件-->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>
<body>
  <div class="header">
    <div class="menu-btn">
      <div class="menu"></div>
    </div>
    <h1 class="logo">
      <a href="index.html">
        <span>MYBLOG</span>
        <img src="../static/res/img/logo.png">
      </a>
    </h1>
    <div class="nav">
      <a href="index.html" class="active">文章</a>
<!--      <a href="whisper.html">微语</a>-->
<!--      <a href="leacots.html">留言</a>-->
<!--      <a href="album.html">相册</a>-->
<!--      <a href="about.html">关于</a>-->
    </div>
    <ul class="layui-nav header-down-nav">
      <li class="layui-nav-item"><a href="index.html" class="active">文章</a></li>
<!--      <li class="layui-nav-item"><a href="whisper.html">微语</a></li>-->
<!--      <li class="layui-nav-item"><a href="leacots.html">留言</a></li>-->
<!--      <li class="layui-nav-item"><a href="album.html">相册</a></li>-->
<!--      <li class="layui-nav-item"><a href="about.html">关于</a></li>-->
    </ul>
    <p class="welcome-text">
      欢迎来到<span class="name">小威</span>的博客~
    </p>
  </div>

  <div class="banner">
    <div class="cont w1000">
      <div class="title">
        <h3>MY<br />BLOG</h3>
        <h4>well-balanced heart</h4>
      </div>
      <div class="amount">
        <p><span class="text">访问量</span><span class="access">{{.Views}}</span></p>
        <p><span class="text">日志</span><span class="daily-record">{{.Total}}</span></p>
      </div>
    </div>
  </div>

  <div class="content">
    <div class="cont w1000">
      <div class="title">
        <span class="layui-breadcrumb" lay-separator="|">
          <a href="javascript:;" class="active" onclick="select_text_type(this)">GO</a>
          <a href="javascript:;" onclick="select_text_type(this)">Python</a>
<!--          <a href="javascript:;">旅游杂记</a>-->
        </span>
      </div>
      <div class="list-item">

        <div class="item">
          <div class="layui-fluid">
            <div class="layui-row">
              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                <div class="img"><img src="../static/res/img/sy_img1.jpg" alt=""></div>
              </div>
              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                <div class="item-cont">
                  <h3>空间立体效果图，完美呈现最终效果<button class="layui-btn layui-btn-danger new-icon">new</button></h3>
                  <h5>设计文章</h5>
                  <p>室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境以所祈使的气氛，却早巳从人类文明伊始的时期就已存在</p>
                  <a href="details.html" class="go-icon"></a>
                </div>
            </div>
            </div>
           </div>
        </div>

<!--        <div class="item">-->
<!--          <div class="layui-fluid">-->
<!--            <div class="layui-row">-->
<!--              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">-->
<!--                <div class="img"><img src="../static/res/img/sy_img2.jpg" alt=""></div>-->
<!--              </div>-->
<!--              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">-->
<!--                <div class="item-cont">-->
<!--                  <h3>空间立体效果图，完美呈现最终效果<button class="layui-btn layui-btn-danger new-icon">new</button></h3>-->
<!--                  <h5>设计文章</h5>-->
<!--                  <p>室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境以所祈使的气氛，却早巳从人类文明伊始的时期就已存在</p>-->
<!--                  <a href="details.html" class="go-icon"></a>-->
<!--                </div>-->
<!--            </div>-->
<!--            </div>-->
<!--           </div>-->
<!--        </div>-->
<!--        <div class="item">-->
<!--          <div class="layui-fluid">-->
<!--            <div class="layui-row">-->
<!--              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">-->
<!--                <div class="img"><img src="../static/res/img/sy_img3.jpg" alt=""></div>-->
<!--              </div>-->
<!--              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">-->
<!--                <div class="item-cont">-->
<!--                  <h3>空间立体效果图，完美呈现最终效果<button class="layui-btn layui-btn-danger new-icon">new</button></h3>-->
<!--                  <h5>设计文章</h5>-->
<!--                  <p>室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境以所祈使的气氛，却早巳从人类文明伊始的时期就已存在</p>-->
<!--                  <a href="details.html" class="go-icon"></a>-->
<!--                </div>-->
<!--            </div>-->
<!--            </div>-->
<!--           </div>-->
<!--        </div>-->
<!--        <div class="item">-->
<!--          <div class="layui-fluid">-->
<!--            <div class="layui-row">-->
<!--              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">-->
<!--                <div class="img"><img src="../static/res/img/sy_img4.jpg" alt=""></div>-->
<!--              </div>-->
<!--              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">-->
<!--                <div class="item-cont">-->
<!--                  <h3>空间立体效果图，完美呈现最终效果<button class="layui-btn layui-btn-danger new-icon">new</button></h3>-->
<!--                  <h5>设计文章</h5>-->
<!--                  <p>室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境以所祈使的气氛，却早巳从人类文明伊始的时期就已存在</p>-->
<!--                  <a href="details.html" class="go-icon"></a>-->
<!--                </div>-->
<!--            </div>-->
<!--            </div>-->
<!--           </div>-->
<!--        </div>-->
<!--        <div class="item">-->
<!--          <div class="layui-fluid">-->
<!--            <div class="layui-row">-->
<!--              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">-->
<!--                <div class="img"><img src="../static/res/img/sy_img5.jpg" alt=""></div>-->
<!--              </div>-->
<!--              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">-->
<!--                <div class="item-cont">-->
<!--                  <h3>空间立体效果图，完美呈现最终效果<button class="layui-btn layui-btn-danger new-icon">new</button></h3>-->
<!--                  <h5>设计文章</h5>-->
<!--                  <p>室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境以所祈使的气氛，却早巳从人类文明伊始的时期就已存在</p>-->
<!--                  <a href="details.html" class="go-icon"></a>-->
<!--                </div>-->
<!--            </div>-->
<!--            </div>-->
<!--           </div>-->
<!--        </div>-->
      </div>
      <div id="demo" style="text-align: center;"></div>
    </div>
  </div>

  <div class="footer-wrap">
    <div class="footer w1000">
      <div class="qrcode">
        <img >
      </div>
      <div class="practice-mode">
        <img src="../static/res/img/down_img.jpg">
        <div class="text">
          <h4 class="title">我的联系方式</h4>
<!--          <p>微信<span class="WeChat">18144894328</span></p>-->
          <p>手机<span class="iphone">18144894328</span></p>
          <p>邮箱<span class="email">amazingwei@sina.com</span></p>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="../static/res/layui/layui.js"></script>
  <script type="text/javascript">
      function get_text(page, per_page, text_type){
            $.ajax({
                url:"/detail",
                data:JSON.stringify({page:page,perpage:per_page,type:text_type}),
                type:"POST",
                contentType: "application/json; charset=utf-8",
                dataType:"json",
                success:function(data){
                  console.log(data);
                  $(".list-item").html("")
                  for (var i in data["Msg"]){

                    var img_str = ""
                    if (data["Msg"][i]["type"] == "GO"){
                        img_str = '<div class="img"><img src="../static/res/img/goland.jpg" alt=""></div>'
                    }else{
                        img_str = '<div class="img"><img src="../static/res/img/python.jpg" alt=""></div>'
                    }
                    $(".list-item").append(
                        '<div class="item">'
                           + '<div class="layui-fluid">'
                             + '<div class="layui-row">'
                               + '<div class="layui-col-xs12 layui-col-sm4 layui-col-md5">'
                                 + img_str
                               + '</div>'
                               + '<div class="layui-col-xs12 layui-col-sm8 layui-col-md7">'
                                 + '<div class="item-cont">'
                                   + '<h3>'+ data["Msg"][i]["title"] +'</h3>'
                                   + '<h5>'+ data["Msg"][i]["type"] +'</h5>'
                                   + '过来看看?'
                                   <!--+ '<a href="details.html" class="go-icon"></a>'-->
                                   + '<a href="detail?id='+ data["Msg"][i]["id"] +'" class="go-icon"></a>'
                                 + '</div>'
                             + '</div>'
                             + '</div>'
                            + '</div>'
                         + '</div>'
                    )
                  }
                },
                error:function(data){
                    console.log(data)
                }
            });

            }
      function select_text_type(th){
        $(th).siblings().removeClass("active")
        $(th).addClass("active")
            layui.config({
                  base: '../static/res/js/util/'
                }).use(['element','laypage','jquery','menu'],function(){
                  element = layui.element,laypage = layui.laypage,$ = layui.$,menu = layui.menu;

                  var text_type = $(".layui-breadcrumb").find(".active").text()
                  if (text_type == "GO"){
                      laypage.render({
                              elem: 'demo',
                             limit: 10
                              ,count: {{.TotalGo}}, //数据总数，从服务端得到
                              jump: function(obj){
                              get_text(obj.curr, obj.limit, text_type)
                             }
                            });
                  }else{
                     laypage.render({
                                   elem: 'demo',
                                   limit: 10
                                   ,count: {{.TotalPython}}, //数据总数，从服务端得到
                                   jump: function(obj){
                                    get_text(obj.curr, obj.limit, text_type)
                                   }
                     });
                  }

                  menu.init();

                })
      }
    layui.config({
      base: '../static/res/js/util/'
    }).use(['element','laypage','jquery','menu'],function(){
      element = layui.element,laypage = layui.laypage,$ = layui.$,menu = layui.menu;

      var text_type = $(".layui-breadcrumb").find(".active").text()
      if (text_type == "GO"){
          laypage.render({
                  elem: 'demo',
                   limit: 10
                    ,count: {{.TotalGo}}, //数据总数，从服务端得到
                    jump: function(obj){
                    get_text(obj.curr, obj.limit, text_type)
                   }
                });
      }else{
         laypage.render({
                       elem: 'demo',
                      limit: 10
                      ,count: {{.TotalPython}}, //数据总数，从服务端得到
                      jump: function(obj){
                       get_text(obj.curr, obj.limit, text_type)
                      }
                     });
      }

      menu.init();

    })

  </script>
</body>
</html>