import Vue from 'vue';
import Router from 'vue-router';
import VueCookies from 'vue-cookies';

Vue.use(VueCookies)
Vue.use(Router);

const originalPush = Router.prototype.push
Router.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}

export default new Router({
    routes: [
        {
            path: '/login',
        //    component: () => import(/* webpackChunkName: "login" */ '../components/page/Login.vue'),
            component:resolve => require(['../components/pages/Login.vue'],resolve),
            meta: { title: '登录' }
        },
        {
            path: '*',
            component:resolve => require(['../components/pages/404.vue'],resolve),
            meta: { title: '404' }
        },
        {
            path:'/'  ,
            redirect:'/index' 
        },
        {
            path: '/',
          //  component: () => import(/* webpackChunkName: "home" */ '../components/common/Home.vue'),
            component:resolve => require(['../components/common/Home.vue'],resolve),
            meta: { title: '首页' },
            children: [
                {
                    path: '/company',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/company.vue'],resolve),
                    meta: { title: '实习公司' }
                },
                {
                    path: '/mine',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/mine.vue'],resolve),
                    meta: { title: '我的实习' }
                },
                {
                    path: '/addcompany',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/addcompany.vue'],resolve),
                    meta: { title: '添加公司' }
                },
                {
                    path: '/mycompany',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/mycompany.vue'],resolve),
                    meta: { title: '我的公司' }
                },
                {
                    path: '/allcompany',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/allcompany.vue'],resolve),
                    meta: { title: '全部公司' }
                }, {
                    path: '/allstudent',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/allstudent.vue'],resolve),
                    meta: { title: '全部学生' }
                }, {
                    path: '/allteacher',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/allteacher.vue'],resolve),
                    meta: { title: '全部教师' }
                },
                {
                    path: '/changepwd',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/pages/modifypassword.vue'],resolve),
                    meta: { title: '修改密码' }
                }, {
                    path: '/choose',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/choosecompany.vue'],resolve),
                    meta: { title: '申报实习' }
                }, {
                    path: '/log',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/alllog.vue'],resolve),
                    meta: { title: '实习日志' }
                }, {
                    path: '/delay',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/delay.vue'],resolve),
                    meta: { title: '延期申请' }
                },
                {
                    path: '/editcompany',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/editcompany.vue'],resolve),
                    meta: { title: '编辑公司' }
                },
                {
                    path: '/index',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/pages/index.vue'],resolve),
                    meta: { title: '首页' }
                }, {
                    path: '/mystudent',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/mystudent.vue'],resolve),
                    meta: { title: '我的申请' }
                }, {
                    path: '/allmystudent',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/allstudentinfo.vue'],resolve),
                    meta: { title: '我的学生' }
                }, {
                    path: '/allask',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/allask.vue'],resolve),
                    meta: { title: '审核实习申请' }
                }, {
                    path: '/student',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/allstudentinfo.vue'],resolve),
                    meta: { title: '学生实习信息' }
                },{
                    path: '/addlog',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/addlog.vue'],resolve),
                    meta: { title: '添加日志' }
                },{
                    path: '/editlog',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/editlog.vue'],resolve),
                    meta: { title: '修改日志' }
                },{
                    path: '/liststulog',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/listlog.vue'],resolve),
                    meta: { title: '修改日志' }
                },{
                    path: '/checkstulog',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/checklog.vue'],resolve),
                    meta: { title: '查看日志' }
                },,{
                    path: '/listlog',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/listlog.vue'],resolve),
                    meta: { title: '修改日志' }
                },{
                    path: '/checklog',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/checklog.vue'],resolve),
                    meta: { title: '查看日志' }
                },{
                    path: '/report',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/student/report.vue'],resolve),
                    meta: { title: '实习报告' }
                },{
                    path: '/score',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/teacher/setscore.vue'],resolve),
                    meta: { title: '成绩评定' }
                },{
                    path: '/appraisal',
               //     component: () => import(/* webpackChunkName: "table" */ '../components/page/company.vue'),
                    component:resolve => require(['../components/root/apparaisal.vue'],resolve),
                    meta: { title: '实习鉴定' }
                }
                
                
               
            ]
        },
        
    ]
});
