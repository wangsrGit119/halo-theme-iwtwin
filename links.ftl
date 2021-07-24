<#include "module/macro.ftl">
<@layout title="友链 - ${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <article id="post-85907" class="post-85907 page type-page status-publish hentry">
                    <div class="entry">
                        <div class="entry-head">
                            <h1 class="entry-title">友情链接</h1>
                        </div>
                        <div class="entry-content">
                            <div class="linkers">
                                <ul>
                                <@linkTag method="list">
                                    <#list links as link>
                                        <li>
                                            <a href="${link.url!}" target="_blank" rel="nofollow noopener noreferrer">
                                                ${link.name!}
                                            </a>
                                        </li>
                                    </#list>
                                </@linkTag>
                                </ul>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>