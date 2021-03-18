<template>
    <nav class="navbar navbar-expand-md navbar-light">
        <router-link class="navbar-brand" to="/">{{ company.name }}</router-link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <router-link class="nav-link" to="/"><i class="fa fa-tachometer" aria-hidden="true"></i> Dahboard</router-link>
                </li>
                <li class="nav-item">
                    <router-link class="nav-link" to="/"><i class="fa fa-tachometer" aria-hidden="true"></i> Link1</router-link>
                </li>
                <li class="nav-item">
                    <router-link class="nav-link" to="/"><i class="fa fa-tachometer" aria-hidden="true"></i> Link2</router-link>
                </li>
                <li class="nav-item">
                    <router-link class="nav-link" to="/"><i class="fa fa-tachometer" aria-hidden="true"></i> Link3</router-link>
                </li>
                <li class="nav-item">
                    <router-link class="nav-link" to="/"><i class="fa fa-tachometer" aria-hidden="true"></i> Link4</router-link>
                </li>


<!--                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-file-text-o" aria-hidden="true"></i> Report
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li> -->
            </ul>

            <div class="dropdown">
                <button type="button" class="btn btn-outline-primary dropdown-toggle" data-toggle="dropdown">
                {{ user.name }}
                </button>
                <div class="dropdown-menu user-options">
                    <router-link class="dropdown-item" to="/setting">Setting</router-link>
                    <a class="dropdown-item" href="#" @click="logout" onclick="return false">Logout</a>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
    export default {
        data(){
            return{
                user: {},
                company: {},
            }
        },

        watch: {

        },

        methods:{

            logout(){
                axios.post('api/logout')
                .then(res=>{
                    this.$router.push({ path: '/login' });
                })
                .catch(e=>{
                    console.log(e);
                })
            },

            getcompany(){
                axios.get('/api/company/info')
                .then(res=>{
                    this.company = res.data;
                })
                .catch(e=>{
                    console.log(e);
                })
            },

            getuser(){
                axios.get('/api/user')
                .then(res=>{
                    this.user = res.data;
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            },
        },

        mounted() {
            this.getuser();
            this.getcompany();
        }
    }
</script>
