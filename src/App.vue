<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <Marquee msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
import Marquee from './components/HomeMarquee.vue'

export default {
  name: 'App',
  components: {
    Marquee
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

</style>
