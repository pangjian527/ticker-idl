namespace java com.tl.rpc.msg

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"


enum MSG_STATUS{
	EFFECTIVE =1,
    INVALID = 0,
}

struct SearchResult{
    1:i32 totalCount,
    2:list<Msg> result,
}

struct Msg{
	1:string id,
	2:string mobile,
	3:string content,
	4:i64 createTime,
	5:MSG_STATUS status
}

service MsgService{
	
	void sendMsg(1:rpc_security.ServiceToken accessToken,2:Msg msg) throws (1:rpc_error.RpcException err);

	list<Msg> searchMsg(1:rpc_security.ServiceToken accessToken,2:string mobile) throws (1:rpc_error.RpcException err);

}
