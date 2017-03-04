<?php  
namespace app\admin\validate;
use think\Validate;
class Admin extends Validate
{
protected $rule = [
'name' => 'require|max:25|unique:admin',
'pwd' => 'require',
];

protected $message=[
'name.require' => '名称不能为空',
'name.max'=>'名称不能超过25个字符',
'name.unique'=>'名称已经存在了',
'pwd.require'=>'密码不能为空',

];

}