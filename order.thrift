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
    4:string productId,
    5:ORDER_STATUS status,
    6:i32 year,
    7:i32 stage,
    8:string result,//是否中奖
    9:i64 createTime,
}

struct OrderResult{
    1:i32 totalCount,
    2:list<Order> result,
}

service OrderService{

    void saveOrder(1:rpc_security.ServiceToken accessToken,2:Order order) throws (1:rpc_error.RpcException err);

    OrderResult searchOrder(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset)throws (1:rpc_error.RpcException err);

    OrderResult searchOrderByUserId(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset,4:string userId)throws (1:rpc_error.RpcException err);

    i32 totalCountByProductId(1:rpc_security.ServiceToken accessToken,2:string productId) throws (1:rpc_error.RpcException err);

    Order getOrderByProductId(1:rpc_security.ServiceToken accessToken,2:string productId) throws (1:rpc_error.RpcException err);
}