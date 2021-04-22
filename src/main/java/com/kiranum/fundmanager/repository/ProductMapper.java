package com.kiranum.fundmanager.repository;

import com.kiranum.fundmanager.model.FundGroup;
import com.kiranum.fundmanager.model.FundManager;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ProductMapper {
    private final ResultSetExtractor<List<FundGroup>> resultSetExtractor = JdbcTemplateMapperFactory
            .newInstance()
            .addKeys("id")
            .newResultSetExtractor(FundGroup.class);

    public ResultSetExtractor<List<FundGroup>> resultSetExtractor() {
        return resultSetExtractor;
    }
}
