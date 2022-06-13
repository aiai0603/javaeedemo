<template>
    <div class="sidebar">
        <el-menu 
            class="sidebar-el-menu"
            :default-active="onRoutes"
            :collapse="collapse"
            background-color="#324157"
            text-color="#bfcbd9"
            active-text-color="#20a0ff"
            unique-opened
            router
        >
        
        <template v-if="role == 1">
            <template v-for="item in items"  >
                <template v-if="item.subs">
                    <el-submenu :index="item.index" :key="item.index">
                        <template slot="title">
                            <i :class="item.icon"></i>
                            <span slot="title">{{ item.title }}</span>
                        </template>
                        <template v-for="subItem in item.subs">
                            <el-submenu
                                v-if="subItem.subs"
                                :index="subItem.index"
                                :key="subItem.index"
                            >
                                <template slot="title">{{ subItem.title }}</template>
                                <el-menu-item
                                    v-for="(threeItem,i) in subItem.subs"
                                    :key="i"
                                    :index="threeItem.index"
                                >{{ threeItem.title }}</el-menu-item>
                            </el-submenu>
                            <el-menu-item
                                v-else
                                :index="subItem.index"
                                :key="subItem.index"
                            >{{ subItem.title }}</el-menu-item>
                        </template>
                    </el-submenu>
                </template>
                <template v-else>
                    <el-menu-item :index="item.index" :key="item.index">
                        <i :class="item.icon"></i>
                        <span slot="title">{{ item.title }}</span>
                    </el-menu-item>
                </template>
            </template>
        </template>
          <template v-if="role == 2">
            <template v-for="item in items2"  >
                <template v-if="item.subs">
                    <el-submenu :index="item.index" :key="item.index">
                        <template slot="title">
                            <i :class="item.icon"></i>
                            <span slot="title">{{ item.title }}</span>
                        </template>
                        <template v-for="subItem in item.subs">
                            <el-submenu
                                v-if="subItem.subs"
                                :index="subItem.index"
                                :key="subItem.index"
                            >
                                <template slot="title">{{ subItem.title }}</template>
                                <el-menu-item
                                    v-for="(threeItem,i) in subItem.subs"
                                    :key="i"
                                    :index="threeItem.index"
                                >{{ threeItem.title }}</el-menu-item>
                            </el-submenu>
                            <el-menu-item
                                v-else
                                :index="subItem.index"
                                :key="subItem.index"
                            >{{ subItem.title }}</el-menu-item>
                        </template>
                    </el-submenu>
                </template>
                <template v-else>
                    <el-menu-item :index="item.index" :key="item.index">
                        <i :class="item.icon"></i>
                        <span slot="title">{{ item.title }}</span>
                    </el-menu-item>
                </template>
            </template>
        </template>
          <template v-if="role ==3">
            <template v-for="item in items3"  >
                <template v-if="item.subs">
                    <el-submenu :index="item.index" :key="item.index">
                        <template slot="title">
                            <i :class="item.icon"></i>
                            <span slot="title">{{ item.title }}</span>
                        </template>
                        <template v-for="subItem in item.subs">
                            <el-submenu
                                v-if="subItem.subs"
                                :index="subItem.index"
                                :key="subItem.index"
                            >
                                <template slot="title">{{ subItem.title }}</template>
                                <el-menu-item
                                    v-for="(threeItem,i) in subItem.subs"
                                    :key="i"
                                    :index="threeItem.index"
                                >{{ threeItem.title }}</el-menu-item>
                            </el-submenu>
                            <el-menu-item
                                v-else
                                :index="subItem.index"
                                :key="subItem.index"
                            >{{ subItem.title }}</el-menu-item>
                        </template>
                    </el-submenu>
                </template>
                <template v-else>
                    <el-menu-item :index="item.index" :key="item.index">
                        <i :class="item.icon"></i>
                        <span slot="title">{{ item.title }}</span>
                    </el-menu-item>
                </template>
            </template>
        </template>
            
           
        </el-menu>


      

        
    </div>
</template>

<script>
import { Slider } from 'element-ui';
import bus from '../common/bus';
export default {
    data() {
        return {
            collapse: false,
            role:1,
            items: [
               
                {
                    icon: 'el-icon-lx-home',
                    index: 'index',
                    title: '系统首页'
                },
                {
                    icon: 'el-icon-office-building',
                   index: 'company',
                    title: '实习库信息',
                    
                },{
                    icon: 'el-icon-user',
                    index: 'practice',
                    title: '我的实习',
                     subs: [ 
                         
                        {
                            index: 'mine',
                            title: '我的实习',
                        },
                       
                        {
                            index: 'choose',
                            title: '申报实习',
                        },
                        
                        {
                            index: 'log',
                            title: '实习日志',
                        }, 
                        
                        {
                            index: 'report',
                            title: '实习报告',
                        }
                        
                     ]
                }



              
            ],  
            items2: [
               
                {
                    icon: 'el-icon-lx-home',
                    index: 'index',
                    title: '系统首页'
                },
                {
                    icon: 'el-icon-office-building',
                    index: 'mycompany',
                    title: '实习库信息',
                    subs: [{
                        index: 'mycompany',
                        title: '我的公司',
                    }]
                },{
                    icon: 'el-icon-user',
                    index: 'allmystudent',
                    title: '我的学生',
                    subs: [{
                        index: 'allmystudent',
                        title: '我的学生',
                    },{
                        index: 'mystudent',
                        title: '学生申请',
                    }]
                }
                ],


                items3: [
               
                {
                    icon: 'el-icon-lx-home',
                    index: 'index',
                    title: '系统首页'
                },
                {
                    icon: 'el-icon-office-building',
                    index: 'allcompany',
                    title: '实习库信息',
                    subs: [{
                        index: 'allcompany',
                        title: '全部公司',
                    }  ]
                }, {
                    icon: 'el-icon-user',
                    index: 'alluser',
                    title: '账号信息',
                    subs: [{
                        index: 'allstudent',
                        title: '学生账号',
                    } ,{
                        index: 'allteacher',
                        title: '教师账号',
                    }  ]
                }, {
                    icon: 'el-icon-s-custom',
                    index: 'student',
                    title: '学生信息',
                    subs: [{
                        index: 'student',
                        title: '学生实习信息',
                    }  ]
                },{
                    icon: 'el-icon-circle-check',
                    index: 'allask',
                    title: '信息审核',
                    subs: [{
                        index: 'allask',
                        title: '实习申请审核',
                    }]
                }]
            
        };
    },
    computed: {
        onRoutes() {
            return this.$route.path.replace('/', '');
        }
        
    },
    created() {
        this.role = localStorage.getItem("role");
       
        // 通过 Event Bus 进行组件间通信，来折叠侧边栏
        bus.$on('collapse', msg => {
            this.collapse = msg;
            bus.$emit('collapse-content', msg);
        });
      
    },
  


    
};
</script>

<style scoped>
.sidebar {
    display: block;
    position: absolute;
    left: 0;
    top: 70px;
    bottom: 0;
    overflow-y: scroll;
}
.sidebar::-webkit-scrollbar {
    width: 0;
}
.sidebar-el-menu:not(.el-menu--collapse) {
    width: 250px;
}
.sidebar > ul {
    height: 100%;
}
</style>
