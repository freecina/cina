<?php
namespace app\admin\controller;
use \think\Controller;
class Common extends Controller
{
    public function _initialize()
    {
      if(!session('id')){
      	$this->error('您还未登录',url('login/index'));
      }
    }
}
