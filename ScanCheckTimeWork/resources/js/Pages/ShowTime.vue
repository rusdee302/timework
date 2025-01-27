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
  timeweb_la: Object,
});

// const myLa = (data) => {
//   var la = props.timeweb_la["date_la"][data].hasOwnProperty([0]);
//   if (la == true) {
//     if (props.timeweb_la["date_la"][data][0]["TYPE_LA"] == 2) {
//       var re = "ลา " + props.timeweb_la["date_la"][data][0]["AMOUNT_HOUR"];
//     } else if (props.timeweb_la["date_la"][data][0]["TYPE_LA"] == 1) {
//       var re = "ลาเต็มวัน";
//     }
//   } else {
//     var re = "";
//   }
//   return re;
// };

const myLa = (data, date) => {
  const la = props.timeweb_la["date_la_v1"];
  for (let i = 0; i < la.length; i++) {
    var aa = la[i]["START"].slice(0, 10);
    if (aa == date) {
      if (props.timeweb_la["date_la_v1"][i]["TYPE_LA"] == 2) {
        var re = "ลา " + props.timeweb_la["date_la_v1"][i]["AMOUNT_HOUR"];
      } else if (props.timeweb_la["date_la_v1"][i]["TYPE_LA"] == 1) {
        var re = "ลาเต็มวัน";
      }
      return re;
    }
  }
  //   if (la == true) {
  //     if (props.timeweb_la["date_la"][data][0]["TYPE_LA"] == 2) {
  //       var re = "ลา " + props.timeweb_la["date_la"][data][0]["AMOUNT_HOUR"];
  //     } else if (props.timeweb_la["date_la"][data][0]["TYPE_LA"] == 1) {
  //       var re = "ลาเต็มวัน";
  //     }
  //   } else {
  //     var re = "";
  //   }
};

const CheckLa = (item, date) => {
  return item["START"];
};

const showClass_1 = (arr) => {
  if (arr == 0) {
    var rel =
      "px-1 py-1 text-4xl font-medium text-white font-black bg-blue-600 w-11 whitespace-nowrap dark:text-white dark:bg-gray-800";
  } else {
    var rel =
      "px-1 py-1 text-2xl font-medium text-white bg-blue-400 w-11 whitespace-nowrap dark:text-white dark:bg-gray-800";
  }
  return rel;
};

const showClass_2 = (arr) => {
  if (arr == 0) {
    var rel =
      "px-1 py-0 text-3xl font-medium text-center text-white bg-red-600 w-11 whitespace-nowrap dark:text-white dark:bg-gray-800";
  } else {
    var rel =
      "px-1 py-0 text-2xl font-medium font-black text-center text-white bg-red-400 w-11 whitespace-nowrap dark:text-white dark:bg-gray-800";
  }
  return rel;
};
const showClass_3 = (arr) => {
  if (arr == 0) {
    var rel = "px-1 py-1 text-3xl text-black font-black";
  } else {
    var rel = "px-1 py-1 text-2xl";
  }
  return rel;
};
</script>
<template>
  <Head title="Slip" />
  <GuestLayout>
    <div class="w-full p-4 mt-14 md:mx-auto">
      <section class="text-gray-700 body-font bg-slate-300W">
        <div class="flex-wrap items-center p-5 mx-auto md:flex-row">
          <div class="grid grid-cols-1 gap-4 md:grid-cols-5">
            <div class="w-full col-span-4">
              <div class="">
                <div
                  class="w-full bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700 img_bg"
                >
                  <div class="flex w-full p-4 mt-0">
                    <!-- <div>
                      <img
                        class="items-center p-2 mb-3 rounded-sm shadow-lg h- w-28"
                        src="http://192.168.17.175/imgPayslip/logo/icon_user.png"
                        alt="Bonnie image"
                      />
                    </div> -->
                    <div class="ml-3">
                      <h5 class="text-5xl font-black text-gray-900 dark:text-white">
                        code :
                        {{ props.timeweb["user"][0].user_no }}
                      </h5>
                      <h5 class="mt-3 text-2xl font-medium text-gray-900 dark:text-white">
                        Name Thai : {{ props.timeweb["user"][0].user_lname }} ({{
                          props.timeweb["user"][0].user_address
                        }})
                      </h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full col-span-1">
              <CountDown :key="componentKey" />
            </div>
            <div class="col-span-5">
              <div class="relative overflow-x-auto bg-gray-200 shadow-xl sm:rounded-lg">
                <table
                  class="w-full text-sm text-left text-gray-500 rtl:text-right dark:text-gray-400"
                >
                  <tbody>
                    <tr
                      v-for="(time, index) in timeweb['newDate']"
                      :key="timeweb['newDate']"
                      class="bg-gray-200 border-b border-white dark:border-gray-700"
                    >
                      <th scope="row" :class="showClass_1(index)">
                        {{ props.timeweb["newDate"][index] }}
                      </th>
                      <th :class="showClass_2(index)">
                        {{ myLa(index, props.timeweb["newDate"][index]) }}
                      </th>
                      <td
                        v-for="(timeshow, indext) in timeweb['date'][index]"
                        :key="timeweb['date'][index]"
                        :class="showClass_3(index)"
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
