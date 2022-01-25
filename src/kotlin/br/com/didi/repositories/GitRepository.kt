package br.com.didi.repositories

import org.springframework.cloud.config.server.environment.JGitEnvironmentProperties
import org.springframework.cloud.config.server.environment.JGitEnvironmentRepository
import org.springframework.context.annotation.Configuration
import org.springframework.core.env.ConfigurableEnvironment

@Configuration
class GitRepository(
    environment: ConfigurableEnvironment,
    properties: JGitEnvironmentProperties
): JGitEnvironmentRepository(environment, properties)