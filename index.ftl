<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div id="wrap" class="el-boxed">
        <div class="container wrap">
            <div class="main">
                    <#if settings.carousel_big?? && settings.carousel_big != ''>
                        <#include "module/index/index_header.ftl">
                    </#if>

                    <#include "module/index/index_article_page.ftl">
            </div>
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>

