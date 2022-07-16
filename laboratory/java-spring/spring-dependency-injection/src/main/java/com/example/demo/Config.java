package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Config {

    /**
     * 读取默认的application.properties里面的参数
     */
    @Value("${demo.datasource.driver}")
    private String datasourceDriver;

    @Bean
    public DataSource dataSource() throws Exception{
        System.out.println(this.datasourceDriver);
        Class<DataSource> dataSourceClass = null;
        try {
            dataSourceClass = (Class<DataSource>) Class.forName(datasourceDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw e;
        }

        return dataSourceClass.newInstance();
    }
}
