<?php
namespace app\index\controller;

class Index
{
    public function index()
    {
        
        return view();
    }
    public function add()
    {   static $arr = array();
        $name = input('q');
        $data =db('admin')->select();
        foreach ($data as $key => $v) {
        	if($v['name'] == $name){
        		$arr = $v;
        	}
        }
        dump($arr);
    }
}
