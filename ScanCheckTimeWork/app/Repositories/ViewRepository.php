<?php

namespace App\Repositories;

use Illuminate\Support\Facades\DB;

class ViewRepository
{
    public function viwe()
    {

        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if (isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
            date_default_timezone_set("Asia/Bangkok");
        $date = date("Y-m-d");
        $time = date("H:i:s");

        $data = DB::table('view')->where('view_date', $date)->where('ip_address', $ipaddress)->get();
        if (!isset($data[0])) {
            DB::table('view')->insert(
                ['view_date' => $date, 'view' => 1, 'ip_address' => $ipaddress,'time_scan' =>  $time]
            );
            $dataf = 'y';
        } else {
            DB::table('view')->where('view_date', $date)->where('ip_address', $ipaddress)->update(array(
                'view' =>  $data[0]->view + 1,
                'time_scan' =>  $time,
            ));
            $dataf = 'n';
        }
        
    }
}
