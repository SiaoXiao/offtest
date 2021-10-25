<template>
  <div class="ImportantContent">
   <div class="Marquee">
    <marqueeLeft :send-val='send' v-if='send'></marqueeLeft >
   </div>         
  </div>
</template>
 
<script>
    import marqueeLeft from "./HomeMarquee.vue";
    export default {
        name: "Home",
        components: {
            marqueeLeft
        },
        data() {
            return {
                drawer: false,
                send:[{name: "跑馬燈標題一文字文字"},
                    {name: "跑馬燈標題二文字文字文字"},
                    { name: "跑馬燈標題三文字文字"},
                    {name: "跑馬燈標題四文字文字文字文字文字文字"},
                    {name: "跑馬燈標題五文字文字文字文字"},
                    {name: "跑馬燈標題六文字文字文字文"},
                    {name: "跑馬燈標題七文字文字"},
                ],
            }
        },
    }
</script>