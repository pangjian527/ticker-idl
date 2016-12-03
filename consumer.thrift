namespace java com.tl.rpc.consumer

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"


enum CONSUMER_STATUS{
	EFFECTIVE =1,
	INVALID = 0,
}

struct Consumer{
	1:string id,
	2:string mobile,
	3:i64 createTime,
	4:i64 updateTime,
	5:i64 balance,
	6:CONSUMER_STATUS status,
	7:string pwd,
	8:string refereeId
}

struct SearchResult{
    1:i32 totalCount,
    2:list<Consumer> result,
}

service ConsumerService{

	/*根据ID获取用户*/
	Consumer getByMobile(1:rpc_security.ServiceToken serviceToken,2:string mobile) throws (1:rpc_error.RpcException err);

	Consumer getById(1:rpc_security.ServiceToken serviceToken,2:string id) throws (1:rpc_error.RpcException err);


	void saveConsumer(1:rpc_security.ServiceToken serviceToken,2:Consumer consumer) throws (1:rpc_error.RpcException err);

	SearchResult searchConsumer(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset) throws (1:rpc_error.RpcException err);



}