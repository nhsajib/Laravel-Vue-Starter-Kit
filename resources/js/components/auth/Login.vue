<template>
    <div class="component">
        <div class="row d-flex justify-content-center">
            <div class="jumbotron col-md-4 col-sm-8 mt-5 pt-4">
                <form @submit.prevent="loginfun">
                    <h2 class="text-center company-name">{{ company.name }}</h2>
                    <h4 class="text-center mt-3">Login</h4>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="fa fa-user"></span>
                                </span>                    
                            </div>
                            <input type="email" class="form-control" placeholder="Email/User Name" v-model="login.email" required="required" :class="{ 'is-invalid': login.errors.has('email') }">
                            <has-error :form="login" field="email"></has-error>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-lock"></i>
                                </span>                    
                            </div>
                            <input type="password" class="form-control" placeholder="Password" v-model="login.password" required="required" :class="{ 'is-invalid': login.errors.has('password') }">
                            <has-error :form="login" field="password"></has-error>
                        </div>
                    </div>        
                    <div class="form-group">
                        <button type="submit" class="btn btn-outline-success login-btn btn-block">Login</button>
                    </div>
                </form>
                <p class="text-center mt-3"> <router-link to="/password/reset/link">Forgot Password?</router-link> <br> Don't have an account? <router-link to="/register">Register</router-link></p>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{

                company: '',

                login: new Form({
                    email: '',
                    password: '',
                })

            }
        },

        watch: {

        },

        methods:{

            loginfun(){
                axios.get('/sanctum/csrf-cookie').then(response => {
                    this.login.post('/api/login')
                    .then(res=>{
                        this.$router.push({ path: '/' });
                    })
                    .catch(e=>{
                        console.log(e);
                    })
                });
            },

            getAppName(){
                Notiflix.Loading.Pulse('Please wait...');
                axios.get('/api/company/info')
                .then(res=>{
                    this.company = res.data;
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    Notiflix.Loading.Remove(600);
                    console.log(e);
                })
            },
        },

        mounted() {
            this.getAppName();
        }
    }
</script>

<style>
    .company-name{
        font-size: 2.5rem;
        color: rgb(52, 144, 220);
        text-shadow: -2px 0px 2px rgba(128, 128, 128, 1);
        font-weight: bold;
        padding: 7px;
        border-radius: 6px;
    }

    .jumbotron {
        background-color: #e9ecef75;
        padding: 1rem 2rem;
    }

</style>
