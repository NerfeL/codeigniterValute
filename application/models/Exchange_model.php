<?php

class Exchange_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function getValute($CharCode = FALSE) {
        if($CharCode === FALSE) {
            $count = $this->db->query('SELECT COUNT(*) FROM currencies;');

            $query = $this->db->get_where('currencies', array('id' => rand(1, $count->row_array()['COUNT(*)'])));
            return $query->row_array();

            // $query = $this->db->get('currencies');
            // return $query->result_array();
        }

        $query = $this->db->get_where('currencies', array('CharCode' => $CharCode));
        return $query->row_array();
    }

    public function updateValutes($dataArr) {
        $this->db->update_batch('currencies', $dataArr, 'CharCode');
    }

}