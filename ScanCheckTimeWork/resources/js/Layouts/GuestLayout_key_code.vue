<script setup>
import ApplicationLogo from "@/Components/ApplicationLogo.vue";
import { Link, useForm,router } from "@inertiajs/vue3";
import { useFocus } from "@vueuse/core";
import { ref } from "vue";

const input = ref();
const { focused } = useFocus(input, { initialValue: true });

// const target = ref();
// const { focused } = useFocus(input);
const numcard = useForm({
  code: "",
});

const onScan = () => {
  var internet = window.navigator.onLine;
  console.log(internet);
  if (internet == true) {
    //numcard.post(route("post.code"), {});
    router.get("https://timework.sif.co.th/key/show/"+numcard.code, {});
    numcard.code = "";
  } else {
    alertTimeout("Sorry! No internet connection", 5000);
    numcard.code = "";
  }
};

const alertTimeout = (mymsg, mymsecs) => {
  var myelement = document.createElement("div");
  myelement.setAttribute(
    "style",
    "background-color: red;color:#fff; width: 450px;height: 200px;position: absolute;top:0;bottom:0;left:0;right:0;margin:auto;border: 4px solid black;font-family:arial;font-size:25px;font-weight:bold;display: flex; align-items: center; justify-content: center; text-align: center;"
  );
  myelement.innerHTML = mymsg;
  setTimeout(function () {
    myelement.parentNode.removeChild(myelement);
  }, mymsecs);
  document.body.appendChild(myelement);
};
</script>

<template>
  <nav
    class="fixed top-0 z-20 w-full border-b border-gray-200 bg-transparent-400 dark:bg-gray-900 start-0 dark:border-gray-600 backdrop-blur-sm md:backdrop-blur-lg"
  >
    <div
      class="flex flex-wrap items-center justify-between p-3 mx-auto max-w-screen-1xl backdrop-blur-sm md:backdrop-blur-none"
    >
      <a href="#" class="flex items-center space-x-3 rtl:space-x-reverse">
        <img
          src="https://timework.sif.co.th/imgPayslip/logo/Logo_SIF.png"
          class="h-12"
          alt="Flowbite Logo"
        />
        <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white"
          >บริษัท สยามอินเตอร์เนชั่นแนลฟู๊ด จำกัด</span
        >
      </a>
      <div class="flex space-x-3 md:order-2 md:space-x-0 rtl:space-x-reverse">
        <input
          type="text"
          v-model="numcard.code"
          ref="input"
          class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
          placeholder="รหัสพนังงาน"
          required
        />
        <button
          @click="onScan"
          type="button"
          class="inline-flex items-center px-3 py-2 text-xs font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
        >
          ค้นหา
        </button>
      </div>
    </div>
  </nav>
  <slot />
</template>

