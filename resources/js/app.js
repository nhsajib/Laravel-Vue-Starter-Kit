require('./bootstrap');
window.Vue = require('vue').default;

//Axios
import axios from 'axios'
window.axios = require('axios');

//V-Form
import { Form, HasError, AlertError } from 'vform'
window.Form = Form;
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)

// Vue Select
import 'vue-select/dist/vue-select.css';
import vSelect from 'vue-select';
Vue.component('v-select', vSelect)

// Notiflix modules
import Notiflix from "notiflix";
window.Notiflix = Notiflix;
Notiflix.Loading.Init({ svgColor:"#3490dc", });

//Vue Filter
import Vue2Filters from 'vue2-filters'
Vue.use(Vue2Filters)

//Moment JS
import moment from 'moment';
//Date format for template
Vue.filter('formatDate', function(value) {
    if (value) {
        return moment(String(value)).format('DD-MMM-YYYY')
    }
});

// Laravel Vue Pagination
Vue.component('pagination', require('laravel-vue-pagination'));
Vue.component('header-compunent', require('./components/HeaderMenu.vue').default);
Vue.component('grafica-component', require('./components/graphics.vue').default);

//Vue Router
import VueRouter from 'vue-router'
Vue.use(VueRouter)

const routes = [
  { path: '*',
    component: require('./components/404.vue').default,
    meta:{
      isAuth: true,
      title: 'Page Not Found',
    },
  },
  { path: '/setting',
    component: require('./components/Setting.vue').default,
    meta:{
      isAuth: true,
      title: 'Application Setting',
    },
  },
  { path: '/',
    component: require('./components/Dashboard.vue').default,
    meta:{
      isAuth: true,
      title: 'Dashboard',
    },
  },
  { path: '/password/reset/link',
    component: require('./components/auth/PasswordResetLink.vue').default,
    meta:{
      isAuth: false,
      title: 'Password Reset',
    },
    
    beforeEnter: (to, from, next) => {
      axios.get('/api/user')
      .then(res=>{
        next('/');
      })
      .catch(e=>{
        next();
      })
    }
  },
  { path: '/password/reset/:token',
    component: require('./components/auth/PasswordReset.vue').default,
    meta:{
      isAuth: false,
      title: 'Password Reset',
    },
    
    beforeEnter: (to, from, next) => {
      axios.get('/api/user')
      .then(res=>{
        next('/');
      })
      .catch(e=>{
        next();
      })
    }
  },
  { path: '/login',
    component: require('./components/auth/Login.vue').default,
    meta:{
      isAuth: false,
      title: 'Login',
    },
    
    beforeEnter: (to, from, next) => {
      axios.get('/api/user')
      .then(res=>{
        next('/');
      })
      .catch(e=>{
        next();
      })
    }
  },
  { path: '/register',
    component: require('./components/auth/Register.vue').default,
    meta:{
      isAuth: false,
      title: 'Register',
    },
    
    beforeEnter: (to, from, next) => {
      axios.get('/api/user')
      .then(res=>{
        next('/');
      })
      .catch(e=>{
        next();
      })
    }
  },



]

const router = new VueRouter({
  routes,
  mode: 'history',
})

router.beforeEach((to, from, next) => {

  if (to.meta.isAuth === true){
    axios.get('/api/user')
    .then(res=>{
    })
    .catch(e=>{
      next('/login')
      console.log(e);
    })
  }

  next();
  document.title = to.meta.title + ' | ' + process.env.MIX_APP_NAME;

});

const app = new Vue({
    el: '#app',
    router
});
