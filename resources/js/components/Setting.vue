<template>
    <div>
        <header-compunent/>
        <div class="container-fluid mt-3" id="main">
            <div class="row d-flex justify-content-center">
                    <div class="col-md-6 col-sm-10 mb-2">
                        <form @submit.prevent="saveCompanyInfo">
                            <div class="card">
                                <div class="card-header bg-primary text-white">
                                    <h5 class="mb-0 p-2">Company Information</h5>
                                </div>
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="name" class="mb-0">Name</label>
                                        <input type="text" v-model="company.name" class="form-control form-control-sm" id="name" :class="{ 'is-invalid': company.errors.has('name') }">
                                        <has-error :form="company" field="name"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="mb-0">Title</label>
                                        <input type="text" v-model="company.title" class="form-control form-control-sm" id="title" :class="{ 'is-invalid': company.errors.has('title') }">
                                        <has-error :form="company" field="title"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="pro_name" class="mb-0">Proprietor Name</label>
                                        <input type="text" v-model="company.pro_name" class="form-control form-control-sm" id="pro_name" :class="{ 'is-invalid': company.errors.has('pro_name') }">
                                        <has-error :form="company" field="pro_name"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="address" class="mb-0">Address</label>
                                        <input type="text" v-model="company.address" class="form-control form-control-sm" id="address" :class="{ 'is-invalid': company.errors.has('address') }">
                                        <has-error :form="company" field="address"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="mb-0">Phone</label>
                                        <input type="text" v-model="company.phone" class="form-control form-control-sm" id="phone" :class="{ 'is-invalid': company.errors.has('phone') }">
                                        <has-error :form="company" field="phone"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="mb-0">Email</label>
                                        <input type="email" v-model="company.email" class="form-control form-control-sm" id="email" :class="{ 'is-invalid': company.errors.has('email') }">
                                        <has-error :form="company" field="email"></has-error>
                                    </div>
                                    
                                </div>

                                <div class="card-footer py-1">
                                    <button type="submit" class="btn btn-outline-success float-right">Save</button>
                                </div>

                            </div>
                        </form>


                        <form @submit.prevent="saveUser">
                            <div class="card mt-4">
                                <div class="card-header bg-primary text-white">
                                    <h5 class="mb-0 p-2">User Information</h5>
                                </div>
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="name" class="mb-0">Name</label>
                                        <input type="text" v-model="userinfo.name" class="form-control form-control-sm" id="name" :class="{ 'is-invalid': userinfo.errors.has('name') }">
                                        <has-error :form="userinfo" field="name"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="mb-0">Email/ Login - User Name</label>
                                        <input type="text" v-model="userinfo.email" class="form-control form-control-sm" id="email" :class="{ 'is-invalid': userinfo.errors.has('email') }">
                                        <has-error :form="userinfo" field="email"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="mb-0 text-primary">Current Password</label>
                                        <input type="password" v-model="userinfo.password" class="form-control form-control-sm" id="password" :class="{ 'is-invalid': userinfo.errors.has('password') }">
                                        <has-error :form="userinfo" field="password"></has-error>
                                    </div>
                                    
                                </div>

                                <div class="card-footer py-1">
                                    <button type="submit" class="btn btn-outline-success float-right">Save</button>
                                </div>

                            </div>
                        </form>

                        <form @submit.prevent="savePass">
                            <div class="card mt-4">
                                <div class="card-header bg-primary text-white">
                                    <h5 class="mb-0 p-2">Change Password</h5>
                                </div>
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="current_password" class="mb-0">Current Password</label>
                                        <input type="password" v-model="updatepassword.current_password" class="form-control form-control-sm" id="current_password" :class="{ 'is-invalid': updatepassword.errors.has('current_password') }">
                                        <has-error :form="updatepassword" field="current_password"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="mb-0">Password</label>
                                        <input type="password" v-model="updatepassword.password" class="form-control form-control-sm" id="password" :class="{ 'is-invalid': updatepassword.errors.has('password') }">
                                        <has-error :form="updatepassword" field="password"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="password_confirmation" class="mb-0 text-primary">Confirm Password</label>
                                        <input type="password" v-model="updatepassword.password_confirmation" class="form-control form-control-sm" id="password_confirmation" :class="{ 'is-invalid': updatepassword.errors.has('password_confirmation') }">
                                        <has-error :form="updatepassword" field="password_confirmation"></has-error>
                                    </div>
                                    
                                </div>

                                <div class="card-footer py-1">
                                    <button type="submit" class="btn btn-outline-success float-right">Save</button>
                                </div>

                            </div>
                        </form>

                    </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                company: new Form({
                    id: '',
                    name: '',
                    title: '',
                    pro_name: '',
                    address: '',
                    phone: '',
                    email: '',
                }),

                userinfo: new Form({
                    name: '',
                    email: '',
                    password: '',
                }),

                updatepassword: new Form({
                    current_password: '',
                    password: '',
                    password_confirmation: '',
                })
            }
        },

        watch: {

        },

        methods:{

            savePass(){
                this.updatepassword.post('/api/setting/update/password')
                .then(res=>{
                    Notiflix.Notify.Success('Password successfully updated.');
                    this.logout();
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            },

            logout(){
                axios.post('api/logout')
                .then(res=>{
                    this.$router.push({ path: '/login' });
                })
                .catch(e=>{
                    console.log(e);
                })
            },

            saveUser(){
                Notiflix.Loading.Pulse('Please wait...');
                this.userinfo.post('/api/setting/user')
                .then(res=>{
                    Notiflix.Notify.Success('User information successfully saved.');
                    this.logout();
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            },

            getUser(){
                Notiflix.Loading.Pulse('Please wait...');
                axios.get('/api/user')
                .then(res=>{
                    this.userinfo.fill(res.data);
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            },

            saveCompanyInfo(){
                Notiflix.Loading.Pulse('Please wait...');
                this.company.post('/api/setting/company')
                .then(res=>{
                    Notiflix.Notify.Success('Company information successfully saved.');
                    this.getcompanyInfo();
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            },

            getcompanyInfo(){
                Notiflix.Loading.Pulse('Please wait...');
                axios.get('/api/company/info')
                .then(res=>{
                    this.company.fill(res.data);
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            }
        },

        mounted() {
            this.getcompanyInfo();
            this.getUser();
        }
    }
</script>
