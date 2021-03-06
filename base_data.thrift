namespace java com.tl.rpc.base

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"

struct BaseData{
	1:string id,
	3:i32 number,
	4:i32 year,
	5:string zodiacCode,//生肖编码
	6:string colorCode,
	7:i32 seq
}

service BaseDataService{

	void saveBaseData(1:rpc_security.ServiceToken accessToken,2:BaseData baseData) throws (1:rpc_error.RpcException err);

	/*根据年份获取到所有的配置*/
    list<BaseData> searchBaseData(1:rpc_security.ServiceToken accessToken,2:i32 year) throws (1:rpc_error.RpcException err);

    BaseData getBaseDataByNumber(1:rpc_security.ServiceToken accessToken,2:i32 number,3:i32 year) throws (1:rpc_error.RpcException err);
	
}
