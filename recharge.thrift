namespace java com.tl.rpc.recharge

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"

struct SearchResult{
    1:i32 totalCount,
    2:list<Recharge>,
}

struct Recharge{
    1:string id,
    2:string userId,
    3:i64 amount,
    4:i64 giveAmount,
    5:i64 createTime,
    6:string source,
}

service RechargeService{

    /*充值*/
    void save(1:rpc_security.ServiceToken accessToken,2:Recharge Recharge) throws (1:rpc_error.RpcException err);

    /*获取充值记录*/
    SearchResult search(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset,4:string userId) throws (1:rpc_error.RpcException err);
}