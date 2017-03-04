<?php
namespace app\admin\controller;
use \think\Controller;
use app\admin\model\Admin as dmin;
class Lst extends Common
{
    public function index()
    {

      $re=db('admin')->paginate(2);
      // dump($re);die;
      $this->assign('re',$re);
      return view('list');
    }
    public function add()
    {
      if(request()->isPost()){
        $data = input('post.');
        
        
        $vali = validate('Admin');

        if($vali->check($data)){
          $data['pwd']=md5($data['pwd']);
          $re = db('admin')->insert($data);
        if($re){
              $this->success('添加用户成功',url('index'));
        }else{
              $this->error('添加用户失败');
        }
        return;
      }else{
        return $this->error($vali->getError());
      }

      }
      return view();
    }
     public function edit()
    {
      return view();
    }
     public function delete()
    { 
      $id=input('id');
      if($id==1){
        $this->error('初始管理员不能删除');
      }else{
      $re = db('admin')->delete($id);
      if($re){
        return $this->success('删除成功',url('index'));
      }else{
        return $this->error('删除失败');
      }}
    }
    public function useredit()
    {
      $re=db('admin')->find(input('id'));
      $this->assign('re',$re);
      if(request()->isPost()){
        $data = input('post.');
        $data['pwd']=md5($data['pwd']);
        $res = db('admin')->where('id = '.input('id'))->update($data);
        if($res){
          return $this->success('修改用户成功',url('index'));
        }else{
          $this->error('修改用户失败');
        }
      }
      return view();
    }



}
