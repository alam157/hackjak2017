<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('puskesmas_model');
    }

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function _index() {
        $ch = curl_init();
        curl_setopt($ch,CURLOPT_HTTPHEADER,array(
            'Authorization: LdT23Q9rv8g9bVf8v/fQYsyIcuD14svaYL6Bi8f9uGhLBVlHA3ybTFjjqe+cQO8k',
            'Content-Type: application/json',
            'Accept: application/json'
            ));
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_URL, "http://api.jakarta.go.id/v1/rumahsakitumum");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $result = json_decode(curl_exec($ch));
        $puskesmas = array();
        
        foreach ($result->data as $key => $value){
            
            $insert = array(
                'nama' => $value->nama_rsu,
                'alamat' => $value->location->alamat,
                'latitude' => $value->location->latitude,
                'longitude' => $value->location->longitude,
                'telp' => $value->telepon[0],
                'fax' => $value->faximile[0],
                'email' => $value->email,
                'website' => $value->website,
                'type' => 'rs'
            );
            
            $this->puskesmas_model->insert($insert);
        }
        
        
//        $data['puskesmas'] = $puskesmas;
//        $this->load->view('welcome_message', $data);
    }
    
    public function index(){
        $result = $this->puskesmas_model->get_all();
        $data['puskesmas'] = $result;
        
        $this->load->view('welcome_message', $data);
    }

}
