<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item> <i class="el-icon-lx-cascades"></i> 学生信息 </el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <el-table
            :data="tableData2"
            border
            class="table"
            ref="multipleTable"
            header-cell-class-name="table-header"
            id="alldata"
            style="display: none"
        >
            <el-table-column prop="s_id" label="ID" width="55" align="center"></el-table-column>
            <el-table-column prop="student_id" label="学号"></el-table-column>
            <el-table-column prop="student_name" label="姓名"></el-table-column>
            <el-table-column prop="student_class" label="班级"></el-table-column>
            <el-table-column prop="student_workplace" label="实习地点"></el-table-column>
            <el-table-column prop="remake" label="是否在实习库">
                <template slot-scope="scope">
                    <div v-if="scope.row.remark == 0">在库</div>
                    <div v-else>不在库</div>
                </template>
            </el-table-column>
            <el-table-column prop="strat_time" label="开始时间"> </el-table-column>
            <el-table-column prop="end_time" label="结束时间"> </el-table-column>
            <el-table-column prop="teacher_name" label="导师">
                <template slot-scope="scope">
                    <div v-if="scope.row.teacher_name == null">暂无</div>
                    <div v-else>
                        {{ scope.row.teacher_name }}
                    </div>
                </template>
            </el-table-column>
            <el-table-column prop="student_grade" label="成绩">
                <template slot-scope="scope">
                    <div v-if="scope.row.student_grade == null">暂无</div>
                    <div v-else-if="scope.row.student_grade == 1">不及格</div>
                    <div v-else-if="scope.row.student_grade == 2">及格</div>
                    <div v-else-if="scope.row.student_grade == 3">中等</div>
                    <div v-else-if="scope.row.student_grade == 4">良好</div>
                    <div v-else-if="scope.row.student_grade == 5">优秀</div>
                </template>
            </el-table-column>
        </el-table>
        <div class="container">
            <div class="handle-box">
                  <el-button  @click="exportExcel" type="primary" class="button" style="margin-right:10px">导出数据</el-button>
                <el-input v-model="name" placeholder="学生姓名" class="handle-input mr10"></el-input>
                <el-button type="primary" icon="el-icon-search" @click="search">搜索</el-button>
            </div>

            <el-table :data="tableData" border class="table" ref="multipleTable" header-cell-class-name="table-header">
                <el-table-column prop="s_id" label="ID" width="55" align="center"></el-table-column>
                <el-table-column prop="student_id" label="学号"></el-table-column>
                <el-table-column prop="student_name" label="姓名"></el-table-column>
                <el-table-column prop="student_class" label="班级"></el-table-column>
                <el-table-column prop="student_workplace" label="实习地点"></el-table-column>
                <el-table-column prop="teacher_name" label="导师">
                    <template slot-scope="scope">
                        <div v-if="scope.row.teacher_name == null">暂无</div>
                        <div v-else>
                            {{ scope.row.teacher_name }}
                        </div>
                    </template>
                </el-table-column>
                <el-table-column prop="student_grade" label="成绩">
                    <template slot-scope="scope">
                        <div v-if="scope.row.student_grade == null">暂无</div>
                        <div v-else-if="scope.row.student_grade == 1">不及格</div>
                        <div v-else-if="scope.row.student_grade == 2">及格</div>
                        <div v-else-if="scope.row.student_grade == 3">中等</div>
                        <div v-else-if="scope.row.student_grade == 4">良好</div>
                        <div v-else-if="scope.row.student_grade == 5">优秀</div>
                    </template>
                </el-table-column>

                <el-table-column label="操作" width="180" align="center">
                    <template slot-scope="scope">
                        <el-button type="text" icon="el-icon-edit" @click="gotolog(scope.$index, scope.row)">查看日志</el-button>

                        <el-button type="text" icon="el-icon-edit" @click="gotofin(scope.$index, scope.row)">查看实习鉴定</el-button>
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
import FileSaver from 'file-saver';
import XLSX from 'xlsx';
export default {
    name: 'company',
    data() {
        return {
            editVisible: false,
            editVisible2: false,
            query: {
                name: '',
                pageIndex: 1,
                pageSize: 10
            },
            name: '',

            tableData: [],
               tableData2: [],
            tableDataAll: [],
            pageTotal: 0,

            idx: -1,
            id: -1
        };
    },
    created() {
        this.$axios
            .get('/token', {
                params: {},
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
    },
    computed: {
        score(state) {
            if (state == 1) {
                return '不及格';
            } else if (state == 2) {
                return '及格';
            } else if (state == 3) {
                return '中等';
            } else if (state == 4) {
                return '良好';
            } else if (state == 5) {
                return '优秀';
            } else {
                return '暂无';
            }
        }
    },
    methods: {
        exportExcel() {
            let time = new Date();
            let year = time.getFullYear();
            let month = time.getMonth() + 1;
            let day = time.getDate();
            let name = year + '' + month + '' + day + '-学生信息';
            var xlsxParam = { raw: true };
            var wb = XLSX.utils.table_to_book(document.querySelector('#alldata'), xlsxParam);
            var wbout = XLSX.write(wb, {
                bookType: 'xlsx',
                bookSST: true,
                type: 'array'
            });
            try {
                FileSaver.saveAs(new Blob([wbout], { type: 'application/octet-stream' }), name + '.xlsx');
            } catch (e) {
                if (typeof console !== 'undefined') console.log(e, wbout);
            }
            return wbout;
        },

        gotolog(index, row) {
            this.$router.push('/listlog?id=' + row.student_id);
        },
        gotofin(index, row) {
            this.$axios
                .get('/adminListAppraisalForm', {
                    params: {
                        studentId: row.student_id,

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
                        if (response.data.totalElements != 0) {
                            this.$router.push('/appraisal?id=' + row.student_id);
                        } else {
                            this.$message.error('该学生还未提交鉴定表');
                        }
                    } else if (response.rspCode == '403') {
                        this.$message.error(response.rspMsg);
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        },

        getData() {
            this.$axios
                .get('/adminListStudentStates', {
                    params: {
                        studentName: this.query.name,
                        pageIndex: this.query.pageIndex - 1,
                        pageSize: this.query.pageSize
                    },
                    headers: {
                        token: localStorage.getItem('token'),
                        'Content-Type': 'application/json;charset=utf-8' //头部信息
                    }
                })
                .then((response) => {
                    if (response.rspCode == '200') {
                        this.tableData = response.data.result;
                        this.pageTotal = response.data.totalSize;
                    } else if (response.rspCode == '403') {
                        this.$message.error(response.rspMsg);
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });




                 this.$axios
                .get('/adminListStudentStates', {
                    params: {
                        studentName: this.query.name,
                        pageIndex: 0,
                        pageSize: 10000
                    },
                    headers: {
                        token: localStorage.getItem('token'),
                        'Content-Type': 'application/json;charset=utf-8' //头部信息
                    }
                })
                .then((response) => {
                    if (response.rspCode == '200') {
                        this.tableData2 = response.data.result;
                      
                    } else if (response.rspCode == '403') {
                        this.$message.error(response.rspMsg);
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        },

        search() {
            this.query.name = this.name;
            (this.query.pageIndex = 1), this.getData();
        },

        // 分页导航
        load(val) {
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
