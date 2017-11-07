//package com.fullstack.common.persistence;
//
//import java.util.Properties;  
//
//import org.springframework.context.annotation.Bean;  
//import org.springframework.context.annotation.Configuration;  
//  
//import com.github.pagehelper.PageHelper;  
///**
// * 注册MyBatis分页插件PageHelper  
// * @author chay
// * @version 2017-4-19
// */
//@Configuration  
//public class MybatisConfig {
//	@Bean  
//    public PageHelper pageHelper() {  
//       System.out.println("MyBatisConfiguration.pageHelper()");  
//        PageHelper pageHelper = new PageHelper();  
//        Properties properties = new Properties();  
//        properties.setProperty("pageSizeZero", "true");	//如果pageSize=0或者RowBounds.limit = 0就会查询出全部的结果 （相当于没有执行分页查询，但是返回结果仍然是Page类型）
//        properties.setProperty("offsetAsPageNum", "true");  //设置为true时，会将RowBounds第一个参数offset当成pageNum页码使用 -->和startPage中的pageNum效果一样
//        properties.setProperty("rowBoundsWithCount", "true");  //设置为true时，使用RowBounds分页会进行count查询
//        properties.setProperty("reasonable", "true");  //启用合理化时，如果pageNum<1会查询第一页，如果pageNum>pages会查询最后一页
//        
//        pageHelper.setProperties(properties);  
//        return pageHelper;  
//    }  
//}  