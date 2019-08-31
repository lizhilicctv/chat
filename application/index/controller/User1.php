<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class User1 extends Controller
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
		$data=Db::name('user')->find(session('uid'));
		$this->assign('data',$data);
		
		//把未读信息导出
		$wei=Db::name('msg')->where('toid',session('uid'))->where('isread',0)->select();
		$this->assign('wei',$wei);
		return $this->fetch();
    }

  
}
