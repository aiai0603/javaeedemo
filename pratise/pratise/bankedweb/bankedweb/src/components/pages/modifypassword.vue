<template>
    <div>
         
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    修改密码
                </el-breadcrumb-item>
              
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="form-box">
                <el-form  label-width="100px">
                   
                     <el-form-item label="验证旧密码">
                        <el-input v-model="oldpassword"  type="password"></el-input>
                    </el-form-item>
                     <el-form-item label="新密码">
                        <el-input  v-model="newpassword"  type="password"></el-input>
                    </el-form-item>
                     <el-form-item label="确认新密码">
                        <el-input  v-model="password"  type="password"></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="onSubmit">完成</el-button>
                        <el-button @click="exit">取消</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
    </div>
     

    
</template>

<script>
export default {
    name: 'company',
    data() {
        return {
            oldpassword:'',
            newpassword:'',
            password:''
        };
    },
    methods: {
        exit(){
            this.$router.push('/');
        },
        onSubmit(){
            if(this.newpassword==null){
                   this.$message.error('新密码为空');
                    return false;
            }

            if(this.newpassword!=this.password){
                   this.$message.error('两次密码不一致');
                    return false;
            }

            let res={
                oldpwd:this.$md5(this.oldpassword),
                newpwd:this.$md5(this.newpassword)
            }
             
             
								
                    	this.$axios.post('enter/passwordchanging',res,{
								headers: {
										"Content-Type": "application/json;charset=utf-8", //头部信息,
                                        "token":localStorage.getItem("token")
									}
							})
							 .then(response => {
                                 
                                console.log(response)
                                if(response.rspCode=="200")
                                {
                                    this.$message.success('操作成功');
                                    localStorage.removeItem('name');
                                    localStorage.removeItem('role');
                                    localStorage.removeItem('token');
                                    this.$router.push('/login');
                                   
                                }else if(response.rspCode=="405"){
                                     this.$message.error('原始密码有误');
                                    return false;
                                        

                                }else if(response.rspCode=="400"){
                                     this.$message.error('操作失败');
                                    return false;
                                        

                                }else if(response.rspCode=="403"){
                                     this.$message.error('token验证失败，请重新登录');
                                    localStorage.removeItem('name');
                                    localStorage.removeItem('role');
                                    localStorage.removeItem('token');
                                    this.$router.push('/login');
                                    return false;
                                        

                                }
                                
                            })
                            .catch(function(error) {
								console.log(error);
							});

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
    width: 300px;
    display: inline-block;
}
.table {
    width: 100%;
    font-size: 14px;
}
.red {
    color: #ff0000;
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
