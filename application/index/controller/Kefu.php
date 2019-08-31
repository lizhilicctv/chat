<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Kefu extends Controller
{
	public function _empty($name)
    {
       $this->redirect('index/index');
    }
    
    public function index()
    {
		if(!session('uid')){
			$this->redirect('index/index');
		}
		$data=Db::name('user')->select();
		$this->assign('data',$data);
		//把未读信息导出
		$wei=Db::name('msg')->where('toid','main')->where('isread',0)->select();
		$this->assign('wei',$wei);
		return $this->fetch();
    }
}
