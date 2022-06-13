<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    <i class="el-icon-lx-cascades"></i> 我收到的申请
                </el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="handle-box">  
                <el-input v-model="name" placeholder="学生名" class="handle-input mr10"></el-input>
                <el-button type="primary" icon="el-icon-search" @click="search">搜索</el-button>
            </div>

            <el-table
                :data="tableData"
                border
                class="table"
                ref="multipleTable"
                header-cell-class-name="table-header"
               
            >
              
                <el-table-column  prop="id" label="ID" width="55" align="center"></el-table-column>
                <el-table-column  prop="studentId" label="学生学号"></el-table-column>
                <el-table-column  prop="studentName" label="学生名"></el-table-column>
               <el-table-column label="操作" width="180" align="center">
                    <template slot-scope="scope">
                        <el-button 
                            type="text"
                            icon="el-icon-check"
                            class="green"
                            @click="handleup(scope.$index, scope.row)"
                        >同意</el-button>
                         <el-button 
                            type="text"
                            icon="el-icon-close"
                            class="red"
                            @click="handleDelete(scope.$index, scope.row)"
                        >驳回</el-button>
                       
                    </template>
                </el-table-column>
              
             
             
            </el-table>
            <div class="pagination">
                <el-pagination
                    background
                    layout="prev, pager, next"
                    :current-page="query.pageIndex"
                    :page-size="query.pageSize"
                    :total="pageTotal"
                    @current-change="load"
                    >
            </el-pagination>
               
            </div>
        </div>

    </div>
</template>

<script>

export default {
    name: 'company',
    data() {
        return {
        radio:false,
      
            query: {
                name: '',
                pageIndex: 1,
                pageSize: 10
            },
            name:'',
            tableData: [],
            tableDataAll:[],
            pageTotal:0,
           
            idx: -1,
            id: -1,
        };
    },
    created() {
         		this.$axios.get('/token',{
								params: {
                                   
								},headers: {
                                        "token":localStorage.getItem("token"),
										"Content-Type": "application/json;charset=utf-8" //头部信息
									}
							})
							 .then(response => {
                                if(response.rspCode=="403"){                                
                                    this.$message.error(response.rspMsg);
                                    this.$router.push('/login');
                                }else if(response.rspCode=="200"){
                                   this.getData();
                                }
                           
                            
                            })
                            .catch(function(error) {
								console.log(error);
                            });    
     
    },
    methods: {

             // 下架操作
                handleDelete(index, row) {
          
                    this.$axios.get('/refuseStudentAsk',{
							params: {
                                id:row.id
							},headers: {
                                "token":localStorage.getItem("token"),
								"Content-Type": "application/json;charset=utf-8" //头部信息
							}
						})
						.then(response => {
                                if(response.rspCode!="200")
                                {
                                    this.$message.error(response.rspMsg);
                                }else  if(response.rspCode=="200"){
                                    this.$message.success('操作成功');
                                    this.getData();
                                }
                           
                        })
                        .catch(function(error) {
							console.log(error);
						})
            },

            handleup(index, row) {
            
         
         
                    this.$axios.get('/passStudentAsk',{
							params: {
                                id:row.id
							},headers: {
                                "token":localStorage.getItem("token"),
								"Content-Type": "application/json;charset=utf-8" //头部信息
							}
						})
						.then(response => {
                                if(response.rspCode!="200")
                                {
                                    this.$message.error(response.rspMsg);
                                }else  if(response.rspCode=="200"){
                                    this.$message.success('操作成功');
                                    this.getData();
                                }
                           
                        })
                        .catch(function(error) {
							console.log(error);
						})
            },




    
        getData() {
         
          	this.$axios.get('/listStudentInfo',{
								params: {
                                    name: this.query.name,
                                    pageIndex: this.query.pageIndex-1,
                                    pageSize: this.query.pageSize
								},headers: {
                                    "token":localStorage.getItem("token"),
									"Content-Type": "application/json;charset=utf-8" //头部信息
								}
							})
							 .then(response => {
                                if(response.rspCode=="200"){ 
                                    
                                    this.tableData = response.data.content;
                                    this.pageTotal=response.data.totalElements;

                                
                                }else if(response.rspCode=="403"){                                
                                    this.$message.error(response.rspMsg);
                                    
                                }
                            })
                            .catch(function(error) {
								console.log(error);
                            });
           
        },

        search(){
            this.query.name=this.name;
            this.query.pageIndex=1,
            this.getData();
        },
    
        // 分页导航
        load(val){
            this.$set(this.query, 'pageIndex', val);
            this.getData();
        }
       

    }
};
</script>

<style scoped>
.handle-box {
    margin-bottom: 20px;
}

.handle-select {
    width: 120px;
}

.handle-input {
    width: 200px;
    display: inline-block;
}
.table {
    width: 100%;
    font-size: 14px;
}
.red {
    color: #ff0000;
}
.green{
    color: green;
}
.grey{
    color: grey;
}
.mr10 {
    margin-right: 10px;
}
.table-td-thumb {
    display: block;
    margin: auto;
    width: 40px;
    height: 40px;
}
</style>
