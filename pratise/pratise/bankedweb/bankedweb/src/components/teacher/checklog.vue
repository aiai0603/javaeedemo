<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item> 实习日志 </el-breadcrumb-item>
                <el-breadcrumb-item>添加日志</el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="form-box">
                <el-form ref="form" :model="form" label-width="100px">
                    <el-form-item label="日志标题" >
                          {{form.logTitle}} 
                    </el-form-item>
                    <el-form-item label="日志内容"  class="item">
                        <div class="log">
                            {{form.studentLog}}
                        </div>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="exit()">完成</el-button>
                        <el-button @click="exit()">取消</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
import bus from '../common/bus.js';
export default {
    name: 'baseform',
    data() {
        return {
            ban:true,
            form: {
                
            }
        };
    },
    methods: {


        getData(){
            if(localStorage.getItem('role') == 1){
                this.ban = false;
            }else {
                this.ban = true;
            }

            this.$axios.get('/teacherEditLog',{
								params: {
                                    id: this.$route.query.id,
                                    
								},headers: {
                                    "token":localStorage.getItem("token"),
									"Content-Type": "application/json;charset=utf-8" //头部信息
								}
							})
             
                .then((response) => {
                    
                    if (response.rspCode == '200') {
                       
                        this.form=response.data;
                    } else {
                        this.$message.error(response.rspMsg);

                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        },
        onSubmit() {
            if (this.form.studentLog.length < 200) {
                this.$message.error('实习日志字数不足，请至少书写200字');
                return false;
            }

            let params = this.form;
            this.$axios
                .post('/changeMyLog', params, {
                    headers: { 'Content-Type': 'application/json;charset=utf-8', token: localStorage.getItem('token') } //头部信息
                })
                .then((response) => {
                    
                    if (response.rspCode == '200') {
                        this.$message.success(response.rspMsg);
                         this.$router.go(-1)
                    } else {
                        this.$message.error(response.rspMsg);
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        },
        exit() {
             this.$router.go(-1)
        }
    },
    created() {
      


        this.$axios.get('/token', {
              
                headers: {
                    token: localStorage.getItem('token'),
                    'Content-Type': 'application/json;charset=utf-8' //头部信息
                }
            })
            .then((response) => {
                if (response.rspCode == '403') {
                    this.$message.error(response.rspMsg);
                    this.$router.push('/login');
                } else if (response.rspCode == '200') {
                    this.getData();
                }
            })
            .catch(function (error) {
                console.log(error);
            });
    }
};
</script>

<style scoped>
.log{
    width:80%;
    display: flex;
    flex-flow: column;
    justify-content: center;
    align-items: flex-start;
    flex-wrap: wrap;
  
    overflow: hidden;
     word-break: break-all
    
    
}


.handle-box {
    display: flex;
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
.green {
    color: green;
}
.grey {
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
