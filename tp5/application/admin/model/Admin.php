<?php
namespace app\admin\model;
use \think\Model;
class Admin extends Model
{
    public function addadmin($data)
    {
      if(empty($data) || !is_array($data)){
      	return false;


      }
      $re = $this->save($data);
      if($re){
      	return true;
      }else{
      	return false;
      }

    }
}
