package com.kiranum.fundmanager.repository;

import com.kiranum.fundmanager.model.FundManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class FundManagerRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private FundManagerMapper mapper;

    public FundManager getById(Integer fundManagerId) {
        String query = "select " +
                "fm.id as id, fm.name as name, " +
                "fg.id as fundGroups_id, fg.name as fundGroups_name, fg.description as fundGroups_description " +
                "from fund_manager fm " +
                "join fund_group fg on fm.id = fg.fund_manager_id " +
                "where fm.id = ? order by fundGroups_name";

        return jdbcTemplate
                .query(query, mapper.resultSetExtractor(), fundManagerId)
                .stream()
                .findFirst()
                .orElse(null);
    }
}
