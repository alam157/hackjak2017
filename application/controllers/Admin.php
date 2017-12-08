<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Admin
 *
 * @author Firman
 */
class Admin extends CI_Controller{
    //put your code here
    public function index() {
        $this->load->view('cms/set_ambulance');
    }
    
    public function add_kamar($param) {
        
    }
}
