<template>
  <div style="width: 1500px">
    <LineChart :chart-data="dataMV" />
  </div>
</template>

<script>
import { defineComponent } from 'vue';
import { LineChart } from 'vue-chart-3';
import { Chart, registerables } from "chart.js/auto";

Chart.register(...registerables);

export default defineComponent({
  name: 'Home',
  components: { LineChart },
  props: ['dataMV'],
});
</script>
