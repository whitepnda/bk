<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class KartuPanggilan_model extends CI_Model {

    function show(){
        $this->db->where('bk_kartu_status_konseling.status',0);
        $this->db->join('bk_student','bk_student.id_student=bk_kartu_status_konseling.id_student');
        $query=$this->db->get('bk_kartu_status_konseling');
        return $query->result();
    }

     function register($data){
        $query=$this->db->insert('bk_kartu_status_konseling',$data);
        if($query){
            return TRUE;
        }else{
            return FALSE;
        }
    }
 function edit($id){
        if($id!=='all'){
            $this->db->where('id_kartu_konseling',$id);
        }
        $this->db->join('bk_student','bk_student.id_student=bk_kartu_status_konseling.id_student');
        $query=$this->db->get('bk_kartu_status_konseling');
        return $query->result();
    }


    function update($data,$id)
    {
        $this->db->where('id_kartu_konseling',$id);
        $query=$this->db->update('bk_kartu_status_konseling',$data);
        if($query){
            return TRUE;
        }else{
            return FALSE;
        }
    }

    function delete($id){
        $this->db->where('id_kartu_konseling',$id);
        $data=array(
        'status'=>1 
        );
        $query=$this->db->update('bk_kartu_status_konseling',$data);
         if($query){
            return TRUE;
        }else{
            return FALSE;
        }
    }

}

/* End of file KartuPanggilan_model.php */
/* Location: ./application/models/KartuPanggilan_model.php */