<?php
namespace app\index\controller;
use think\Controller;
use think\Request;

class Error  extends Controller
{
    public function index(Request $request)
    {
        $this->redirect('index/index');
    }
    
    
}