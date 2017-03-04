<?php
namespace app\index\controller;
use \think\Controller;
use \think\Db;
use \app\index\model\Cate;
class Index extends Controller
{
	public function _initialize()
    {
      $cate = new Cate;
        $data = $cate->catetree();
        $this->assign('data',$data);
    }
    public function index()
    {
        // $re = db('article')->where('keywords','like','%gan%')->select();
        // dump($re);die;
        $jj = Db::table('article')->alias('a')->join('cate c' ,'a.cateid = c.id','LEFT')->field('a.id,a.title,a.keywords,a.des,a.author,a.content,a.pic,a.click,a.zan,a.time,c.catename')->paginate(4);
        // dump($jj);die;
    	$data = db('article')->order('time desc')->limit(4)->select();
        $article = db('article')->paginate(4);
        $ad = db('adver')->limit(1)->select();
        foreach ($ad as $k => $v) {

            $arr=$v;
        }

        // dump($arr);die;
    	$this->assign(['pic'=>$data,'ad'=>$arr,'article'=>$jj]);
        return $this->fetch();
    }
}
