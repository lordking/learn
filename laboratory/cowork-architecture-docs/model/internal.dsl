internalCoworkSystem = softwareSystem "协作系统" {

    // group "协作客户端" {
        maxhub_mobile_client = container "协作移动客户端"
        maxhub_work_framework = container "协作PC客户端"
    // }

    // group "协作Web服务" {
        maxhub_work_bff = container "协作Web服务"
        maxhub_work_tool_note = container "协作笔记Web服务"
        maxhub_work_mhe = container "协作表格Web服务"
        maxhub_work_official_website = container "协作官网"
    // }

    // group "协作后端" {
        cowork = container "协作后台"
        audio_video = container "音视频服务"
        live_gataway = container "视频录制服务"
        file_colloction = container "文件后台服务"
        cooperation_search = container "协作搜索服务"
        notebook = container "笔记服务"
        online_table_server = container "表格服务"
        maxhub_todo = container "待办服务"
        office = container "office" "office文件预览服务"
        office_storage = container "office-storage" "office文件挂载服务"
        push_server_v2 = container "协作通知服务"
    // }

    // group "基础设施" {
        mysql_maxhub_master_3313 = container "mysql-maxhub-master-3313" "mysql-maxhub-master-3313.hz.cvte.cn:3313" "MySQL" "Database"
        es_cluster_02 = container "es_cluster_02" "es-cluster-02.cvtapi.com" "ElasticSearch" "Database"
        redis_master_6 = container "redis_master_6" "redis-master-6.gz.cvte.cn:6384" "Redis" "Database"
        redis_maxhub_6757 = container "redis_maxhub_6757" "redis-maxhub-6757.hz.cvte.cn" "Redis" "Database"
        redis_cowork_6821_master = container "redis_cowork_6821_master" "redis-cowork-6821-master.hz.paas.cvtecs.com" "Redis" "Database"
        redis_maxhub_todo_6822_master = container "redis_maxhub_todo_6822_master" "redis-cowork-6821-master.hz.paas.cvtecs.com" "Redis" "Database"

        dubbo = container "Dubbo" "Zookeeper提供地址" "Dubbo" "Middleware"
        zookeeper_cluster_1 = container "zookeeper-cluster-1" "zookeeper-cluster-1.gz.cvte.cn:2181" "Zookeeper" "Middleware"
        rabbitmq = container "rabbitmq" "rabbitmq.gz.cvte.cn" "RabbitMQ" "Middleware"
        rocketmq_namesrv_1 = container "rocketmq-namesrv-1" "rocketmq-namesrv-1.gz.cvte.cn:9876" "RocketMQ" "Middleware"

        nfs_audio_video = container "录制服务缓存" "挂载点：录制服务缓存" "NFS" "storage"
        nfs_office = container "NFS/office"  "office文件缓存，挂载点：office" "NFS" "storage"
    // }      
}