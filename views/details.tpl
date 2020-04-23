<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>小威的博客</title>
  <link rel="stylesheet" type="text/css" href="../static/res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="../static/res/css/main.css">
  <style>
          { font-family: "SF UI Display", ".PingFang SC","PingFang SC", "Neue Haas Grotesk Text Pro", "Arial Nova", "Segoe UI", "Microsoft YaHei", "Microsoft JhengHei", "Helvetica Neue", "Source Han Sans SC", "Noto Sans CJK SC", "Source Han Sans CN", "Noto Sans SC", "Source Han Sans TC", "Noto Sans CJK TC", "Hiragino Sans GB", sans-serif;
        font-size: 16px;
        color:#222
        -webkit-text-size-adjust:none;  min-width: 200px;
        max-width: 760px;
        margin: 0 auto; padding: 1rem;
        line-height: 1.5rem;

      }
      h1,h2,h3,h4,h5,h6{font-family: "PT Sans","SF UI Display", ".PingFang SC","PingFang SC", "Neue Haas Grotesk Text Pro", "Arial Nova", "Segoe UI", "Microsoft YaHei", "Microsoft JhengHei", "Helvetica Neue", "Source Han Sans SC", "Noto Sans CJK SC", "Source Han Sans CN", "Noto Sans SC", "Source Han Sans TC", "Noto Sans CJK TC", "Hiragino Sans GB", sans-serif;
      text-rendering:optimizelegibility;margin-bottom:1em;font-weight:bold; line-height: 1.8rem;

      }
      h1,h2{position:relative;padding-top:1rem;padding-bottom:0.2rem;margin-bottom:1rem;background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAABCAYAAACsXeyTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAFUlEQVQIHWNIS0sr/v//PwMMDzY+ADqMahlW4J91AAAAAElFTkSuQmCC') bottom left repeat-x;}
      h2{padding-top:0.8rem;padding-bottom:0.2rem;}
      h1{ font-size: 1.6rem;}
      h2{ font-size: 1.4rem;}
      h3{ font-size: 1.2rem;}
      h4{ font-size: 1.1rem;}
      h5{ font-size: 1.0rem;}
      h6{ font-size: 0.9rem;}

      table{border-collapse:collapse;border-spacing:0;
        margin-top: 0.8rem;
        margin-bottom: 1.4rem;
      }
      tr{  background-color: #fff;
        border-top: 1px solid #ccc;}
      th,td{padding: 5px 14px;
        border: 1px solid #ddd;}

      blockquote{font-style:italic;font-size:1.1em;line-height:1.5em;padding-left:1em; border-left:4px solid #D5D5D5;    margin-left: 0;
          margin-right: 0;
          margin-bottom: 1.5rem; }

      a{color:#1863a1}

      pre,code,p code,li code{font-family:Menlo,Monaco,"Andale Mono","lucida console","Courier New",monospace}

      pre{-webkit-border-radius:0.4em;-moz-border-radius:0.4em;-ms-border-radius:0.4em;-o-border-radius:0.4em;border-radius:0.4em;border:1px solid #e7dec3;line-height:1.45em;font-size:0.9rem;margin-bottom:2.1em;padding:.8em 1em;color:#586e75;overflow:auto; background-color:#fdf6e3;}

      p code,li code{display:inline-block;white-space:no-wrap;background:#fff;font-size:0.9rem;line-height:1.5em;color:#555;border:1px solid #ddd;-webkit-border-radius:0.4em;-moz-border-radius:0.4em;-ms-border-radius:0.4em;-o-border-radius:0.4em;border-radius:0.4em;padding:0 .3em;margin:-1px 4px;}
      p pre code,li pre code{font-size:1em !important;background:none;border:none}

      img{max-width:100%;-webkit-border-radius:0.3em;-moz-border-radius:0.3em;-ms-border-radius:0.3em;-o-border-radius:0.3em;border-radius:0.3em;-webkit-box-shadow:rgba(0,0,0,0.15) 0 1px 4px;-moz-box-shadow:rgba(0,0,0,0.15) 0 1px 4px;box-shadow:rgba(0,0,0,0.15) 0 1px 4px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;border:#fff 0.5em solid}


      hr {
        height: 0;
        margin: 15px 0;
        overflow: hidden;
        background: transparent;
        border: 0;
        border-bottom: 1px solid #ddd;
      }


      /*

      Orginal Style from ethanschoonover.com/solarized (c) Jeremy Hull <sourdrums@gmail.com>

      */

      .hljs {
        display: block;
        overflow-x: auto;
        padding: 0.5em;
        background: #fdf6e3;
        color: #657b83;
        -webkit-text-size-adjust: none;
      }

      .hljs-comment,
      .diff .hljs-header,
      .hljs-doctype,
      .hljs-pi,
      .lisp .hljs-string {
        color: #93a1a1;
      }

      /* Solarized Green */
      .hljs-keyword,
      .hljs-winutils,
      .method,
      .hljs-addition,
      .css .hljs-tag,
      .hljs-request,
      .hljs-status,
      .nginx .hljs-title {
        color: #859900;
      }

      /* Solarized Cyan */
      .hljs-number,
      .hljs-command,
      .hljs-string,
      .hljs-tag .hljs-value,
      .hljs-rule .hljs-value,
      .hljs-doctag,
      .tex .hljs-formula,
      .hljs-regexp,
      .hljs-hexcolor,
      .hljs-link_url {
        color: #2aa198;
      }

      /* Solarized Blue */
      .hljs-title,
      .hljs-localvars,
      .hljs-chunk,
      .hljs-decorator,
      .hljs-built_in,
      .hljs-identifier,
      .vhdl .hljs-literal,
      .hljs-id,
      .css .hljs-function,
      .hljs-name {
        color: #268bd2;
      }

      /* Solarized Yellow */
      .hljs-attribute,
      .hljs-variable,
      .lisp .hljs-body,
      .smalltalk .hljs-number,
      .hljs-constant,
      .hljs-class .hljs-title,
      .hljs-parent,
      .hljs-type,
      .hljs-link_reference {
        color: #b58900;
      }

      /* Solarized Orange */
      .hljs-preprocessor,
      .hljs-preprocessor .hljs-keyword,
      .hljs-pragma,
      .hljs-shebang,
      .hljs-symbol,
      .hljs-symbol .hljs-string,
      .diff .hljs-change,
      .hljs-special,
      .hljs-attr_selector,
      .hljs-subst,
      .hljs-cdata,
      .css .hljs-pseudo,
      .hljs-header {
        color: #cb4b16;
      }

      /* Solarized Red */
      .hljs-deletion,
      .hljs-important {
        color: #dc322f;
      }

      /* Solarized Violet */
      .hljs-link_label {
        color: #6c71c4;
      }

      .tex .hljs-formula {
        background: #eee8d5;
      }
          </style>
          <style>
          #area>table {
              width: 100%;
              table-layout: fixed;
          }

          #area table tr td {
              margin: 0;
              padding: 6px;
              border: 0;

          }

          #md-area {

              width: 100%;
              height: 600px;
              font-size: 18px;
              overflow: hidden;
              font-weight: bold;
              outline: none;
          }

          #show-area {
              height: 600px;
              background-color: #FCF6E5;
          }

          .clearfix:before {
              content: "";
              display: table;
          }
      </style>
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
      <a href="index.html">文章</a>
    </div>
    <ul class="layui-nav header-down-nav">
      <li class="layui-nav-item"><a href="index.html" class="active">文章</a></li>
    </ul>
    <p class="welcome-text">
      欢迎来到<span class="name">小威</span>的博客~
    </p>
  </div>


  <div class="content whisper-content leacots-content details-content">
    <div class="cont w1000">
      <div class="whisper-list">
        <div class="item-box">
          <div class="review-version">
              <div class="form-box">
                <div class="article-cont">
                  <div class="title">
                    <h3>{{.Title}}</h3>
                    <p class="cont-info"><span class="data">{{.Time}}</span><span class="types">{{.Type}}</span></p>
                  </div>
                  <!--
                  <p>爷每天5点起床，去鸡行里选鸡，选的是大小均匀的老母鸡，送到家里从杀鸡放血开始，鸡血要留着，倒在有盐水的碗里，烧好开水拔了毛连鸡嘴巴鼻子里的粘液都要挤出来。鸡洗干净六只鸡放到一个锅里炖，要炖一个上午，要注意火候鸡皮不能裂。</p>
                                    <img src="../static/res/img/wz_img1.jpg">
                                    <p>炖好的鸡挂在架子上晾干，再一片片剁开，每只鸡剁的块数都是一样，然后把鸡肉放到提前调好的水中腌两个小时，水里面的调料也是爷爷自己去市场买来磨成粉的。锅里还有剩的鸡汤，用鸡汤煮好面叶上面漂着一层绿油油的葱花。</p>
                                    <p>以前爷爷都是用扁担一头面叶一头板鸡挑到街上摊位上卖，现在爷爷年纪大了，只能用三轮车推着。摊位摆好奶奶就会慢悠悠的拎着一个保温桶和一个小红桶过来，保温桶里装的是卤鸡蛋，小红桶留着装别人吃剩的骨头喂狗。他们只有晚上出摊，收完摊已经要9点钟了，回去还要洗一天用的抹布和衣服，爷爷奶奶都非常爱干净，摊上的所有抹布纱布都是白色的每天洗的一个油点都看不到。9年前奶奶去世了，爷爷奶奶青梅竹马感情非常好，奶奶去世的时候爷爷甚至还要求过把奶奶埋在院子里。现在爷爷有时候会偷偷跟我说，你奶奶昨天回来看我了，她还给我掖被子，我知道是她，我跟她说你别挂念我，我好的很 跑题了。</p>
                                    <p>昨天我给爷爷打电话，他跟我说他卖板鸡有人给他拍照，他问别人你拍我干嘛，那个人回答他说我给你照片放到网上，你生意会更好，我爷爷说你不用放网上我都不够卖的。</p>
                  -->
                  <div id="show-area" class="clearfix"></div>
                  <!--<p>{{.Detail}}</p>-->
                  <div class="btn-box" style="padding-bottom:50px">
                    <button class="layui-btn layui-btn-primary" onclick="jump('up')">上一篇</button>
                    <button class="layui-btn layui-btn-primary" onclick="jump('down')">下一篇</button>
                  </div>
                </div>
                <!--
                <div class="form">
                  <form class="layui-form" action="">
                    <div class="layui-form-item layui-form-text">
                      <div class="layui-input-block">
                        <textarea name="desc" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
                      </div>
                    </div>
                    <div class="layui-form-item">
                      <div class="layui-input-block" style="text-align: right;">
                        <button class="layui-btn definite">確定</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>

              <div class="volume">
                全部留言 <span>10</span>
              </div>
              <div class="list-cont">
                
                <div class="cont">
                  <div class="img">
                    <img src="../static/res/img/header.png" alt="">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                    <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                  </div>
                </div>
                <div class="cont">
                  <div class="img">
                    <img src="../static/res/img/header.png" alt="">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                    <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                  </div>
                </div>
                <div class="cont">
                  <div class="img">
                    <img src="../static/res/img/header.png" alt="">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                    <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                  </div>
                </div>
                <div class="cont">
                  <div class="img">
                    <img src="../static/res/img/header.png" alt="">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                    <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                  </div>
                </div>
                <div class="cont">
                  <div class="img">
                    <img src="../static/res/img/header.png" alt="">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                    <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                  </div>
                </div>
              </div>

          </div>
        </div>
      </div>
      <div id="demo" style="text-align: center;"></div>
      -->
    </div>
  </div>
  <script type="text/html" id="laytplCont">
    <div class="cont">
      <div class="img">
      </div>
      <div class="text">
        <p class="tit"><span class="name">{{.name}}</span><span class="data">2018/06/06</span></p>
        <p class="ct">{{.cont}}</p>
      </div>
    </div>
  </script>
  <div class="footer-wrap">
    <div class="footer w1000">
      <div class="qrcode">
        <img>
      </div>
      <div class="practice-mode">
        <img src="../static/res/img/down_img.jpg">
        <div class="text">
          <h4 class="title">我的联系方式</h4>
          <p>微信<span class="WeChat">18144894328</span></p>
          <p>手机<span class="iphone">18144894328</span></p>
          <p>邮箱<span class="email">amazingwei@163.com</span></p>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="../static/res/layui/layui.js"></script>
  <script src="../static/shutdown/dist/showdown.min.js"></script>
  <script src="../static/js/jquery-2.1.4.js"></script>
  <script src="../static/js/jquery-1.11.0.min.js"></script>
  <script type="text/javascript">
    var id_list = {{.Sort}}
    var text_id = {{.Id}}

    function jump(data){

        if (text_id.length == 1){
            alert("没有别的文章了")
            return
        }
        if (data == "up"){
            <!--上一篇-->
            for (var i=0;i<id_list.length;i++){
                if (id_list[i]["id"] == text_id && i == 0){
                    alert("没有上一篇了")
                    return
                }
                if (id_list[i]["id"] == text_id){
                    window.location.href = "detail?id="+String(id_list[i-1]["id"])
                }
            }
        }else{
            <!--下一篇-->
            for (var i=0;i<id_list.length;i++){
                if (id_list[i]["id"] == text_id && i == id_list.length-1){
                    alert("没有下一篇了")
                    return
                }
                if (id_list[i]["id"] == text_id){
                    window.location.href = "detail?id="+String(id_list[i+1]["id"])
                }
            }
        }
    }

    var mdValue = {{.Detail}};  <!--页面返回的详情-->
    var converter = new showdown.Converter();
    var html = converter.makeHtml(mdValue);
    document.getElementById("show-area").innerHTML = html;
    layui.config({
      base: '../static/res/js/util/'
    }).use(['element','laypage','form','menu'],function(){
      element = layui.element,laypage = layui.laypage,form = layui.form,menu = layui.menu;
      laypage.render({
        elem: 'demo'
        ,count: 70 //数据总数，从服务端得到
      });
      menu.init();
      menu.submit();
    })
  </script>
</body>
</html>