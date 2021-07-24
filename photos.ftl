<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <div class="sec-panel sec-panel-image">
                    <div class="sec-panel-body">
                        <ul class="post-loop post-loop-image cols-3">
                            <#list photos.content as photo>
                                <li class="item">
                                    <div class="item-inner">
                                        <div class="item-img">
                                            <a class="item-thumb" href="${photo.url!}"  target="_blank" rel="bookmark">
                                                <img width="480" height="32" src="${photo.thumbnail!}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy" alt="${photo.title!}">
                                            </a>
                                            <a class="item-category" href="${photo.url!}" target="_blank">${photo.name}</a>
                                        </div>
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

