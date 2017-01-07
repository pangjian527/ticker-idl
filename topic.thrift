namespace java com.tl.rpc.topic

include "common/rpc_error.thrift"
include "common/rpc_security.thrift"

enum TOPIC_STATUS{
    OPEN =1,
    CLOSE = 0,
}

enum TOPIC_TYPE{
    CHARGE =1,
    FREE = 0
}

struct Topic{
    1:string title,
    2:string content,
    3:string userId,
    4:i32 readCount,
    5:i32 replyCount,
    6:TOPIC_STATUS status
    7:TOPIC_TYPE type,
    8:i32 year,
    9:i32 stage,
    10:i64 createTime,
    11:string id,
    12:i64 balance,
    13:string expect,
    14:i64 updateTime
}

struct SearchTopicResult{
    1:i32 totalCount,
    2:list<Topic> result,
}


service TopicService{

    /*发帖*/
    void saveTopic(1:rpc_security.ServiceToken accessToken,2:Topic topic)  throws (1:rpc_error.RpcException err);

    /*获取主贴*/
    SearchTopicResult searchTopic(1:rpc_security.ServiceToken accessToken,2:i32 limit,3:i32 offset,4:TOPIC_STATUS status,5:string mobile)throws (1:rpc_error.RpcException err);

    Topic getByTopicId(1:rpc_security.ServiceToken accessToken,2:string topicId)  throws (1:rpc_error.RpcException err);

}