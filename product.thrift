namespace java com.tl.rpc.product

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"

struct SearchProductResult{
    1:i32 totalCount,
    2:list<Product> result,
}

enum PRODUCT_STATUS{
    SALE=0,
    OPEN=1,
}

struct Product{
    1:string id,
    2:string expect,
    3:i64 balance,
    4:i64 createTime,
    5:i32 year,
    6:i32 stage,
    7:i64 updateTime,
    8:PRODUCT_STATUS status,
    9:string title,
    10:string mobile,
    11:i32 virtualCount,
    13:string probability
}

service ProductService{
    /*发布信息*/
    void saveProduct(1:rpc_security.ServiceToken accessToken,2:Product product)  throws (1:rpc_error.RpcException err);

    /*查询*/
    SearchProductResult searchProduct(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset)throws (1:rpc_error.RpcException err);

    Product getByProductId(1:rpc_security.ServiceToken accessToken,2:string productId)  throws (1:rpc_error.RpcException err);


}