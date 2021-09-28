<!DOCTYPE html>
<html lang="zh-CN">
<#include "common/head.ftl">
<@head title="${post.title!}"/>
<body class="post-template-default single single-post postid-3063480 single-format-standard lang-cn el-boxed">
<#include "common/header.ftl">
<div id="wrap">
    <div class="wrap container">
        <div class="main">
            <article id="post-3063480" class="post-3063480 post type-post status-publish format-standard has-post-thumbnail hentry category-zixun tag-bi tag-cishan tag-moyin">
                <div class="entry">
                    <div class="entry-head">
                        <h1 class="entry-title">${post.title!}</h1>
                            <div class="entry-info">
                                <time class="entry-date published" datetime="${post.createTime!}" pubdate>${post.createTime!}</time>
                                <#list categories as category>
                                    <span class="dot">•</span>
                                    <a href="${category.fullPath!}" rel="category tag">${category.name!}</a>
                                </#list>
                                <span class="dot">•</span>
                                <span>阅读 ${post.visits!}</span>
                            </div>
                    </div>
                    <div class="entry-content">
                            ${post.formatContent!}
                    </div>
                    <div class="entry-footer">
                        <div class="entry-tag">
                            <#list tags as tag>
                                <a href="${tag.fullPath!}" rel="tag">${tag.name!}</a>
                            </#list>
                        </div>
                        <!--上一篇、下一篇 开始-->
                        <div class="entry-page">
                            <#if prevPost??>
                                <div class="entry-page-prev j-lazy" style="background-image: url(${theme_base!}/source/images/lazy.png);" data-original="${prevPost.thumbnail!}">
                                    <a href="${prevPost.fullPath!}" title="${prevPost.title!}" rel="prev">
                                            <span>${prevPost.title!}</span>
                                    </a>
                                    <div class="entry-page-info">
                                        <span class="pull-left"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="${prevPost.title!}"/></svg></i> 上一篇</span>
                                        <span class="pull-right">${prevPost.createTime!}</span>
                                    </div>
                                </div>
                            </#if>

                            <#if nextPost??>
                                <div class="entry-page-next j-lazy" style="background-image: url(${theme_base!}/source/images/lazy.png);" data-original="${nextPost.thumbnail!}">
                                    <a href="${nextPost.fullPath!}" title="${nextPost.title!}" rel="next">
                                        <span>${nextPost.title!}</span>
                                    </a>
                                    <div class="entry-page-info">
                                        <span class="pull-right">下一篇 <i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="${nextPost.title!}"/></svg></i></span>
                                        <span class="pull-left">${nextPost.createTime!}</span>
                                    </div>
                                </div>
                            </#if>
                        </div>
                        <!--上一篇、下一篇 结束-->
                    </div>
                </div>
            </article>
            <#include "module/comment.ftl">
            <@comment post=post type="post" />
        </div>
        <#include "module/aside.ftl">
    </div>
</div>

<#include "common/footer.ftl">

    <script type="text/javascript" src="${theme_base!}/source/js/main.js" id="main-js"></script>
    <script type="text/javascript" src="${theme_base!}/source/js/comment-reply.min.js" id="comment-reply-js"></script>
    <script type="text/javascript" src="${theme_base!}/source/js/wp-embed.js" id="wp-embed-js"></script>
    <script>(function ($) {$(document).ready(function () {setup_share(1);})})(jQuery);</script>
</body>
</html>

<#--<#include "module/macro.ftl">-->
<#--<@layout title="${blog_title!}">-->
<#--    <div id="wrap">-->
<#--        <div class="container wrap">-->
<#--            <div class="main">-->
<#--                <article id="post-3063480" class="post-3063480 post type-post status-publish format-standard has-post-thumbnail hentry category-zixun tag-bi tag-cishan tag-moyin">-->
<#--                    <div class="entry">-->
<#--                        <div class="entry-head">-->
<#--                            <h1 class="entry-title">${post.title!}</h1>-->
<#--                                <div class="entry-info">-->
<#--                                    <time class="entry-date published" datetime="${post.createTime!}" pubdate>${post.createTime!}</time>-->
<#--                                    <#list categories as category>-->
<#--                                        <span class="dot">•</span>-->
<#--                                        <a href="${category.fullPath!}" rel="category tag">${category.name!}</a>-->
<#--                                    </#list>-->
<#--                                    <span class="dot">•</span>-->
<#--                                    <span>阅读 ${post.visits!}</span>-->
<#--                                </div>-->
<#--                        </div>-->
<#--                        <div class="entry-content">-->
<#--                                ${post.formatContent!}-->
<#--                        </div>-->
<#--                        <div class="entry-footer">-->
<#--                            <div class="entry-tag">-->
<#--                                <#list tags as tag>-->
<#--                                    <a href="${tag.fullPath!}" rel="tag">${tag.name!}</a>-->
<#--                                </#list>-->
<#--                            </div>-->
<#--                            <!--上一篇、下一篇 开始&ndash;&gt;-->
<#--                            <div class="entry-page">-->
<#--                                <#if prevPost??>-->
<#--                                    <div class="entry-page-prev j-lazy" style="background-image: url(${theme_base!}/source/images/lazy.png);" data-original="${prevPost.thumbnail!}">-->
<#--                                        <a href="${prevPost.fullPath!}" title="${prevPost.title!}" rel="prev">-->
<#--                                                <span>${prevPost.title!}</span>-->
<#--                                        </a>-->
<#--                                        <div class="entry-page-info">-->
<#--                                            <span class="pull-left"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="${prevPost.title!}"/></svg></i> 上一篇</span>-->
<#--                                            <span class="pull-right">${prevPost.createTime!}</span>-->
<#--                                        </div>-->
<#--                                    </div>-->
<#--                                </#if>-->

<#--                                <#if nextPost??>-->
<#--                                    <div class="entry-page-next j-lazy" style="background-image: url(${nextPost.thumbnail!});" data-original="${nextPost.thumbnail!}">-->
<#--                                        <a href="${nextPost.fullPath!}" title="${nextPost.title!}" rel="next">-->
<#--                                            <span>${nextPost.title!}</span>-->
<#--                                        </a>-->
<#--                                        <div class="entry-page-info">-->
<#--                                            <span class="pull-right">下一篇 <i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="${nextPost.title!}"/></svg></i></span>-->
<#--                                            <span class="pull-left">${nextPost.createTime!}</span>-->
<#--                                        </div>-->
<#--                                    </div>-->
<#--                                </#if>-->
<#--                            </div>-->
<#--                            <!--上一篇、下一篇 结束&ndash;&gt;-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </article>-->
<#--                <#include "module/comment.ftl">-->
<#--                <@comment post=post type="post" />-->
<#--            </div>-->
<#--            <#include "module/aside.ftl">-->
<#--        </div>-->
<#--    </div>-->
<#--</@layout>-->