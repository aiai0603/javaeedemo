<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    <i class="el-icon-lx-cascades"></i> 学生信息
                </el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="handle-box">  
                <el-input v-model="name" placeholder="学生姓名" class="handle-input mr10"></el-input>
                <el-button type="primary" icon="el-icon-search" @click="search">搜索</el-button>
                
            </div>

            <el-table
                :data="tableData"
                border
                class="table"
                ref="multipleTable"
                header-cell-class-name="table-header">
                <el-table-column  prop="sId" label="ID" width="55" align="center"></el-table-column>
                <el-table-column  prop="studentId" label="学号"></el-table-column>
                <el-table-column prop="studentName" label="姓名"></el-table-column>
                <el-table-column prop="studentClass" label="班级"></el-table-column>
                
                <el-table-column prop="studentWorkplace" label="实习地点"></el-table-column>
                <el-table-column prop="stratTime" label="开始时间"></el-table-column>
                <el-table-column prop="endTime" label="结束时间"></el-table-column>
                 <el-table-column label="操作" width="180" align="center">
                    <template slot-scope="scope">
                        <el-button 
                            type="text"
                            icon="el-icon-view"
                            @click="gotolog(scope.$index, scope.row)"
                        >查看日志</el-button>
                  
                      
                        <el-button 
                            type="text"
                            icon="el-icon-edit"
                            @click="gotofin(scope.$index, scope.row)"
                        >实习鉴定</el-button>
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
            editVisible:false,
            editVisible2:false,
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
         
        gotolog(index,row){
            this.$router.push('/liststulog?id='+row.studentId)

        },
        gotofin(index,row){
                	this.$axios.get('/teacherListAppraisalForm',{
								params: {
                                    studentId:row.studentId,
                                    
                                    pageIndex: 0,
                                    pageSize: 1
								},headers: {
                                    "token":localStorage.getItem("token"),
									"Content-Type": "application/json;charset=utf-8" //头部信息
								}
							})
							 .then(response => {
                               
                                  if(response.rspCode=="200"){ 
                                  
                                    if(response.data.totalElements!=0){
                                        if(response.data.content[0].appraisalFormState==0)
                                            this.$router.push('/score?id='+row.studentId)
                                        else
                                              this.$message.error("您已经完成评审");

                                    }else{
                                         this.$message.error("该学生还未提交鉴定表");
                                    }
                                   
                                }else if(response.rspCode=="403"){                                
                                    this.$message.error(response.rspMsg);
                                    
                                }
                            })
                            .catch(function(error) {
								console.log(error);
                            });
           
                
        },

        getData() {
         
          	this.$axios.get('/teacherListAllStudent',{
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
                                        console.log(response.data.content)
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
