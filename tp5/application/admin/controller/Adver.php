<?php
namespace app\admin\controller;
use \think\Controller;
class Adver extends Common
{
    public function index()
    {
    	$data = db('adver')->select();
    	$this->assign('data',$data);
      return $this->fetch();
    }
    public function add()
    {
    	if(request()->isPost()){
    	$data = input('post.');
    	$file = request()->file('pic');
    	if($file){
    		$info = $file->move(ROOT_PATH. 'public' . DS . 'uploads');
    		if($info){
    			$path = "/uploads/".$info->getSaveName();
    			$data['pic'] = $path;
    		}else{
    			echo $file->getError();
    		}
    	}
    	$data['time'] = time();
    	// dump($data);die;
    	$re = db('adver')->insert($data);
    	if($re){
    		$this->success('添加广告成功',url('index'));
    	}else{
    		$this->error('添加广告失败');
    	}
    }

      return $this->fetch();
    }
    public function edit()
    {
    	$id =input('id');
    	$ad = db('adver')->find($id);
    	$this->assign('ad',$ad);
    	if(request()->isPost()){
    		$data = input('post.');
    	$file = request()->file('pic');
    	if($file){
    		$info = $file->move(ROOT_PATH. 'public' . DS . 'uploads');
    		if($info){
    			$path = "/uploads/".$info->getSaveName();
    			$data['pic'] = $path;
    		}else{
    			echo $file->getError();
    		}
    	}
    	
    	// dump($data);die;
    	$re = db('adver')->where('id = '.$id)->update($data);
    	if($re){
    		$this->success('修改广告成功',url('index'));
    	}else{
    		$this->error('修改广告失败');
    	}
    	}
      return $this->fetch();
    }
    public function del()
    {
      	$id = input('id');
      	$re = db('adver')->delete($id);
      	if($re){
      		$this->success('广告删除成功','index');
      	}
      	else{
      		$this->error('广告删除失败');
      	}
    }
}
