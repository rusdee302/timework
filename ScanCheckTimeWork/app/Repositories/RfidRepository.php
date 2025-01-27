<?php

namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class RfidRepository
{
    public function scan_rfid($num_card)
    {

        $num_card = substr($num_card, 4, 6);
        $data = DB::connection('sqlsrv_timeweb')
            ->table('dt_user')->where('user_card', $num_card)->get();

        if (!isset($data[0])) {
            $data = "no_user";
        } else {
            $data = trim($data[0]->user_no, ' ');
        }
        return $data;
    }

    public function user_detail($num_user)
    {
        $json_string = 'http://192.168.17.189:8080/Githup/Hrm_set_employee_entry_time_v1_1/Hrm_set_employee_entry_time_v1_1/public/api/user/' . $num_user;
        $data_json = file_get_contents($json_string);
        $data_array = json_decode($data_json);
        // dd($data_array);
        return $data_array;
    }
}
