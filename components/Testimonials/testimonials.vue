<script setup>
import { computed } from "vue";
</script>

<template>

    <a href="/testimonials" class="flex flex-col items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row md:max-w-xl hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
        <img class="object-cover w-full rounded-t-lg h-96 md:h-auto md:w-48 md:rounded-none md:rounded-l-lg" src="@/images/ghh.jpeg" alt="">
        <div class="flex flex-col justify-between p-4 leading-normal">
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 dark:text-white">Saurabh Parekh</h5>
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 dark:text-white">B-TECH | IIT BOMBAY</h5>
            
            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">My experience at Paathshala was very wonderful. I have learnt a lot here. The professors at Paathshala are very helpful. 
                Due to Paathshala’s personalized teaching mode, I was able to clear all my doubts effectively. Getting my doubts clarified on time improved my practice test scores. I would 
                strongly recommend JEE Advanced and JEE Main aspirants to enroll with Paathshala.
            </p>
        </div>
    </a>
</template>
