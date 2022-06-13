<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item> 实习日志 </el-breadcrumb-item>
                <el-breadcrumb-item>实习鉴定表</el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="form-box">
                <el-form ref="form" :model="form" label-width="100px">
                    <el-form-item label="学号">
                        {{ form.studentId }}
                    </el-form-item>
                    <el-form-item label="姓名">
                        {{ form.studentName }}
                    </el-form-item>
                    <el-form-item label="实习状态">
                        {{ state }}
                    </el-form-item>

                    <el-form-item label="实习总结">
                        {{ form.appraisalForm }}
                    </el-form-item>

                    <el-form-item>
                        <el-button type="primary" @click="exit()">完成</el-button>

                        <el-button @click="exit()">返回</el-button>
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
            ban: true,
            form: {}
        };
    },
    computed: {
        state() {
            let s = this.form.appraisalFormState;
            console.log(s)
            if (s == 0) {
                return '等待打分';
            } else if (s == 1) {
                return '报告退回修改';
            } else if (s == 2) {
                return '评分完毕';
            } else {
                return '暂无成绩';
            }
        }
    },
    methods: {
        getData() {
            this.$axios
                .get('/adminListAppraisalForm', {
                    params: {
                        studentId: this.$route.query.id,
                        pageIndex: 0,
                        pageSize: 1
                    },
                    headers: {
                        token: localStorage.getItem('token'),
                        'Content-Type': 'application/json;charset=utf-8' //头部信息
                    }
                })
                .then((response) => {
                    if (response.rspCode == '200') {
                        this.form = response.data.content[0];
                    } else if (response.rspCode == '403') {
                        this.$message.error(response.rspMsg);
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        },

        exit() {
            this.$router.go(-1);
        }
    },
    created() {
        this.$axios
            .get('/token', {
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
.log {
    width: 80%;
    display: flex;
    flex-flow: column;
    justify-content: center;
    align-items: flex-start;
    flex-wrap: wrap;

    overflow: hidden;
    word-break: break-all;
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
