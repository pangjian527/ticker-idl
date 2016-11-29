namespace java com.tl.rpc.reply

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"

enum REPLY_STATUS{
    OPEN =1,
    CLOSE = 0,
}

struct Reply{
    1:string id,
    2:string content,
    3:string userId,
    4:i64 createTime
    5:REPLY_STATUS status
}

struct SearchReplyResult{
    1:i32 totalCount,
    2:list<Reply> result,
}

service ReplyService{

    /*回帖*/
    void saveReply(1:rpc_security.ServiceToken accessToken,2:Reply reply)  throws (1:rpc_error.RpcException err);

    /*根据主贴获取跟帖*/
    SearchReplyResult searchReplyByTopicId(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset,4:string topicId)throws (1:rpc_error.RpcException err);

}