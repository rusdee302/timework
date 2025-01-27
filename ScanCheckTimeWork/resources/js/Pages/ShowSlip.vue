<script setup>
import { Head, Link, router, useForm } from "@inertiajs/vue3";
import GuestLayout from "@/Layouts/GuestLayout.vue";
import CountDown from "@/Components/CountDown.vue";
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
  timeweb: Object,
});
</script>
<template>
  <Head title="Slip" />
  <GuestLayout>
    <div class="w-full p-4 mt-16 md:mx-auto">
      <section class="text-gray-700 body-font bg-slate-300W">
        <div class="flex-wrap items-center p-5 mx-auto md:flex-row">
          <div class="grid grid-cols-1 gap-4 md:grid-cols-5">
            <div class="w-full">
              <div class="">
                <div
                  class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700 img_bg"
                >
                  <div class="p-4 pb-10 mt-0">
                    <div class="flex">
                      <img
                        src="http://localhost/imgPayslip/logo/Logo_SIF.png"
                        class="w-12 h-12"
                        alt=""
                        srcset=""
                      />
                      <div class="ml-3">
                        <span class="text-sm text-black dark:text-gray-400">
                          บริษัท สยามอินเตอร์เนชั่นแนลฟู๊ด จำกัด </span
                        ><br />
                        <span class="text-sm text-black dark:text-gray-400">
                          Siam Internaltional Food Cc., LTD
                        </span>
                      </div>
                    </div>
                    <div class="flex flex-col items-center pb-5 mt-6">
                      <img
                        class="items-center h-32 p-2 mb-3 rounded-sm shadow-lg w-28"
                        src="http://localhost/imgPayslip/logo/icon_user.png"
                        alt="Bonnie image"
                      />
                    </div>
                    <h5 class="font-medium text-gray-900 text-13 dark:text-white">
                      code :
                      {{ props.timeweb["user"][0].user_no }}
                    </h5>
                    <h5 class="font-medium text-gray-900 text-13 dark:text-white">
                      Name Thai : {{ props.timeweb["user"][0].user_lname }}
                    </h5>
                    <h5 class="font-medium text-gray-900 text-13 dark:text-white">
                      Name English :
                    </h5>
                    <h5 class="font-medium text-gray-900 text-13 dark:text-white">
                      DEPT :
                    </h5>
                    <h5 class="font-medium text-gray-900 text-13 dark:text-white">
                      Start : -
                    </h5>
                    <h5 class="font-medium text-gray-900 text-13 dark:text-white">
                      Lssue : -
                    </h5>
                    <h5 class="text-sm font-medium text-gray-900 dark:text-white mt-7">
                      Position :<br />
                      {{ props.timeweb["user"][0].user_address }}
                    </h5>
                  </div>
                </div>
              </div>
              <CountDown :key="componentKey" />
            </div>
            <div class="col-span-4">
              <div class="relative overflow-x-auto bg-gray-200 shadow-xl sm:rounded-lg">
                <table
                  class="w-full text-sm text-left text-gray-500 rtl:text-right dark:text-gray-400"
                >
                  <tbody>
                    <tr
                      v-for="(time, index) in timeweb['newDate']"
                      :key="timeweb['newDate']"
                      class="border-b border-white dark:border-gray-700"
                    >
                      <th
                        scope="row"
                        class="px-1 py-0 font-medium text-white bg-blue-400 w-11 whitespace-nowrap dark:text-white dark:bg-gray-800"
                      >
                        {{ props.timeweb["newDate"][index] }}
                      </th>
                      <td
                        v-for="(timeshow, indext) in timeweb['date'][index]"
                        :key="timeweb['date'][index]"
                        class="px-1 py-1"
                      >
                        {{ cutdate(props.timeweb["date"][index][indext].sj) }}
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </GuestLayout>
</template>
