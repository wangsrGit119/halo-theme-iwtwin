       <!--侧边栏分类1-->
        <aside class="sidebar">
            <#if settings.weixin_gongzhonghao?? && settings.weixin_gongzhonghao != ''>
            <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">
                <p style="font-size:16px;">站长信息</p>
                <ul>
                    <li class="item">
                        <div >
                            <img style="width:100%;" src="${settings.weixin_gongzhonghao}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy" alt="" >
                        </div>
                    </li>
                </ul>
            </div>
            </#if>
            <#if settings.first_aside?? && settings.first_aside != ''>
                <div id="wpcom-lastest-news-2" class="widget widget_lastest_news">
                    <h3 class="widget-title">${settings.first_aside}</h3>
                    <@postTag method="listByCategorySlug" categorySlug="${settings.first_aside!}">
                        <ul style="margin-bottom:20px;">
                            <#list posts?sort_by("createTime")?reverse as post>
                            <#if post_index lt 10>
                                <li><a href="${post.fullPath!}" title="${post.title!}">${post.title!}</a></li>
                            </#if>
                            </#list>
                            <li class="pull-left"><a href="${blog_url!}/categories/${settings.first_aside!}">查看更多</a></li>
                        </ul>
                    </@postTag>
                </div>
                <#else>
            </#if>
            
             <!--侧边栏分类2-->
            <#if settings.second_aside?? && settings.second_aside != ''>
                <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">
                    <h3 class="widget-title">${settings.second_aside}</h3>
                        <@postTag method="listByCategorySlug" categorySlug="${settings.second_aside!}">
                            <ul style="margin-bottom:20px;">
                                <#list posts?sort_by("createTime")?reverse as post>
                                <#if post_index lt 6>
                                    <li class="item">
                                        <div class="item-img">
                                                <a class="item-img-inner" href="${post.fullPath!}" title="${post.title!}">
                                                <img width="480" height="300" src="${post.thumbnail}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy" alt="${post.title!}"  >
                                                </a>
                                        </div>
                                        <div class="item-content">
                                            <p class="item-title"><a href="${post.fullPath!}" title="${post.title!}">${post.title!}</a></p>
                                            <p class="item-date">${post.createTime?date}</p>
                                        </div>
                                    </li>
                                </#if>
                                </#list>
                                <li class="pull-left"><a href="${blog_url!}/categories/${settings.second_aside!}">查看更多</a></li>
                            </ul>
                        </@postTag>
                </div>
            </#if>
            <!--标签1-->
            <#if settings.show_tag!true>
            <div id="tag_cloud-2" class="widget widget_tag_cloud"><h3 class="widget-title">标签</h3>
            <div class="tagcloud">
            <@tagTag method="list">
              <#list tags as tag>
                <a href="${tag.fullPath!}" class="tag-cloud-link tag-link-5283 tag-link-position-1" style="font-size: 9.858407079646pt;">${tag.name!}</a>
              </#list>
            </@tagTag>
            </div>
            </#if>
        </aside>