<template>
  <div>
    <h1>权限管理界面</h1>

    <!-- 超级管理员列表 -->
    <el-card v-if="isAdmin" class="admin-card">
      <h2>超级管理员</h2>
      <el-button @click="viewAllPages" type="primary">查看所有页面</el-button>
      <!-- 在这里添加其他超级管理员功能按钮和列表 -->
    </el-card>

    <!-- 游客列表 -->
    <el-card v-else class="guest-card">
      <h2>游客</h2>
      <el-button @click="viewScenicPages" type="primary">查看景点页面</el-button>
      <!-- 在这里添加其他游客功能按钮和列表 -->
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 模拟用户角色，这里假设 isAdmin 为 true 时是超级管理员，为 false 时是游客
      isAdmin: true,
    };
  },
  methods: {
    viewAllPages() {
      // 处理超级管理员查看所有页面的逻辑
      console.log("超级管理员查看所有页面");
    },
    viewScenicPages() {
      // 处理游客查看景点页面的逻辑
      console.log("游客查看景点页面");
    },
    // 在这里添加其他功能的处理方法
  },
};
</script>

<style>
.admin-card {
  background-color: #e6f7ff;
  padding: 20px;
  margin-bottom: 20px;
}

.guest-card {
  background-color: #f5f5f5;
  padding: 20px;
  margin-bottom: 20px;
}
</style>
