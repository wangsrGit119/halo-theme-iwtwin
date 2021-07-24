<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <div class="sec-panel sec-panel-image">
                    <div class="sec-panel-head">
                        <h1><span>分类：${category.name}</span></h1>
                    </div>
                    <div class="sec-panel-body">
                        <ul class="post-loop post-loop-image cols-3">
                            <#list posts.content as post>
                            <li class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <a class="item-thumb" href="${post.fullPath!}" title="${post.title!}" target="_blank" rel="bookmark">
                                            <img width="48" height="32" src="${theme_base!}/source/images/lazy.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy" alt="${post.title!}" data-original="${post.thumbnail!}">
                                        </a>
                                        <a class="item-category" href="${category.fullPath}" target="_blank">${category.name}</a>
                                    </div>
                                    <h2 class="item-title">
                                        <a href="${post.fullPath!}" target="_blank" rel="bookmark">
                                            ${post.title!}
                                        </a>
                                    </h2>

                                    <div class="item-meta-items">
                                        <span class="item-meta-li views  pull-right" title="阅读数">
                                            <i class="wpcom-icon wi">
                                                <svg aria-hidden="true"><use xlink:href="${post.fullPath!}"/></svg>
                                            </i>阅读数:${post.visits!}</span>
                                    </div>
                                    <div class="item-meta-author">
                                        <div class="item-meta-right">${post.createTime!date}</div>
                                    </div>
                                </div>
                            </li>
                            </#list>
                        </ul>
                    </div>
                    <div class="sec-panel-body">
                    <ul class="pagination">
                        <@paginationTag method="categoryPosts" size="9" slug="${category.slug!}" page="${posts.number}" total="${posts.totalPages}" display="3">
                        <#if pagination.hasPrev>
                            <li>
                                <a href="${pagination.prevPageFullPath!}">上一页</a>
                            </li>
                        </#if>
                        <#list pagination.rainbowPages as number>
                            <#if number.isCurrent>
                                <li>
                                    <span class="current">${number.page!}</span>
                                </li>
                            <#else>
                                <li>
                                    <a href="${number.fullPath!}">${number.page!}</a>
                                </li>
                            </#if>
                        </#list>
                        <#if pagination.hasNext>
                            <li>
                                <a href="${pagination.nextPageFullPath!}">下一页</a>
                            </li>
                        </#if>
                        </@paginationTag>
                    </ul>
                    </div>
                </div>
            </div>
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>

