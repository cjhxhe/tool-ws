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
@MapperScan(basePackages = BlisDataSourceConfig.PACKAGE, sqlSessionFactoryRef = "blisSqlSessionFactory")
public class BlisDataSourceConfig {

	private static Logger logger = LoggerFactory.getLogger(BlisDataSourceConfig.class);

	public static final String PACKAGE = "com.clay.dal.mapper.blis";

	@Bean(name = "blisDataSource")
	@ConfigurationProperties(prefix = "datasource.blis")
	public DataSource dataSource() {
		return DataSourceBuilder.create().build();
	}

	@Bean(name = "blisSqlSessionFactory")
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

	@Bean(name = "blisTransactionManager")
	public DataSourceTransactionManager blisTransactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}

}
