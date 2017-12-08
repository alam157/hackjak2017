<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Home
 *
 * @author Firman
 */
class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('puskesmas_model');
        $this->load->model('difabel_model');
    }

    //put your code here
    function index() {
        $this->load->view('home');
    }

    public function maps_terdekat() {
        $result = $this->puskesmas_model->get_all();
        $data['puskesmas'] = $result;

        $this->load->view('welcome_message', $data);
    }
    
    public function detail($id) {
        $result = $this->puskesmas_model->detail($id);
        $data['data'] = $result;
        $this->load->view('detail', $data);
    }
    
    public function ambulance(){
        $result = $this->puskesmas_model->get_all();
        $data['puskesmas'] = $result;

        $this->load->view('ambulance', $data);
    }
    
    public function difabel() {
        $result = $this->difabel_model->get_all();
        $data['data'] = $result;

        $this->load->view('diffabel', $data);
    }
    
    public function add_difabel() {
        $this->load->view('add_difabel');
    }

}
