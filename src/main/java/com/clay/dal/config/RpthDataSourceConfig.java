package com.clay.dal.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = RpthDataSourceConfig.PACKAGE, sqlSessionFactoryRef = "rpthSqlSessionFactory")
public class RpthDataSourceConfig {

	private static Logger logger = LoggerFactory.getLogger(RpthDataSourceConfig.class);

	public static final String PACKAGE = "com.clay.dal.mapper.rpth";

	@Bean(name = "rpthDataSource")
	@ConfigurationProperties(prefix = "datasource.rpth")
	public DataSource dataSource() {
		return DataSourceBuilder.create().build();
	}

	@Bean(name = "rpthSqlSessionFactory")
	public SqlSessionFactory sqlSessionFactory() {
		SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
		bean.setDataSource(dataSource());
		try {
			return bean.getObject();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return null;
	}

	@Bean(name = "rpthTransactionManager")
	public DataSourceTransactionManager rpthTransactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}

}
