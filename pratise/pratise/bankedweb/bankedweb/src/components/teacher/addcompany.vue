<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    实习库
                </el-breadcrumb-item>
                <el-breadcrumb-item>添加公司</el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="form-box">
                <el-form ref="form" :model="form" label-width="100px"   >
                    <el-form-item label="单位名称">
                        <el-input v-model="form.internshipName"></el-input>
                    </el-form-item>
                     <el-form-item label="单位地址">
                        <el-input v-model="form.internshipAddress"></el-input>
                    </el-form-item>
                     <el-form-item label="单位负责人">
                        <el-input v-model="form.consultationName"></el-input>
                    </el-form-item>
                     <el-form-item label="负责人职位">
                        <el-input v-model="form.consultationDuty"></el-input>
                    </el-form-item>
                     <el-form-item label="联系人电话">
                        <el-input v-model="form.consultationSmartphone"></el-input>
                    </el-form-item>
                     <el-form-item label="单位电话">
                        <el-input v-model="form.consultationFixedphone"></el-input>
                    </el-form-item>
                     <el-form-item label="单位邮箱">
                        <el-input  v-model="form.consultationMail"></el-input>
                    </el-form-item>
                    
                
                    <el-form-item>
                        <el-button type="primary" @click="onSubmit()">完成</el-button>
                        <el-button @click="exit()">取消</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
import bus from '../common/bus.js'
export default {
    name: 'baseform',
    data() {
        return {
            
            form: {
               internshipName:'',
               internshipAddress:'',
               consultationName:'',
               consultationDuty:'',
               consultationSmartphone:'',
               consultationFixedphone:'',
               consultationMail:''
            }
           
        };
    },
    methods: {
        onSubmit() {
                    if(this.form.internshipName==""){
                        this.$message.error("单位名为空");
                        return false;
                    }
                    if(this.form.internshipAddress=="")
                    {
                          this.$message.error("单位地址为空");
                         return false;
                    }
                    if(this.form.consultationName=="")
                    {
                          this.$message.error("单位负责人为空");
                        return false;
                    }
                    if(this.form.consultationSmartphone==""){
                          this.$message.error("联系人电话为空");
                        return false;
                    }

                     if(this.form.consultationFixedphone==""){
                        this.$message.error("单位电话为空");
                        return false;
                    }
                    if(this.form.consultationMail=="")
                     {
                        this.$message.error("单位邮箱为空");
                        return false;
                    }



                    
                  

                    let params=this.form;
            		this.$axios.post('/operateCompany',params,{
                        headers:{"Content-Type": "application/json;charset=utf-8",
                        "token":localStorage.getItem("token")}, //头部信息
                         
                    })
						.then(response => {
                           
                        if(response.rspCode=="200"){
                              
                           this.$message.success(response.rspMsg);
                           this.$router.push('/mycompany');
                          
                        }else{
                            this.$message.error(response.rspMsg);
                        }
                            })
                        .catch(function(error) {
							console.log(error);
						});
       
        },
         exit(){
            this.$router.push('/mycompany');
            }

    },
    created(){
             	
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
     
    
    }
};
</script>