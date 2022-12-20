<template>
    <div>
      <MarketValue :dataMV="dataMVCall" />
    </div>
</template>

<script>
import axios from 'axios'
import MarketValue from './MarketValue.vue'

export default {
  components: { MarketValue },
  //components: { HelloWorld },
  data() {
    return {
      dataMVCall: null,
    }
  },

  async mounted() {
    try {
      let testData = {};
      const response = await axios.get('http://localhost:8000/api/playerdata/mv/2')
      testData = {
      labels: Object.keys(JSON.parse(response.data.mv_data)), //keys
      datasets: [
        {
          data: JSON.parse(response.data.mv_data), //[30, 40, 60, 70, 5], //values
          backgroundColor: "rgb(75, 192, 192)",
          tension: 0.1
        },
      ],
    }
    this.dataMVCall = testData;
    } catch (err) {
      console.log(err.message);
    }
    // axios.get('http://localhost:8000/api/playerdata/mv')
    // .then(response => (this.dataMVCall = Object.values(JSON.parse(response.data[0].mv_data)), console.log(Object.keys(JSON.parse(response.data[0].mv_data)))))
    // .then(console.log(this.dataMVCall))
    
  },
  // setup() {
  //   const testData = {
  //     labels: ['Paris', 'Nîmes', 'Toulon', 'Perpignan', 'Autre'], //keys
  //     datasets: [
  //       {
  //         data: this.dataMV, //[30, 40, 60, 70, 5], //values
  //         backgroundColor: "rgb(75, 192, 192)",
  //       },
  //     ],
  //   };
  //   return { testData };
  // },
}
</script>