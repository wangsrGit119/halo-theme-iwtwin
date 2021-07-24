
    <div class="sec-panel topic-recommend">
        <div class="sec-panel-head">
            <h3>
                <span>专题介绍</span>
                <small>热门专题学习</small>
                <a href="${context!}/categories" target=_blank class=more>全部专题</a>
            </h3>
        </div>
        <div class="sec-panel-body">
            <ul class="list topic-list topic-col-3">
                <li class="topic">
                    <a class=topic-wrap href=${blog_url!}/search?keyword=${settings.topic_first_name!} target=_blank>
                        <div class=cover-container>
                            <img class="lazy"  data-original="${settings.topic_first_img!}" alt=${settings.topic_first_name!}></div>
                        <span>${settings.topic_first_name!}</span>
                    </a>
                </li>
                <li class="topic">
                    <a class=topic-wrap href=${blog_url!}/search?keyword=${settings.topic_second_name!} target=_blank>
                        <div class=cover-container>
                            <img class="lazy"  data-original="${settings.topic_second_img!}" alt=${settings.topic_second_name!}></div>
                        <span>${settings.topic_second_name!}</span>
                    </a>
                </li>
                <li class="topic">
                    <a class=topic-wrap href=${blog_url!}/search?keyword=${settings.topic_third_name!} target=_blank>
                        <div class=cover-container>
                            <img class="lazy"  data-original="${settings.topic_third_img!}" alt=${settings.topic_third_name!}></div>
                        <span>${settings.topic_third_name!}</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- topic end-->

<div class="sec-panel main-list ">
    <div class="sec-panel-head" >
        <ul class="list tabs j-newslist">
            <li class="tab active pull-left">
                <a data-id=0   href=javascript:;>最新文章</a>
                <i class=tab-underscore></i>
            </li>
            <li class="tab pull-right">
                <a data-id=1   href="${context!}/categories">查看更多</a>
            </li>
<#--            <@categoryTag method="list">-->
<#--                <#if categories?? && categories?size gt 0>-->
<#--                    <#list categories as category>-->

<#--                        <#if category_index lt 5>-->
<#--                            <li class="tab">-->
<#--                                <a data-id=${category_index}   href=javascript:;>${category.name}</a>-->
<#--                            </li>-->
<#--                        </#if>-->
<#--                    </#list>-->
<#--                </#if>-->
<#--            </@categoryTag>-->
        </ul>

    </div>

    <ul class="post-loop post-loop-default tab-wrap active">
        <@postTag method="latest" top="10">
            <#list posts as post>
                <li class="item">
                    <div class="item-img">
                        <a class="item-img-inner" href="${post.fullPath!}" title="${post.title!}" target="_blank" rel="bookmark">
                            <img  data-original="${post.thumbnail!}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image lazy" alt="${post.title!}">
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
                                <span class="item-meta-li views" title="阅读数"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="/#wi-eye"/></svg></i> ${post.visits!}</span>
                            </div>
                        </div>
                    </div>
                </li>
            </#list>
        </@postTag>
    </ul>
</div>
<script>
    // $('#wrap .j-newslist .tab').click(function (e) {
    //     console.log(e.target)
    //     var a = e.target,
    //     c_t =  $(a).parent(),
    //     tabs = $(a).parent().parent();
    //     tabs.find(".tab").removeClass("active");
    //     tabs.find(".tab").find(".tab-underscore").remove();
    //
    //     c_t.addClass("active");
    //     let i = document.createElement("i");
    //     i.setAttribute("class","tab-underscore")
    //     c_t.append(i)
    //
    //     var index =  $(a).attr("data-id");
    //     console.log(index)
    //     $("#wrap .main-list").find(".tab-wrap").removeClass("active")
    //
    //
    // })
</script>