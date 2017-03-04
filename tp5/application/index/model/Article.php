<?php
namespace app\index\model;
use \think\Model;
class Article extends Model
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
