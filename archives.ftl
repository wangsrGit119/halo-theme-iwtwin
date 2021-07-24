<#include "module/macro.ftl">
<@layout title="文章归档 - ${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <#list archives as archive>
                    <div class="sec-panel sec-panel-list">
                        <div class="sec-panel-head">
                            <h1><span>${archive.year?c}</span></h1>
                        </div>
                        <div class="sec-panel-body">
                            <ul class="post-loop post-loop-list cols-0">
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <li class="item">
                                        <span class="date pull-right">${post.createTime?date}</span>
                                        <a href="${post.fullPath!}" target="_blank" rel="bookmark">
                                            ${post.title}
                                        </a>
                                    </li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </#list>
                <ul class="pagination">
                    <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
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
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>