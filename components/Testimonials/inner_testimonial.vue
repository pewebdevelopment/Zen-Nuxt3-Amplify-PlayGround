<template>

    <ul>
        <li v-for="item in testi" :key="item.name">
            
            
            <div id="inner_testimonial">
                <div class="body bg-indigo-100">
                    <div>
                        <div
                            >
                            <!--  color violet -->
                            <div
                                class="bg-primary-color-grayish-blue lg:order-1 lg:row-span-1 2xl:row-span-1 lg:col-span-2 rounded-lg shadow-xl mb-5 lg:mb-0">
                                <div class="mx-6 my-8 2xl:mx-10">
                                    <img class="w-8 md:w-9 2xl:w-20 h-8 md:h-9 2xl:h-20 rounded-full border-2 ml-1 lg:ml-3 2xl:ml-0 md:-mt-1 2xl:-mt-4"
                                        src="@/images/testimonials/Aadya Deshpande.jpeg" />
                                    <h1
                                        class="text-white text-xs md:text-base 2xl:text-2xl pl-12 lg:pl-16 2xl:pl-20 -mt-8 md:-mt-10 2xl:-mt-20 2xl:mx-8">
                                        <!-- {{ currTestimonial.name }} -->
                                        {{ item.name }}
                                    </h1>
                                    <h2
                                        class="text-white text-opacity-50 text-xs md:text-base 2xl:text-2xl pl-12 lg:pl-16 2xl:pl-20 2xl:my-2 2xl:mx-8">
                                        {{ item.regency }}
                                    </h2>
                                </div>
                                <div class="-mt-6 relative">
                                    <p
                                        class="text-white text-opacity-100 text-xs md:text-base 2xl:text-l px-7 lg:px-9 2xl:pt-6 2xl:mx-2">
                                    <ul>
                                        <li v-for="name in item">
                                            {{ name }}
                                        </li>
                                    </ul>
                                    </p>
                                    <br />
                                    <p
                                        class="text-white text-opacity-70 font-medium md:text-sm 2xl:text-l px-7 lg:px-9 mb-3 2xl:pb-8 2xl:mx-2">
                                        <!-- <ul>
                                    <li v-for="item1 in temp[0].body.split('$')">
                                        <br>
                                        {{ item1 }}
                                    </li>
                                </ul> -->
                                    </p>
                                    <p
                                        class="text-white text-opacity-70 font-medium md:text-sm 2xl:text-xl px-7 lg:px-9 mb-3 2xl:pb-8 2xl:mx-2">
                                        <a href="https://youtu.be/8GmVNb_6Ckk" target="_blank">
                                            <u>YouTube Link </u>
                                        </a>>
                                    </p>
                                    <div class=px-10>
                                        <!-- <iframe width="560" height="315" src=
                                        title="YouTube video player" frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                        allowfullscreen>
                                    </iframe> -->
                                    </div>>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</template>
<script>
import { reactive, toRefs } from "vue";

export default {
    name: "inner_testimononial",
    props: ["testi"],
    computed: {
    }

};
</script>
  
<style lang="scss" scoped>
@import url('https://fonts.googleapis.com/css2?family=Barlow+Semi+Condensed:wght@500;600&display=swap');

.bg-primary-color-violet {
    background: hsl(263, 55%, 52%);
}

.bg-primary-color-grayish-blue {
    background: hsl(217, 19%, 35%);
}

.bg-primary-color-blackish-blue {
    background: hsl(219, 29%, 14%);
}

.bg-primary-color-white {
    background: hsl(0, 0%, 100%);
}

.primary-color-blackish-blue {
    color: rgb(25, 33, 46);
}

.primary-color-blackish-blue-opacity {
    color: rgba(25, 33, 46, 0.5);
}

.color-neutral-light-gray {
    color: hsl(0, 0%, 81%);
}

.color-neutral-grayish-blue {
    color: hsl(210, 46%, 95%);
}

.body {
    font-size: 13px;
    font-family: 'Barlow Semi Condensed', sans-serif;
}

h1 {
    font-weight: 600;
}

h2,
p {
    font-weight: 500;
}
</style>