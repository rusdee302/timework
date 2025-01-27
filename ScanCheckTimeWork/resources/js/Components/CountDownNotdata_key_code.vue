<script setup>
import { Head, Link, router, useForm } from "@inertiajs/vue3";
import { ref } from "vue";

let timer = ref(3);
let interval = setInterval(() => {
  if (timer.value === 0) {
    clearInterval(interval);
    router.get("https://timework.sif.co.th/Welcome_code", {});
  } else {
    timer.value--;
  }
}, 1000);
</script>
<template>
  <div class="">
    <div
      class="w-full max-w-sm p-5 mt-3 bg-blue-400 border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700"
    >
      <div class="flex flex-col items-center">
        <h1 class="text-white text-8xl">{{ timer }}</h1>
      </div>
    </div>
  </div>
</template>
