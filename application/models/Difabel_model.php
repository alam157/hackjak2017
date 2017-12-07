<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Difabel_model
 *
 * @author Firman
 */
class Difabel_model extends CI_Model{
    
    public function get_all() {
        $result = $this->db->get('ramah_diffabel');
        return $result->result();
    }
}
