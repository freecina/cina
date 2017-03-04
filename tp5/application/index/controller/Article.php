<?php
namespace app\index\controller;
use \think\Controller;
use \think\Db;
use \app\index\model\Cate;
class Article extends Controller
{
    public function _initialize()
    {
       $cate = new Cate;
        $data = $cate->catetree();
        $this->assign('data',$data);
    }
    public function article()
    {

        $id = input('id');
        db('article')->where('id', $id)->setInc('click');
        $rea = db('article')->find($id);
        $data = db('article')->order('time desc')->limit(3)->select();
        $this->assign('new',$data);
        // dump($rea);die;
        $this->assign('re',$rea);
        
        return $this->fetch('article');
    }
    public function artlist()
    {
        $data = db('article')->order('time desc')->limit(4)->select();
        $article =  Db::table('article')->alias('a')->join('cate c' ,'a.cateid = c.id','LEFT')->field('a.id,a.title,a.keywords,a.des,a.author,a.content,a.pic,a.click,a.zan,a.time,c.catename')->paginate(4);

        $this->assign(['article'=>$article,'new'=>$data]);
        return $this->fetch();
    }
    public function imglist()
    {
       $data = db('article')->order('time desc')->paginate(4);   
       $this->assign('article',$data);
        return $this->fetch();
    }
    public function page()
    {
        return $this->fetch();
    }
     public function catenew()
    {
        static $arr = array();
        $cateid = input('id');
        $art = Db::table('article')->alias('a')->join('cate c' ,'a.cateid = c.id','LEFT')->field('a.id,a.title,a.keywords,a.cateid,a.des,a.author,a.content,a.pic,a.click,a.zan,a.time,c.catename')->paginate(10);
        foreach ($art as $key => $v) {
            if($v['cateid']==$cateid){
                array_push($arr,$v);
            }
        }
        
        $data = db('article')->order('time desc')->limit(4)->select();
        // dump($arr);die;
        $this->assign(['arr'=>$arr,'new'=>$data]);
        return $this->fetch();
    }
    public function zan(){
         $id = input('id');
        db('article')->where('id', $id)->setInc('zan');
    }
}
