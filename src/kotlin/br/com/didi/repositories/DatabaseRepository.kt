package br.com.didi.repositories

import org.springframework.cloud.config.server.environment.JdbcEnvironmentProperties
import org.springframework.cloud.config.server.environment.JdbcEnvironmentRepository
import org.springframework.context.annotation.Configuration
import org.springframework.jdbc.core.JdbcTemplate

@Configuration
class DatabaseRepository(
    jdbc: JdbcTemplate,
    properties: JdbcEnvironmentProperties,
    extractor: PropertiesResultSetExtractor
): JdbcEnvironmentRepository(jdbc, properties, extractor)

