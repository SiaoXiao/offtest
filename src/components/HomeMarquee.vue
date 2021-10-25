<template>
    <table class="w-100 myMarqueeLeft">
        <tr>
            <td>
                <div style="padding: 5px 5px 5px 10px; width: 40px;">
                    <img width="w-100" src="../assets/logo.png">
                </div>
            </td>
            <td width="5"></td>
            <td>
                <div class="my-outbox">
                    <div class="my-inbox" ref='box'>
                        <div class="my-list" v-for="(item,index) in send" :key='index' ref='list'>
                            <span class="my-uname">{{item.name}}</span>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>

</template>
 
<script>
    export default {
        name:'Marquee',

        data() {
            return {
                nowTime:null,
                disArr:[],
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

        mounted() {
            const item = this.$refs.list;
            const len = this.send.length;
            const arr = [];
            const margin = this.getMargin(item[0]) 
            for(let i = 0;i < len;i++){
                arr.push(item[i].clientWidth + margin)
            }
            this.disArr = arr;
            this.moveLeft();
        },

        beforeDestroy(){
            clearInterval(this.nowTime);
            this.nowTime = null;
        },

        methods:{

            getMargin(obj) {
                let marg = window.getComputedStyle(obj,null)['margin-right'];
                marg = marg.replace('px','')
                return Number(marg)
            },

            moveLeft(){
                const outbox = this.$refs.box;
                const that = this;
                let startDis = 0;
                this.nowTime = setInterval(function(){
                    startDis -= 0.5;
                    if(Math.abs(startDis) > Math.abs(that.disArr[0])){
                        that.disArr.push(that.disArr.shift())
                        that.send.push(that.send.shift())
                        startDis = 0;
                    }
                    outbox.style = 'transform: translateX('+ startDis +'px)';
                },1000/60)
            }
        }
    }
</script>

<style scoped>
.myMarqueeLeft{
    color:#ffffff;
    background: #00000066;
    position: relative;
}
.myMarqueeLeft .my-outbox{
    overflow: hidden;
    height: 35px;
}
.myMarqueeLeft .my-outbox .my-inbox{
    white-space: nowrap;}
.myMarqueeLeft .my-outbox .my-list{
    margin-right: 25px;
    display: inline-block;
    font-size: 13px;
    height: 35px;
    line-height: 35px;}
</style>