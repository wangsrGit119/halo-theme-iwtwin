<div class="slider-wrap clearfix">
    <!-- 轮播图 -->
    <div class="main-slider wpcom-slider swiper-container pull-left">
        <ul class="swiper-wrapper">
            <@postTag method="listByCategorySlug" categorySlug="${settings.carousel_big!}">
                <#list posts?sort_by("editTime")?reverse as post>
                    <#if post_index gte 2 &&post_index lte 4>
                        <li class="swiper-slide">
                            <a href="${post.fullPath!}">
                                <img class="lazy" data-original="${post.thumbnail!}" alt="${post.title!}" >
                            </a>
                            <h3 class="slide-title">
                                <a href="${post.fullPath!}">${post.title!}</a>
                            </h3>
                        </li>
                    </#if>
                </#list>
            </@postTag>
        </ul>
    </div>
    <!-- 轮播小图 -->
    <ul class="feature-post pull-right">
        <@postTag method="listByCategorySlug" categorySlug="${settings.carousel_big!}">
            <#list posts?sort_by("editTime")?reverse as post>
                <#if post_index <2>
                    <li>
                        <a href="${post.fullPath!}">
                            <img class="lazy" data-original="${post.thumbnail!}" alt="${post.title!}" >
                        </a>
                        <span>${post.title!}</span>
                    </li>
                </#if>
            </#list>
        </@postTag>
    </ul>

</div>