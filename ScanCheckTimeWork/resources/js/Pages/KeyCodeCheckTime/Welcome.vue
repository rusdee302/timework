<script setup>
import { Head } from "@inertiajs/vue3";
import GuestLayout from "@/Layouts/GuestLayout_key_code.vue";
import Clock from "@/Components/Clock.vue";
</script>

<template>
  <Head title="Home" />
  <GuestLayout>
    <!-- <video autoplay muted loop id="myVideo">
      <source src="http://localhost/PaySlip/video/sif.mp4" type="video/mp4" />
      Your browser does not support HTML5 video.
    </video> -->
    <!-- <img src="http://localhost/storage/app/public/AG9U0053.JPG" alt="" /> -->
    <div class="mt-10 content" id="example1">
      <div class="mx-auto">
        <center>
          <Clock />
        </center>
      </div>
      <div class="max-w-sm mx-auto">
        <h1 class="text-3xl font-medium text-white title-font sm:text-4xl">
          <center>ดูเวลาทาบบัตร</center>
        </h1>
      </div>
      <div class="max-w-4xl mx-auto">
        <br />
        <center>
          <h1 class="text-2xl font-medium text-white title-font">
            เวลาคือสิ่งที่มีค่า<br />
            ตรวจสอบเวลาเพื่อให้แน่ใจทานลงเวลาเข้าออกงานได้ถูกต้องครบถ้วน
          </h1>
        </center>
      </div>
      <div class="max-w-2xl mx-auto mt-10">
        <center >
          <div class="bg-white w-64 ">
          <p class="text-black">แบบประเมิน</p>
            <img
              src="https://timework.sif.co.th/video/pics.png"
              alt=""
              class="border rounded-lg p-5 shadow-xl w-64"
            />
          </div>
        </center>
        <div class="mt-32"></div>
      </div>
      <div class=""></div>
    </div>
  </GuestLayout>
</template>
