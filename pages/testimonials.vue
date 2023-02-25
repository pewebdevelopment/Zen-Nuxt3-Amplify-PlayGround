<template>
    <div>
        <!-- <ul>
            <li v-for="(item) in tmp" :key="item.name">
                <Card
                    v-bind:testi = "item"
                />
            </li>
        </ul> -->
    </div>
    <Card v-bind:testi = "tmp"/>
    
</template>

<script >
import { reactive, toRefs } from "vue";

import data1 from "@/data/test_data.json"
import Card from "@/components/Testimonials/inner_testimonial.vue"

export default {
    computed: {
        temp() {
            return data1.arr;
        }
    },
    data(){
        return {tmp : data1.arr}
    },
    components:{
        Card
    }
};

</script>
