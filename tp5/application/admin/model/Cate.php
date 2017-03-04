<?php
namespace app\admin\model;
use \think\Model;
class Cate extends Model
{
    public function catetree()
    {
      $data = $this->select();
     return $this->sorts($data);
      

    }
    public function sorts($data,$pid=0,$level=0)
    {
      static $arr = array();
      foreach ($data as $k => $v) {
        if($v['pid']==$pid){
          $v['level']=$level;
          $arr[] = $v;
           $this->sorts($data,$v['id'],$level+1);

        }
      }
      return $arr;

    }
    public function idchi($id)
    {
        $data = $this->select();
       return $this->idch($data,$id);
    }
    public function idch($data,$id)
    {
      static $arr = array();
      foreach ($data as $k => $v) {
        if($v['pid']==$id){
          $arr['id']=$v['id'];
          $this->idch($data,$v['id']);

        }
      }
      return $arr;
    }
}
