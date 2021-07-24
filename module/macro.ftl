<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${keywords!}"/>
    <meta name="description" content="${description!}"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <@global.head />
    <title>${title}</title>
    <#--样式文件-->
    <#include "styles.ftl">
    <title>${title}</title>


    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/wangsrGit119/halo-theme-iwtwin/source/js/prism.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js?ver=3.5.1" id="jquery-core-js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/wangsrGit119/halo-theme-iwtwin/source/js/jquery-migrate.min.js" id="jquery-migrate-js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/wangsrGit119/halo-theme-iwtwin/source/js/lazyload.js" id="lazyload.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/wangsrGit119/halo-theme-iwtwin/source/js/icons-2.6.4.js" id="wpcom-icons-js"></script>


        <#--  搜索会用到的-->
    <script type="text/javascript" id="main-js-extra">
        var _wpcom_js = {"webp":"","slide_speed":"5000","user_card_height":"356","video_height":"482","fixed_sidebar":"1","errors":{"require":"\u4e0d\u80fd\u4e3a\u7a7a","pls_enter":"\u8bf7\u8f93\u5165","password":"\u5bc6\u7801\u5fc5\u987b\u4e3a6~32\u4e2a\u5b57\u7b26","passcheck":"\u4e24\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4","phone":"\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801","terms":"Please read and agree with the terms","sms_code":"\u9a8c\u8bc1\u7801\u9519\u8bef","captcha_verify":"\u8bf7\u70b9\u51fb\u6309\u94ae\u8fdb\u884c\u9a8c\u8bc1","captcha_fail":"\u70b9\u51fb\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5","nonce":"\u968f\u673a\u6570\u6821\u9a8c\u5931\u8d25","req_error":"\u8bf7\u6c42\u5931\u8d25"},"follow_btn":"<i class=\"wpcom-icon wi\"><svg aria-hidden=\"true\"><use xlink:href=\"#wi-add\"><\/use><\/svg><\/i>\u5173\u6ce8","followed_btn":"\u5df2\u5173\u6ce8","user_card":"1"};
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/wangsrGit119/halo-theme-iwtwin/source/js/main.js" id="main-js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/wangsrGit119/halo-theme-iwtwin/source/js/wp-embed.js" id="wp-embed-js"></script>
    <script>(function ($) {$(document).ready(function () {setup_share(1);})})(jQuery);</script>
    <script type="text/javascript" charset="utf-8">
        $(function() {
            $("img.lazy").lazyload({effect: "fadeIn"});
        });
    </script>
</head>
<body>
<#include "../common/header.ftl">
<#nested >
<#include "../common/footer.ftl">

<#--
    公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
    包含：统计代码，底部信息
-->
<@global.footer />
</body>
</html>
</#macro>

