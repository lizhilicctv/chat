<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use app\index\model\Msg;
class Index extends Controller
{
    public function index()
    {
		if(request()->ispost()){
			$data=\input('post.');
			if($data['user']=='admin'){
				$res=Db::name('admin')->where('user',$data['user'])->where('pass',md5($data['pass']))->find();
				if($res){
					session('uid', $res['id']);
					 $this->success('登陆成功', 'kefu/index');
				}else{
					$this->error('登陆失败');
				}
			}else{
				$res=Db::name('user')->where('name',$data['user'])->where('pass',md5($data['pass']))->find();
				if($res){
					session('uid', $res['id']);
					 $this->success('登陆成功', 'user1/index');
				}else{
					$this->error('登陆失败');
				}
			}
			$this->error('登陆失败');
		}
		
		
		
		return $this->fetch();
    }
	public function ajax()
	{
		$data=\input('post.');
		if($data['type']=='img'){
			$base64_image = str_replace(' ', '+', $data['data']);
			//post方式接收的数据, 加号会被替换为空格, 需要重新替换回来, 若不是post数据, 不需要执行
			if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_image, $result)){
				//定义图片储存文件目录
				$dir = './chatimg/'.date('ymd');
				//定义文件名称
				$picname = date("his") . '_' . rand(10000, 99999);
	
				if (!is_dir($dir)){
					//如果不存在就创建该目录
					mkdir($dir,0777,true);
				}
				//获取图片后缀
				if($result[2] == 'jpeg'){
					$picdir=$picname.'.jpg';
				}else{
					$picdir=$picname.'.'.$result[2];
				}
				//图片名称
				$image_url = $dir.'/'.$picdir;
				//储存图片
				$img_url = '';//图片路径
				if (file_put_contents($image_url, base64_decode(str_replace($result[1], '', $base64_image)))){
					$info = ['formid' => $data['formid'], 'toid' => $data['toid'],'data' => substr($image_url,1),'type'=>'3','isread'=>0,'time'=>date('Y-m-d H:i:s')];
					Db::name('msg')->insert($info);
					return substr($image_url,1);
				}
				return 0;
			}
		}
		if($data['type']=='text'){
			//把文字存进去
			$info = ['formid' => $data['formid'], 'toid' => $data['toid'],'data' => $data['data'],'type'=>'1','isread'=>0,'time'=>date('Y-m-d H:i:s')];
			Db::name('msg')->insert($info);
		}
		if($data['type']=='biao'){
			//把文字存进去
			$info = ['formid' => $data['formid'], 'toid' => $data['toid'],'data' => $data['data'],'type'=>'2','isread'=>0,'time'=>date('Y-m-d H:i:s')];
			Db::name('msg')->insert($info);
		}
		if($data['type']=='yi_du'){
			//把数据改成已读
			Db::name('msg')->where('toid', $data['toid'])->update(['isread' => 1]);
		}
		if($data['type']=='main_yi_du'){
			//把数据改成已读
			Db::name('msg')->where('formid', $data['formid'])->update(['isread' => 1]);
		}
		
		if($data['type']=='more'){
			//点击加载更多
			// dump($data);
			//dump(date("Y-m-d H:i:s"));
			if($data['time']==0){
				$msg=new Msg;
				$info=$msg
				->where("(formid=:formid and toid=:toid) or (formid=:toid1 and toid=:formid1)")
				->bind(['formid'=>$data['formid'],'toid'=>$data['toid'],'formid1'=>$data['formid'],'toid1'=>$data['toid']])
				->where('isread',1)->limit(5)->order('time desc')->select();

			}else{
				$msg=new Msg;
				$info=$msg
				->where("(formid=:formid and toid=:toid) or (formid=:toid1 and toid=:formid1)")
				->bind(['formid'=>$data['formid'],'toid'=>$data['toid'],'formid1'=>$data['formid'],'toid1'=>$data['toid']])
				->where('time','<',$data['time'])
				->where('isread',1)->limit(5)->order('time desc')->select();
				//dump($msg->getLastSql());
			}
			return $info;
		}
	}
  
}
