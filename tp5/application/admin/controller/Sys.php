<?php
namespace app\admin\controller;
use \think\Controller;
class Sys extends Common
{
    public function index()
    {
      return $this->fetch('sys');
    }
}
