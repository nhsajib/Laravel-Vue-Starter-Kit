<template>
    <div>
        <header-compunent/>
        <div class="container-fluid mt-3" id="main">
            <div class="row">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-md-3">
                            <div class="card bg-success text-white mt-2">
                                <div class="card-header text-center bg-secondary">
                                    <h6 class="mb-0">Today's Sales</h6>
                                </div>
                                <div class="card-body text-center">
                                    <h4>{{ today_sell }}</h4>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card bg-danger text-white mt-2">
                                <div class="card-header text-center bg-secondary">
                                    <h6 class="mb-0">Today's Purchase</h6>
                                </div>
                                <div class="card-body text-center">
                                    <h4>{{ today_purchase }}</h4>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card bg-primary text-white mt-2">
                                <div class="card-header text-center bg-secondary">
                                    <h6 class="mb-0">Today's Payments</h6>
                                </div>
                                <div class="card-body text-center">
                                    <h4>{{ today_payment }}</h4>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card text-white mt-2" style="background-color: #f6993f">
                                <div class="card-header text-center bg-secondary">
                                    <h6 class="mb-0">Today's Account</h6>
                                </div>
                                <div class="card-body text-center">
                                    <h4>{{ today_ac_enty }}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <grafica-component></grafica-component>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                today_sell: 0,
                today_payment: 0,
                today_purchase: 0,
                today_ac_enty: 0
            }
        },

        watch: {

        },

        methods:{

            gettodayscount(){
                Notiflix.Loading.Pulse('Please wait...');
                axios.get('/api/dashboard/todaycount')
                .then(res=>{
                    this.today_sell = res.data.sell;
                    this.today_payment = res.data.payment;
                    this.today_purchase = res.data.purchase;
                    this.today_ac_enty = res.data.ac_enty;
                    Notiflix.Loading.Remove(600);
                })
                .catch(e=>{
                    console.log(e);
                    Notiflix.Loading.Remove(600);
                })
            }
        },

        mounted() {
            this.gettodayscount();
        }
    }
</script>
