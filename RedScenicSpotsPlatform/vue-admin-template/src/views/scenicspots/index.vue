<template>
  <div class="app-container">



    <div align="right">

      <el-button type="success" @click="addsce">添加景点</el-button>






    </div>
    <el-table
      :data="list"
      border
      fit
      highlight-current-row
    >


      <el-table-column align="center" label="序号" width="95">
        <template slot-scope="scope">
          {{ scope.$index+1}}
        </template>
      </el-table-column>


      <el-table-column label="景区ID" width="95">
        <template slot-scope="scope">
          {{ scope.row.id }}
        </template>
      </el-table-column>

      <el-table-column label="景区名称" width="95">
        <template slot-scope="scope">
          {{ scope.row.name }}
        </template>
      </el-table-column>

      <el-table-column label="景区地址" width="295">
        <template slot-scope="scope">
          {{ scope.row.address }}
        </template>
      </el-table-column>

      <el-table-column label="景区类型" width="295">
        <template slot-scope="scope">
          {{ scope.row.typeName }}
        </template>
      </el-table-column>
<!--      <el-table-column label="Author" width="110" align="center">-->
<!--        <template slot-scope="scope">-->
<!--          <span>{{ scope.row.author }}</span>-->
<!--        </template>-->
<!--      </el-table-column>-->
<!--      <el-table-column label="Pageviews" width="110" align="center">-->
<!--        <template slot-scope="scope">-->
<!--          {{ scope.row.pageviews }}-->
<!--        </template>-->
<!--      </el-table-column>-->
<!--      <el-table-column class-name="status-col" label="Status" width="110" align="center">-->
<!--        <template slot-scope="scope">-->
<!--          <el-tag :type="scope.row.status | statusFilter">{{ scope.row.status }}</el-tag>-->
<!--        </template>-->
<!--      </el-table-column>-->
<!--      <el-table-column align="center" prop="created_at" label="Display_time" width="200">-->
<!--        <template slot-scope="scope">-->
<!--          <i class="el-icon-time" />-->
<!--          <span>{{ scope.row.display_time }}</span>-->
<!--        </template>-->
<!--      </el-table-column>-->
      <el-table-column label="操作" align="center" width="295" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="editScen(scope.row.id)">
            编辑
          </el-button>

          <el-button size="mini" type="danger" @click="delScen(scope.row.id)">
            删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
import { getList } from '@/api/table'
import addscenic from '@/views/addscenic/index.vue'

export default {
  computed: {
    addscenic() {
      return addscenic
    }
  },
  filters: {
    statusFilter(status) {
      const statusMap = {
        published: 'success',
        draft: 'gray',
        deleted: 'danger'
      }
      return statusMap[status]
    }
  },
  data() {
    return {
      list: null
    }
  },
  created() {
    this.fetchData()
  },
  methods: {
    addsce(){
      this.$router.push("/addscenic/index")

    },
    editScen(id){
      this.$router.push("/editscenic/index/"+id)
    },
    fetchData() {
      var vm = this;
      this.axios({
        method:'GET',
        url:'http://localhost:8082/scenicSpots/list'
      }).then(function(resp){
        vm.list = resp.data;
      });
    },
    delScen(id){
      var vm = this;
      this.axios({
        method:'GET',
        url:'http://localhost:8082/scenicSpots/delScenicSpots?id='+id
      }).then(function(resp){
        if(resp.data==="success"){
          //弹框
          vm.$message({
            message: '删除成功',
            type: 'success'
          });
          vm.fetchData();//更新商品列表
        }
      }).catch(function(error){
        //弹框
        vm.$message.error('删除失败');
      });
    }
  }
}
</script>
