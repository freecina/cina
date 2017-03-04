<?php
namespace app\admin\controller;
use app\admin\model\Cate as cates;
use \think\Controller;
class Cate extends Common
{ 
    protected $beforeActionList = [
       
        'delch' => ['only'=>'del'],
        ];

    public function index()
    {
    	$ca = new cates;
    	$re = $ca->catetree();

    	$this->assign('cate',$re);
      return $this->fetch();
    }
    public function add()
    {
    	$ca = new cates;
    	$cate = $ca->catetree();
    	$this->assign('cate',$cate);
      if(request()->isPost()){
      	$data = input('post.');
      	$re = db('cate')->insert($data);
      	if($re){
      		$this->success('栏目添加成功',url('index'));
      	}else{
      		$this->error('栏目添加失败');
      	}
      	return;
      }

      return $this->fetch();
    }
    public function del()
    {
    	$id=input('id');
    	$re = db('cate')->delete($id);
    	if($re){
    		$this->success('删除成功',url('index'));
    	}else{
    		$this->error('删除失败');
    	}
    } 
    public function delch()
    {
      $id = input('id');
      $ca = new cates;
      $idchi = $ca->idchi($id);
      // dump($idchi);die;
      if($idchi){
        db('cate')->delete($idchi);
      }
    }
    public function edit()
    {
    	$ca = new cates;
    	$cate = $ca->catetree();
    	$this->assign('cate',$cate);

    	$id=input('id');
    	$edit = db('cate')->find($id);
    	$this->assign('edit',$edit);

      if(request()->isPost()){
      	$data = input('post.');
      	$re = db('cate')->where('id = ' . $id)->update($data);
      	if($re){
      		$this->success('栏目修改成功',url('index'));
      	}else{
      		$this->error('栏目修改失败');
      	}
      	return;
      }

      return $this->fetch();
    }
}
