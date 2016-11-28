namespace java com.tl.rpc.sys

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"


enum SYS_USER_STATUS{
	EFFECTIVE =1,
	INVALID = 0,
}

struct SysUser{
	1:string id,
	2:string account,
	3:i64 createTime,
	4:i64 updateTime,
	5:string role,
	6:SYS_USER_STATUS status,
	7:string pwd
}

service SysUserService{

	/*根据ID获取用户*/
	SysUser getByAccount(1:rpc_security.ServiceToken serviceToken,2:string account) throws (1:rpc_error.RpcException err);
	
}
