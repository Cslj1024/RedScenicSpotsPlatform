<template>
  <div class="scenic-display">
    <!-- 轮播图 -->
    <el-carousel :interval="carouselInterval" arrow="always" height="100vh">
      <el-carousel-item v-for="(scenic, index) in scenics" :key="index">
        <div class="carousel-item">
          <div class="text-container">
            <!-- 使用 router-link 包裹标题，to 属性设置为要跳转的网站链接 -->
            <router-link :to="scenic.link" target="_blank">
              <h2>{{ scenic.title }}</h2>
            </router-link>
            <p>{{ scenic.description }}</p>
          </div>
          <img :src="require(`@/assets/${scenic.image}`)" :style="{ width: imageWidth, height: imageHeight }" alt="Scenic Image">
        </div>
      </el-carousel-item>
    </el-carousel>

    <!-- 视频背景 -->
    <div class="video-background">
      <video autoplay loop muted>
        <source :src="require('@/assets/background-video.mp4')" type="video/mp4">
        Your browser does not support the video tag.
      </video>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      scenics: [
        { title: "人民大会堂", description: "北京市人民大会堂", image: "13.jpg", link: "http://www.npc.gov.cn/zgrdw/npc/xinwen/rdlt/sd/2009-08/21/content_1514266.htm" },
        { title: "Scenic Title 2", description: "Description 2", image: "2.jpg", link: "https://example.com/page2" },
        { title: "Scenic Title 3", description: "Description 3", image: "3.jpg", link: "https://example.com/page3" },
      ],
      carouselInterval: 5000,  // 轮播图的间隔时间（毫秒）
      imageWidth: "1440px",   // 图片宽度
      imageHeight: "817px",  // 图片高度
    };
  },
};
</script>

<style scoped>
.scenic-display {
  position: relative;
}

.carousel-item {
  position: relative;
  text-align: center;
  color: white;
}

.text-container {
  position: absolute;
  top: 10%;
  left: 10%;
  z-index: 2;
  text-align: left;
}

.video-background {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
  z-index: -1;
}

.video-background video {
  object-fit: cover;
  width: 100%;
  height: 100%;
}
</style>
