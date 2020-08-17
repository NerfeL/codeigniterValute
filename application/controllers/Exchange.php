<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Exchange extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('exchange_model');
    }
    
    public function incliner($nominal, $name, $value) {

        $rubel = ( (floor($value) % 10 == 1) && (floor($value) != 11) ) ? ' рублю' : ' рублям';

        if($nominal == 1) {
            if(mb_substr($name, -1) == 'а'){
                $equal = 'равна ';
            }
            else {
                $equal = 'равен ';
            }
        }
        else {
            $equal = 'равны ';
        }
        $str = $equal . $value . $rubel;
        return $str;
    }
    public function index() {
        $headers = getallheaders();
        $data['valute'] = $this->exchange_model->getValute();
        // $data['randElement'] = $data['valute'][rand(0, count($data['valute']))];
        $data['json_return'] = Array(
            $data['valute']['CharCode'] => $data['valute']['Nominal'] . " " . mb_strtolower($data['valute']['Name']) . " " . $this->incliner($data['valute']['Nominal'], $data['valute']['Name'], $data['valute']['Value'])
        );
        if($headers['X-API-KEY'] == "123321") {
            $this->load->view('valute/index', $data);
        }
        else {
            $this->load->view('errors/invalid', $data);
        }
    }

    public function view($CharCode = NULL) {
        $headers = getallheaders();
        $data['valute_item'] = $this->exchange_model->getValute($CharCode);

        if(empty($data['valute_item'])) {
            show_404();
        }

        $data['json_return'] = Array(
            $data['valute_item']['CharCode'] => $data['valute_item']['Nominal'] . " " . mb_strtolower($data['valute_item']['Name']) . " " . $this->incliner($data['valute_item']['Nominal'], $data['valute_item']['Name'], $data['valute_item']['Value'])
        );
        if($headers['X-API-KEY'] == "123321") {
            $this->load->view('valute/view', $data);
        }
        else {
            $this->load->view('errors/invalid', $data);
        }
        
    }

    public function updater() { 

        $res = json_decode(file_get_contents("https://www.cbr-xml-daily.ru/daily_json.js"), true);
        $i = 0;
        foreach($res['Valute'] as $key => $value) {
            $dbArr[$i]['CharCode'] = $key;
            $dbArr[$i]['Nominal'] = $value['Nominal'];
            $dbArr[$i]['Value'] = $value['Value'];
            $dbArr[$i]['Name'] = $value['Name'];
            $i++;
        }
        $data['dbArr'] = $dbArr;
        $this->exchange_model->updateValutes($dbArr);
        $this->load->view('valute/updater', $data);
    }

}