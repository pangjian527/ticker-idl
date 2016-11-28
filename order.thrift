namespace java com.tl.rpc.order

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"


enum ORDER_STATUS{
    complete = 1,//完成
    cancel =2,//取消
}


struct Order{
    1:string id,
    2:i64 amount,
    3:string userId,
    4:string topicId,
    5:ORDER_STATUS status,
    6:i32 year,
    7:i32 stage,
    8:string result,//是否中奖
}

struct OrderResult{
    1:i32 totalCount,
    2:map<string,string> result,
}

service OrderService{

    void save(1:rpc_security.ServiceToken accessToken,2:Order order) throws (1:rpc_error.RpcException err);

    OrderResult search(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset)throws (1:rpc_error.RpcException err);

    OrderResult searchByUserId(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset,4:string userId)throws (1:rpc_error.RpcException err);


}