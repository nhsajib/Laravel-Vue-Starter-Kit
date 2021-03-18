<template>
  <div class="small">
    <line-chart :chart-data="datacollection" :height="150"></line-chart>
  </div>
</template>

<script>

import LineChart from './LineChart.js'

export default {
  components: {
    LineChart
  },
  data(){
    return {
      datacollection: {},

      options: {
        responsive: true,
        maintainAspectRatio: false
      },
    }
  },
  mounted () {
    this.fillData()
  },
  methods: {

    fillData (){

      axios.get('/api/dashboard/chartdata')
      .then(res=>{
        this.datacollection = {
          labels: res.data.dates,
          datasets: [
            {
              label: 'Sell',
              backgroundColor: '#28a745',
              data: res.data.sells
            },
            {
              label: 'Purchase',
              backgroundColor: '#e3342f',
              data: res.data.purchase
            },
            {
              label: 'Payments',
              backgroundColor: '#3490dc',
              data: res.data.payments
            },
            {
              label: 'Accounts',
              backgroundColor: '#f6993f',
              data: res.data.ac_entry
            },
          ]
        }

      })
      .catch(e=>{
        console.log(e);
      })


    }
  }
}
</script>

<style lang="css">
.small {
  max-width: 100%;
  /* max-height: 500px; */
  margin:  50px auto;
}
</style>