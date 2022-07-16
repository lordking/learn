workspace {

    !docs ./docs

    model {
        
        // =========== 定义元素 =========== //
        user = person "用户"
        
        enterprise "协作系统全景图" {

            !include model/internal.dsl

            !include model/external.dsl
        }

        // =========== 描述领域内的系统关系 =========== //
        // 用户
        user -> maxhub_mobile_client "使用"
        user -> maxhub_work_framework "使用"
        user -> maxhub_work_official_website "使用"
        
        // 移动客户端
        maxhub_mobile_client -> maxhub_work_bff

        // PC客户端
        maxhub_work_framework -> maxhub_work_bff
        maxhub_work_framework -> maxhub_work_tool_note
        maxhub_work_framework -> maxhub_work_mhe
        maxhub_work_framework -> live_gataway

        // 协作Web服务
        maxhub_work_bff -> cowork "HTTP"
        maxhub_work_bff -> audio_video "HTTP"
        maxhub_work_bff -> cooperation_search
        maxhub_work_bff -> live_gataway
        maxhub_work_bff -> office "[HTTP]"
        maxhub_work_bff -> office_storage "[HTTP]"
        maxhub_work_bff -> push_server_v2 "查询消息\n[HTTP]"

        // 协作笔记Web服务
        maxhub_work_tool_note -> cowork

        // 协作表格Web服务
        maxhub_work_mhe -> cowork
        maxhub_work_mhe -> online_table_server

        // 协作后台核心服务
        cowork -> audio_video "HTTP"
        cowork -> file_colloction "HTTP"
        cowork -> online_table_server "HTTP"
        cowork -> maxhub_todo "HTTP"
        cowork -> notebook "HTTP"
        cowork -> push_server_v2 "发送消息[HTTP]"

        // 音视频服务
        // audio_video -> live_gataway

        // 协作文件服务
        file_colloction -> office

        // =========== 描述基础设施的系统关系 =========== //
        // 协作Web服务
        maxhub_work_bff -> redis_master_6

        // 协作后台核心服务
        cowork -> mysql_maxhub_master_3313
        cowork -> redis_maxhub_6757
        cowork -> rocketmq_namesrv_1
        cowork -> redis_cowork_6821_master
        cowork -> rabbitmq
        rabbitmq -> pivot
        rabbitmq -> meeting
        rabbitmq -> notebook
        rocketmq_namesrv_1 -> audio_video
        rocketmq_namesrv_1 -> maxhub_todo
        rocketmq_namesrv_1 -> file_colloction

        // 音视频服务
        audio_video -> nfs_audio_video
        audio_video -> dubbo "发送消息给希沃直播服务[Dubbo SDK]"
        audio_video -> zookeeper_cluster_1 "[ZK sdk]"
        dubbo -> seewlive
        zookeeper_cluster_1 -> dubbo "发现Dubbo服务"
        audio_video -> mysql_maxhub_master_3313 "[maxhub_audio_video]"

        // 视频录制服务
        live_gataway -> nfs_audio_video "文件系统"
        live_gataway -> mysql_maxhub_master_3313 "[maxhub_audio_video]"

        // 协作文件服务
        file_colloction -> mysql_maxhub_master_3313
        file_colloction -> rocketmq_namesrv_1 "[HTTP]"

        // 协作全文搜索服务
        cooperation_search -> rocketmq_namesrv_1
        cooperation_search -> es_cluster_02
        cooperation_search -> mysql_maxhub_master_3313

        // 协作笔记服务
        notebook -> redis_maxhub_6757
        notebook -> rocketmq_namesrv_1

        // 协作待办服务
        maxhub_todo -> mysql_maxhub_master_3313
        maxhub_todo -> redis_maxhub_todo_6822_master
        maxhub_todo -> rabbitmq
        maxhub_todo -> rocketmq_namesrv_1

        // 协作Office文件预览服务
        office -> nfs_office

        // 协作Office文件临时存储服务
        office_storage -> nfs_office "[文件系统]"

        // 协作通知服务
        push_server_v2 -> mysql_maxhub_master_3313 "[HTTP]"

        // =========== 描述领域外的系统关系 =========== //
        // 协作Web服务
        maxhub_work_bff -> pivot
        maxhub_work_bff -> airdisk
        maxhub_work_bff -> meeting
        maxhub_work_bff -> room
        maxhub_work_bff -> friday
        maxhub_work_bff -> shorturl
        maxhub_work_bff -> cloud_static
        maxhub_work_bff -> sentryHost

        // 协作笔记Web服务
        maxhub_work_tool_note -> cloud_static
        maxhub_work_tool_note -> seewoim

        // 协作表格Web服务
        maxhub_work_mhe -> airdisk
        maxhub_work_mhe -> online_table_server
        maxhub_work_mhe -> seewoim

        // 协作官网
        maxhub_work_official_website -> friday

        // 协作后台核心服务
        cowork -> room
        cowork -> meeting
        cowork -> seewoim
        cowork -> pivot
        cowork -> mindlinker

        // 音视频服务
        audio_video -> tingwu "[HTTP/Tingwu SDK]"
        audio_video -> cstore "[Cstore SDK]"
        audio_video -> mindlinker "[HTTP]"

        // 协作笔记服务
        notebook -> pivot
        notebook -> cstore
        notebook -> seewoim

        // 协作待办服务
        maxhub_todo -> pivot
        maxhub_todo -> airdisk

        // 协作推送服务
        push_server_v2 -> seewoim
        push_server_v2 -> email
        push_server_v2 -> wxmsgpush
        push_server_v2 -> sms
    }

    views {

        systemlandscape "SystemLandscape" {
            include *
            autoLayout
        }

        systemContext internalCoworkSystem "SystemContext" {
            include *
            autoLayout
        }

        container internalCoworkSystem "Containers" {
            include *
            autoLayout
        }

        styles {
            element "Existing System" {
                background #999999
                color #ffffff
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Mobile App" {
                shape MobileDeviceLandscape
            }
            element "Database" {
                background #60A917
                shape Cylinder
            }
            element "Middleware" {
                background #008A00
            }
        } 

        theme default
    }
}