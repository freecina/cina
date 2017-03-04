<?php
namespace app\admin\controller;
use \think\Controller;
class Login extends Controller
{
    public function index()
    {
    	if(request()->isPost()){
    		$data = input('post.');

    		$re = db('admin')->where('name' , '=' , $data["name"])->find();
    		if($re){
    			if($re['pwd'] == md5($data['pwd'])){
    				session('name',$re['name']);
    				session('id',$re['id']);
    				$this->success('登录成功',url('lst/index'));
    			}else{
    				$this->error('用户名或密码错误');
    			}
    			
    		}
    		else{
    			$this->error('没有此用户');
    		}
    		return;
    	}
        return $this->fetch('login');
    }

    public function logout(){
    	session(null);
    	$this->success('退出成功',url('login/index'));
    }
}
