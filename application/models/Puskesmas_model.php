<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Puskesmas_model extends CI_Model {
    
    public function insert($data){
        $this->db->insert('MST_PUSKESMAS', $data);
    }
    
    public function get_all() {
        $result = $this->db->get('MST_PUSKESMAS');
        return $result->result();
    }
    
    public function detail($id) {
        $this->db->where('id', $id);
        $result = $this->db->get('MST_PUSKESMAS');
        return $result->row();
    }
}
