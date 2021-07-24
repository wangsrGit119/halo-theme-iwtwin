<header class="header">
    <div class="container clearfix">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar icon-bar-1"></span>
                <span class="icon-bar icon-bar-2"></span>
                <span class="icon-bar icon-bar-3"></span>
            </button>
            <h1 class="logo">
                <a href="${blog_url!}" rel="home"><img style="border-radius: 35%;" src="${blog_logo!}" alt="${blog_title!}"></a>
            </h1>
        </div>
        <div class="collapse navbar-collapse">

        <#include "*/module/menu.ftl">

        <div class="navbar-action pull-right">
                <div class="navbar-search-icon j-navbar-search"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="#wi-search"></use></svg></i></div>
        </div>
        <form class="navbar-search" action="${blog_url!}/search" method="get" role="search">
            <div class="navbar-search-inner">
                <i class="wpcom-icon wi navbar-search-close"><svg aria-hidden="true"><use xlink:href="#wi-close"></use></svg></i>
                <input type="text" name="keyword" class="navbar-search-input" autocomplete="off" placeholder="输入关键词搜索..." value="">
                <button class="navbar-search-btn" type="submit"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="#wi-search"></use></svg></i></button>
            </div>
         </form>
    </div>
</header>



<#--<header class="header">-->

<#--    <nav class="navbar navbar-default navbar-fixed-top">-->
<#--        <div class="container">-->
<#--            <p class="navbar-text navbar-left">-->
<#--                <a href="${blog_url!}" rel="home"><img src="${blog_logo!}" alt="${blog_title!}"></a>-->
<#--            </p>-->
<#--            <#include "*/module/menu.ftl">-->
<#--            <form class="navbar-form navbar-right" action="${blog_url!}/search" method="get" role="search">-->
<#--                <div class="form-group">-->
<#--                    <input type="text" name="keyword" class="form-control " placeholder="输入关键词搜索...">-->
<#--                </div>-->
<#--                <button type="submit" class="btn btn-default">-->
<#--                    <span type="submit" class="glyphicon glyphicon-search" aria-hidden="true"></span>-->
<#--                </button>-->
<#--            </form>-->
<#--        </div>-->
<#--    </nav>-->
<#--    -->
<#--</header>-->