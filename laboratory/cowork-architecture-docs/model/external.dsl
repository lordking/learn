// group "MAXHUB共享业务" {
    pivot = softwaresystem "pivot" "MAXHUB账号系统，提供企业信息、企业通讯录、账号登录、注册、认证服务" "Existing System"
    airdisk = softwaresystem "airdisk" "MAXHUB云盘，提供扫码带走、个人文稿存储服务" "Existing System"
// }

// group "MAXHUB会议业务" {
    meeting = softwaresystem "meeting" "MAXHUB会议管理服务，提供会议创建或预约、查询等服务" "Existing System"
    room = softwaresystem "room" "会议室管理服务，提供会议室的CRUD等服务，以及其关联的设备服务" "Existing System"
// }

// group "鲸云" {
    cstore = softwaresystem "cstore" "鲸云文件存储服务，提供云端文件的上传、下载服务" "Existing System"
    shorturl = softwaresystem "shorturl" "短链接服务，提供把URL路径转换为更短的链接" "Existing System"
    cloud_static = softwaresystem "cloud_static" "为前端打包的静态文件提供CDN加速服务" "Existing System"
    sentryHost = softwaresystem "sentryHost" "提供前端异常日志上报" "Existing System"
    friday = softwaresystem "friday" "提供用户行为的数据埋点、采集、报表服务" "Existing System"
// }

mindlinker = softwareSystem "mindlinker" "ML后台API服务，提供迈聆音视频后台API服务" "Existing System"
seewoim = softwareSystem "希沃IM服务" "希沃IM服务，提供互联网即时消息推送服务" "Existing System"
seewlive = softwareSystem "希沃直播服务" "" "Existing System"
tingwu = softwareSystem "tingwu" "听悟语音转写服务，提供阿里的实时语音转文字、会议智能摘要服务" "Existing System"
email = softwareSystem "邮件服务" "" "Existing System"
sms = softwareSystem "手机短信推送服务" "" "Existing System"
wxmsgpush = softwareSystem "微信公众号消息推送" "" "Existing System"