import axios from 'axios';

const service = axios.create({
    baseURL: 'http://47.97.158.11:8080',
  //  baseURL: 'http://192.168.1.100:8080',
  //  baseURL: 'http://127.0.0.1:8081',
    timeout: 5000
});

service.interceptors.request.use(
    config => {
        return config;
    },
    error => {
        console.log(error);
        return Promise.reject();
    }
);

service.interceptors.response.use(
    response => {
        if (response.status === 200) {
            return response.data;
        } else {
            Promise.reject();
        }
    },
    error => {
        console.log(error);
        return Promise.reject();
    }
);

export default service;
