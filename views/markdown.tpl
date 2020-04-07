<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>来一篇blog吧</title>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/1.9.0/showdown.min.js"></script>-->
	<!--https://www.jianshu.com/p/a57114bd9380  markdown使用地址-->
	<script src="../static/shutdown/dist/showdown.min.js"></script>
	<script src="../static/js/jquery-2.1.4.js"></script>
	<script src="../static/js/jquery-1.11.0.min.js"></script>
	<script>
            function mdSwitch() {
                <!--markdown语法转换为前端html显示-->
                var mdValue = $("#md-area").val();  <!--获取文本-->
                var converter = new showdown.Converter();
                var html = converter.makeHtml(mdValue);
                document.getElementById("show-area").innerHTML = html;
            }

            function sub(){
            var mdValue = $("#md-area").val();  <!--获取文本-->
                $.ajax({
                    url: '/markdown',
                    type: "POST",
                    contentType: 'application/json; charset=UTF-8',
                    dataType: 'json',
                    data: JSON.stringify({
                        type: $("#select").val(),
                        title: $("#title").val(),
                        detail: mdValue,
                        name: $("#username").val(),
                        pwd: $("#pwd").val()
                    }),
                    success: function(res){
                        console.log(res)
                        alert(res.Msg)
                        if (res.Code == '0'){
                            window.location.href= '/'
                        }
                        }
                })
            }
            function hide(){
                $('#send').css("display",'none')
            }
            function show(){
                $('#send').css("display",'block')
            }
        </script>

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
</head>

<body>
    <div style="font-size: 20px;height: 30px; text-align: center;color: #009689; font-weight: bold;">确定不来一篇blog吗?</div>
    <textarea cols="200" rows="1" id="title" style="width:100%;height:30px;line-height:30px;border-radius:30px">来个标题吧,少年!</textarea>
	<select id="select" style="width:100%;height:30px;line-height:30px;border-radius:30px">
		<option>GO</option>
		<option>Python</option>
	</select>

    <div id="area">
        <table>
            <tr>
                <td><textarea name="" id="md-area" onkeyup=mdSwitch()></textarea></td>
                <td>
                    <div id="show-area" class="clearfix"></div>
                </td>
            </tr>

        </table>
    </div>
    <div onclick="show()" style="width:100px;line-height:30px;margin-left:90%;color: #009689;border-color:#111111;border-style:solid;border-radius:30px"><p style="padding-left:30px">新增</p></div>
    <div id="send" style="display:none;top:50%;left:50%;transform:translate(-50%,-50%);z-index:0;position:fixed;border-style:solid;border-radius:30px;width:400px;height:250px;background-color:antiquewhite">
    <span style="float:right;font-size:30px;margin-right:20px" onclick="hide()">x</span>
        <p style="padding-left:30%;padding-top:10px;width:400px">输入你的账号的密码</p>
        <p style="margin-left:35px">账号:</p>
        <input style="margin-left:35px" id="username" type="text" size="40" maxlength="30" value="">
        <p style="margin-left:35px">密码:</p>
        <input style="margin-left:35px" id="pwd" type="text" size="40" maxlength="30" value="">
        <p style="margin-left:70%;color: #009689" onclick="sub()">提交</p>
    </div>
</body>

</html>