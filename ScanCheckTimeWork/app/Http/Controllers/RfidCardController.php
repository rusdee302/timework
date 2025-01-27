<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;
use Inertia\Response;
use App\Repositories\RfidRepository;
use App\Repositories\ViewRepository;
use Illuminate\Support\Facades\DB;


class RfidCardController extends Controller
{
    protected $rfidRepo;
    protected $viewRepo;

    public function __construct(RfidRepository $rfidRepo,ViewRepository $viewRepo)
    {
        $this->rfidRepo = $rfidRepo;
        $this->viewRepo = $viewRepo;
    }

    public function Welcome(): Response
    {
 
    //dd($ipaddress);
        return Inertia::render('Welcome');
    }

    public function post_rfid(Request $request): RedirectResponse
    {
        // $data = $this->rfidRepo->scan_rfid($request->rfid);
        $data = $request->rfid;
        return Redirect::route('rfid.show', [$data]);
    }

    public function show_slip($user_number): Response
    {
        $this->viewRepo->viwe();
        $row = 18;
        // $json_string = 'http://192.168.17.189:8080/PaySlip/PaySlip/public/api/ScanCheckTime/' . $user_number;
        $json_string = 'http://192.168.17.171:8080/api/api-sif/api-sif/public/api/user/scan/rfid/' . $row . '/' . $user_number;
        // $data_json = file_get_contents($json_string);
       // $data_array = json_decode($data_json);
        if (($data_json = @file_get_contents($json_string)) === false) {
            return Inertia::render('ShowNotData', ['timeweb' => 'Not Data']);
        } else {
            $data_json = file_get_contents($json_string);
            $data_array = json_decode($data_json);
        }
        // http://127.0.0.1:8000/api/user/scan/rfid/leave/20/001447295522055035
        $json_string_la = 'http://192.168.17.171:8080/api/api-sif/api-sif/public/api/user/scan/rfid/leave/' . $row . '/' . $user_number;
        //$data_json_la = file_get_contents($json_string_la);
        //$data_array_la = json_decode($data_json_la);
        if (($data_json_la = @file_get_contents($json_string_la)) === false) {
            return Inertia::render('ShowNotData', ['timeweb' => 'Not Data']);
        } else {
            $data_json_la = file_get_contents($json_string_la);
            $data_array_la = json_decode($data_json_la);
        }

        
        // dd($data_array, $data_array_la);
        if ($data_array != "no_user") {
            if ($data_array->count == 1) {
                krsort($data_array->newDate);
                krsort($data_array->date);
                foreach ($data_array->newDate as $key => $value) {
                    $data_array->newDate[$row - $key] = $value;
                }
                foreach ($data_array->date as $key => $value) {
                    $data_array->date[$row - $key] = $value;
                }
                return Inertia::render('ShowTime', ['timeweb' => $data_array, 'timeweb_la' => $data_array_la]);
            } else {

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

                $er = 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user ' . $data_array->count . ' แถว';
                DB::table('scan_rfid_error')->insert(
                    ['number_card' => $user_number, 'ip_address' => $ipaddress, 'note' => $er]
                );
                krsort($data_array->newDate);
                krsort($data_array->date);
                foreach ($data_array->newDate as $key => $value) {
                    $data_array->newDate[$row - $key] = $value;
                }
                foreach ($data_array->date as $key => $value) {
                    $data_array->date[$row - $key] = $value;
                }
                return Inertia::render('ShowTime', ['timeweb' => $data_array, 'timeweb_la' => $data_array_la]);
            }
        } else {
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

            $er = 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว';
            DB::table('scan_rfid_error')->insert(
                ['number_card' => $user_number, 'ip_address' => $ipaddress, 'note' => $er]
            );
            return Inertia::render('ShowNotData', ['timeweb' => 'Not Data']);
        }
    }

    public function show_slip_error($user_number): Response
    {
        // dd($user_number);

        return Inertia::render('ShowSlip');
    }
}
