<template>
  <div class="scenic-display">
    <!-- 轮播图 -->
    <el-carousel :interval="carouselInterval" arrow="always" height="100vh">
      <el-carousel-item v-for="(scenic, index) in scenics" :key="index">
        <div class="carousel-item">
          <div class="text-container">
            <h2>{{ scenic.title }}</h2>
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
        { title: "中共一大会址", description: "上海市兴业路76号", image: "1.jpg" },
        { title: "中共一大会址", description: "浙江省嘉兴市南湖", image: "2.jpg" },
        { title: "中共二大会址", description: "上海市老成都北路7弄30号", image: "3.jpg" },
        { title: "中共三大会址纪念馆", description: "广州市恤孤院路3号", image: "4.jpg" },
        { title: "中共四大会址纪念馆", description: "上海市四川北路1468号", image: "5.jpg" },
        { title: "中共五大会址", description: "武汉市都府堤20号", image: "6.jpg" },
        { title: "中共六大会址", description: "俄罗斯莫斯科市郊五一村", image: "7.jpg" },
        { title: "中共七大会址", description: "延安市杨家岭中央大礼堂", image: "8.jpg" },
        { title: "中共八大会址", description: "北京市全国政协礼堂", image: "9.jpg" },
        { title: "人民大会堂", description: "北京市人民大会堂", image: "10.jpg" },

      ],
      carouselInterval: 5000,  // 轮播图的间隔时间（毫秒）
      imageWidth: "607px",   // 图片宽度
      imageHeight: "1080px",  // 图片高度
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
  color: #ffffff;          /* 文字颜色 */
  font-size: 24px;        /* 字体大小 */
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
