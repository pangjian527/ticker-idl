namespace java com.tl.rpc.lottery


include "common/rpc_error.thrift"
include "common/rpc_security.thrift"

struct SearchResult{
    1:i32 totalCount,
    2:list<LotteryData> result,
}

struct LotteryData{
	1:string id,
	3:i32 stage,
	4:i32 year,
	5:i32 number,
	6:i64 createTime,
	7:i64 updateTime,
	8:i64 lotteryTime,
	9:i32 flatNumber1,
	10:i32 flatNumber2,
	11:i32 flatNumber3,
	12:i32 flatNumber4,
	13:i32 flatNumber5,
	14:i32 flatNumber6,
}

service LotteryDataService{
	
	/*根据年份分页获取开奖数据*/
	SearchResult searchLotteryData(1:rpc_security.ServiceToken accessToken,2:i32 year,3:i32 limit,4:i32 offset) throws (1:rpc_error.RpcException err);

	/*开奖保存*/
	void saveLotteryData(1:rpc_security.ServiceToken accessToken,2:LotteryData lotteryData) throws (1:rpc_error.RpcException err);
}
