<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!}">
    <div id="wrap">
        <div class="container wrap">
            <div class="main">
                <article>
                    ${sheet.formatContent!}
                </article>
                <#include "module/comment.ftl">
                <@comment post=sheet type="sheet" />
            </div>
            <#include "module/aside.ftl">
        </div>
    </div>
</@layout>