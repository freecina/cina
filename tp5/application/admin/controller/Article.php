<?php
namespace app\admin\controller;
use app\admin\model\Cate as cates;
use \think\Controller;
class Article extends Common
{ 
  function index()
  {
    $re = db('article')->alias('a')->join('cate c' ,'a.cateid = c.id','LEFT')->field('a.id,a.title,a.keywords,a.des,a.author,a.content,a.pic,a.click,a.zan,a.time,c.catename')->select();
    $this->assign('article',$re);
    return $this->fetch();
  }
  function edit()
  {
    $ca = new cates;

    $cate = $ca->catetree();
    $this->assign('cate',$cate);
    $id = input('id');
    $data = db('article')->find($id);
    $this->assign('ar',$data);

    if(request()->isPost()){
      
      $data = input('post.');

      $file = request()->file("pic");
      if($file){
      $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
      if($info){
        $path = "/uploads/".$info->getSaveName();
        $data['pic']=$path;
      }else{

        echo $file->getError();
      }}
      
      
      
      // dump($data);die;
      $re = db('article')->where('id = '.$id)->update($data);
      if($re){
        $this->success('修改文章成功',url('index'));
      }else{
        $this->error('修改文章失败');
      }
    }
    return $this->fetch();
  }
  function add()
  {
    $ca = new cates;

    $cate = $ca->catetree();
    $this->assign('cate',$cate);
    if(request()->isPost()){
      $cate = db('cate')->find(input('cateid'));
      $data = [
      'cateid'=>$cate['catename'],
      'title'=>input('title'),
      'keywords'=>input('keywords'),
      'des'=>input('des'),
      'author'=>input('author'),
      'content'=>input('content'),
      'time'=>time(),
      ];

      $file = request()->file("pic");
      if($file){
      $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
      if($info){
        $path = "/uploads/".$info->getSaveName();
        $data['pic']=$path;
      }else{

        echo $file->getError();
      }}
      
      
      
      // dump($data);die;
      $re = db('article')->insert($data);
      if($re){
        $this->success('添加文章成功',url('index'));
      }else{
        $this->error('添加文章失败');
      }
    }
    return $this->fetch();
  }
  public function del()
  {
    $id = input('id');
    $re = db('article')->delete($id);
    if($re){
      $this->success('文章删除成功',url('index'));
    }else{
      $this->error('文章删除失败');
    }
  }

}
