<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    <i class="el-icon-lx-cascades"></i> 教师信息
                </el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="handle-box">  
                <el-input v-model="name" placeholder="教师姓名" class="handle-input mr10"></el-input>
                <el-button type="primary" icon="el-icon-search" @click="search">搜索</el-button>
                 <el-button type="primary" icon="el-icon-plus" @click="add">添加</el-button>
            </div>

            <el-table
                :data="tableData"
                border
                class="table"
                ref="multipleTable"
                header-cell-class-name="table-header">
                <el-table-column  prop="tId" label="ID" width="55" align="center"></el-table-column>
                <el-table-column  prop="teacherId" label="编号"></el-table-column>
                <el-table-column prop="teacherName" label="姓名"></el-table-column>
              
                <el-table-column  prop="deleteFlag"  label="状态" align="center">
                    <template slot-scope="scope">
                        <el-tag
                            :type="'success'"
                        v-if="scope.row.deleteFlag===0 ">启用</el-tag>
                          <el-tag
                            :type="'danger'"
                        v-else>未启用</el-tag>
                    </template>
                </el-table-column>
                <el-table-column label="操作" width="180" align="center">
                    <template slot-scope="scope">
                        <el-button v-if="scope.row.deleteFlag!=1"
                            type="text"
                            icon="el-icon-edit"
                            @click="handleEdit(scope.$index, scope.row)"
                        >编辑</el-button>
                        <el-button v-if="scope.row.deleteFlag===0"
                            type="text"
                            icon="el-icon-top"
                            class="green"
                            @click="handleup(scope.$index, scope.row)"
                        >移除</el-button>
                         <el-button v-if="scope.row.deleteFlag!=0"
                            type="text"
                            icon="el-icon-bottom"
                            class="red"
                            @click="handleDelete(scope.$index, scope.row)"
                        >启用</el-button>
                       
                    </template>
                </el-table-column>
            </el-table>

               <!-- 编辑弹出框 -->
        <el-dialog title="编辑" :visible.sync="editVisible" width="30%">
            <el-form ref="form" :model="form" label-width="70px">
                <el-form-item label="教师姓名">
                    <el-input v-model="form.teacherName"></el-input>
                </el-form-item>
                <el-form-item label="教师编号">
                    <el-input v-model="form.teacherId"></el-input>
                </el-form-item>
                <el-form-item label="重置密码">
                    <el-input v-model="password"></el-input>
                </el-form-item>
              
            </el-form>
            <span slot="footer" class="dialog-footer">
                <el-button @click="editVisible = false;getData()">取 消</el-button>
                <el-button type="primary" @click="saveEdit">确 定</el-button>
            </span>
        </el-dialog>

          <!-- 编辑弹出框 -->
        <el-dialog title="添加" :visible.sync="editVisible2" width="30%">
            <el-form ref="form" :model="form2" label-width="70px">
                 <el-form-item label="教师姓名">
                    <el-input v-model="form2.teacherName"></el-input>
                </el-form-item>
                <el-form-item label="教师编号">
                    <el-input v-model="form2.teacherId"></el-input>
                </el-form-item>
                <el-form-item label="教师密码">
                    <el-input v-model="form2.teacherPasswd"></el-input>
                </el-form-item>
              
            </el-form>
            <span slot="footer" class="dialog-footer">
                <el-button @click="quit">取 消</el-button>
                <el-button type="primary" @click="saveEdit2">确 定</el-button>
            </span>
        </el-dialog>


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
            password:'',
            form:{

            },
            form2:{
                teacherName:'',
                teacherId:'',
                teacherPasswd:''


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
            quit(){
                this.editVisible2 = false;
                this.form2={ 
                    teacherName:'',
                    teacherId:'',
                    teacherPasswd:''
                 };
            },
            add(){     
                this.editVisible2 = true;
            },
           saveEdit2() {
                    if(this.form2.teacherId==""){
                        this.$message.error("编号为空");
                        return false;
                    }
                    if(this.form2.teacherName=="")
                    {
                        this.$message.error("姓名为空");
                        return false;
                    }
                    if(this.form2.teacherPasswd==""){
                          this.$message.error("密码为空");
                          return false;
                    }else{
                        this.form2.teacherPasswd = this.$md5(this.form2.teacherPasswd)
                    }

                    let params=this.form2;
            		this.$axios.post('/addTeacher',params,{
                       
                        headers:{ "token":localStorage.getItem("token"),
                        "Content-Type": "application/json;charset=utf-8"} //头部信息
                    })
						.then(response => {
                         if(response.rspCode=="200"){
                              
                           this.$message.success(response.rspMsg);
                           this.editVisible2=false;
                           this.form2={
                                teacherName:'',
                                teacherId:'',
                                teacherPasswd:''
                            };
                            this.getData()
                          
                        }else{
                            this.$message.error(response.rspMsg);
                        }
                            })
                        .catch(function(error) {
							console.log(error);
						});
        },


                 // 保存编辑
        saveEdit() {
                    if(this.form.teacherId==""){
                        this.$message.error("编号为空");
                        return false;
                    }
                    if(this.form.teacherName=="")
                    {
                        this.$message.error("姓名为空");
                        return false;
                    }
                    if(this.password != null){
                          this.form.teacherPasswd = this.$md5(this.password)
                    }

                    let params=this.form;
            		this.$axios.post('/editTeacher',params,{
                       
                        headers:{ "token":localStorage.getItem("token"),
                        "Content-Type": "application/json;charset=utf-8"} //头部信息
                    })
						.then(response => {
                         if(response.rspCode=="200"){
                              
                           this.$message.success(response.rspMsg);
                           this.editVisible=false;
                           this.form = {};
                          
                        }else{
                            this.$message.error(response.rspMsg);
                        }
                            })
                        .catch(function(error) {
							console.log(error);
						});
        },

                handleEdit(index, row){
                        this.form = row;
                        this.editVisible = true;
                },

             // 下架操作
                handleup(index, row) {
          
                    this.$axios.get('/refuseTeacher',{
							params: {
                                id:row.tId
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

            handleDelete(index, row) {
            
         
         
                    this.$axios.get('/passTeacher',{
							params: {
                                id:row.tId
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
         
          	this.$axios.get('/listallteacher',{
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
