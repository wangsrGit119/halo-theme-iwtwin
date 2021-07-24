<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <div class="sec-panel sec-panel-default">
                    <div class="sec-panel-head">
                        <h1><span>搜索结果：${keyword!}</span></h1>
                    </div>
                    <div class="sec-panel-body">
                        <ul class="post-loop post-loop-default cols-0">
                            <#list posts.content as post>
                            <li class="item">
                                <div class="item-img">
                                    <a class="item-img-inner" href="${post.fullPath!}" title="${post.title!}" target="_blank" rel="bookmark">
                                        <img class="j-lazy" src="${theme_base!}/source/images/lazy.png" data-original="${post.thumbnail!}" width="480" height="300" alt="${post.title!}">
                                    </a>
                                </div>
                                <div class="item-content">
                                    <h2 class="item-title">
                                        <a href="${post.fullPath!}" target="_blank" rel="bookmark">
                                            ${post.title!}
                                        </a>
                                    </h2>
                                    <div class="item-excerpt">
                                        <p>${post.summary!}</p>
                                    </div>
                                    <div class="item-meta">
                                        <span class="item-meta-li date">${post.createTime!}</span>
                                        <div class="item-meta-right">
                                            <span class="item-meta-li views" title="阅读数"><i class="wpcom-icon wi"></i>阅读数： ${post.visits!}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            </#list>
                         </ul>
                    </div>
                </div>
            </div>
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>