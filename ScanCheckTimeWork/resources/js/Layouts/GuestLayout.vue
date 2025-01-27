<script setup>
import ApplicationLogo from "@/Components/ApplicationLogo.vue";
import { Link, useForm, router } from "@inertiajs/vue3";
import { useFocus } from "@vueuse/core";
import { ref } from "vue";

const input = ref();
const { focused } = useFocus(input, { initialValue: true });

// const target = ref();
// const { focused } = useFocus(input);
const numcard = useForm({
  rfid: "",
});

const onScan = (e) => {
  if (numcard.rfid.length == 18) {
    var internet = window.navigator.onLine;
    console.log(internet);
    if (internet == true) {
       //numcard.post(route("post.rfid"), {});
       router.get("https://timework.sif.co.th/rfid/show/"+numcard.rfid, {});
       numcard.rfid = "";
      //alertTimeout("Sorry! No internet connection", 5000);
      //numcard.rfid = "";
    } else {
      alertTimeout("Sorry! No internet connection", 5000);
      numcard.rfid = "";
    }
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
    class="fixed top-0 z-20 w-full bg-transparent-400 border-b border-gray-200 dark:bg-gray-900 start-0 dark:border-gray-600 backdrop-blur-sm md:backdrop-blur-lg"
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
          v-model="numcard.rfid"
          @keyup="onScan"
          ref="input"
          class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
          placeholder="รหัสพนังงาน"
          required
        />
      </div>
    </div>
  </nav>
  <slot />
</template>
