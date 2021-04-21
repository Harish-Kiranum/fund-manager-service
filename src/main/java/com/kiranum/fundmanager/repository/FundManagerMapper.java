package com.kiranum.fundmanager.repository;

import com.kiranum.fundmanager.model.FundManager;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class FundManagerMapper {

    private final ResultSetExtractor<List<FundManager>> resultSetExtractor = JdbcTemplateMapperFactory
            .newInstance()
            .addKeys("id")
            .newResultSetExtractor(FundManager.class);

    public ResultSetExtractor<List<FundManager>> resultSetExtractor() {
        return resultSetExtractor;
    }
}
