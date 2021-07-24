<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <div class="sec-panel sec-panel-image">
                    <div class="sec-panel-body">
                        <ul class="post-loop post-loop-image cols-3">
                            <#list journals.content as journal>
                                <li class="item">
                                    <div class="item-inner">
                                        <div class="item-img">
                                            <#if blog_logo?? && blog_logo != ''>
                                                <a class="item-thumb" href="#"  target="_blank" rel="bookmark">
                                                    <img width="48" height="32" src="${blog_logo!}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy">
                                                </a>
                                            </#if>
                                            <p class="item-category" >${journal.createTime}</p>
                                        </div>
                                        <h2 class="item-title">
                                            <p>${journal.content!}</p>
                                        </h2>
                                    </div>
                                </li>
                            </#list>
                        </ul>
                    </div>
                    <div class="sec-panel-body">

                    </div>
                </div>
            </div>
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>

