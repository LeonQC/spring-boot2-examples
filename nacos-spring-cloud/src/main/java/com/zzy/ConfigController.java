package com.zzy;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.ImmutableMap;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Map;

/**
 * <p></p>
 * Created by @author zhezhiyong@163.com on 2019/2/25.
 */
@RestController
@RequestMapping("config")
@RefreshScope
public class ConfigController {

    @Resource
    private RedisProperties redisProperties;
    @Resource
    private DataSourceProperties dataSourceProperties;
    @Resource
    private CommonConf commonConf;
//    @Resource
//    private CommonDataDAO commonDataDAO;
//    @Resource
//    private CommonDAO commonDAO;
//
//
//    @RequestMapping("test")
//    public Map<String, Object> test() {
//        System.out.println("commonDAO.getMp3SongId() = " + commonDAO.getMp3SongId().size());
//        System.out.println("CommonDataDAO.getFilterCompany() = " + commonDataDAO.getFilterCompany().size());
//        return ImmutableMap.of("host", redisProperties.getHost(), "password", redisProperties.getPassword());
//    }
    @RequestMapping("getRedisConfig")
    public Map<String, Object> getRedisConfig() {
        return ImmutableMap.of("host", redisProperties.getHost(), "password", redisProperties.getPassword());
    }

    @RequestMapping("getBlackCompany")
    public Map<String, Object> getBlackCompany() {
        return ImmutableMap.of("config", commonConf.getBlackCompany());
    }

    @RequestMapping("getDatasourceConfig")
    public Map<String, Object> getDatasourceConfig() {
        System.out.println("redisProperties = " + JSON.toJSONString(dataSourceProperties));
        return ImmutableMap.of("username", dataSourceProperties.getUsername(), "password", dataSourceProperties.getPassword());
    }

}
