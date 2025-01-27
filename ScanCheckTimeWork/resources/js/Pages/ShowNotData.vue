<script setup>
import { Head, Link, router, useForm } from "@inertiajs/vue3";
import GuestLayout from "@/Layouts/GuestLayout.vue";
import CountDownNotdata from "@/Components/CountDownNotdata.vue";
import { ref } from "vue";
const componentKey = ref(0);

const forceRender = () => {
  componentKey.value += 1;
};

const cutdate = (date1) => {
  let result = date1.slice(10, 16);
  return result;
};

const props = defineProps({
  timeweb: String,
});
</script>
<template>
  <Head title="404" />
  <GuestLayout>
    <div class="w-full p-4 mt-16 md:mx-auto">
      <section class="text-gray-700 body-font bg-slate-300W">
        <div class="flex-wrap items-center p-5 mx-auto md:flex-row">
          <div class="grid grid-cols-1 gap-4 md:grid-cols-5">
            <div class="w-full">
              <!-- <CountDown :key="componentKey" /> -->
            </div>
            <div class="col-span-4">
              <div id="oopss">
                <div id="error-text">
                  <img
                    src="https://cdn.rawgit.com/ahmedhosna95/upload/1731955f/sad404.svg"
                    alt="404"
                  />
                  <span>ไม่พบข้อมูลของทาน</span>
                  <p class="p-a">กรุณาแจ้งหัวหน้าเพื่อตรวจสอบข้อมูล</p>
                  <!-- <p class="p-b">... Back to previous page</p> -->
                  <div class="w-60">
                    <CountDownNotdata :key="componentKey" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </GuestLayout>
</template>
