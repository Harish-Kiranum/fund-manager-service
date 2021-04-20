package com.kiranum.fundmanager.repository;

import com.kiranum.fundmanager.model.FundManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class FundManagerRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public FundManager getById(Integer id) {
        // 1. Run query
        // 2. Map result set to java object
        // 3. Return object
        String query = "select " +
                "fm.id as 'id', fm.name as 'name' " +
                // "fg.id as 'group_id', fg.name as 'group_name', fg.description as 'group_description'" +
                 "from fund_manager fm " +
                // "join fund_group fg on fm.id = fg.fund_manager_id " +
                "where fm.id = ?";
        return jdbcTemplate.queryForObject(query, (resultSet, i) -> {
            FundManager fundManager = new FundManager();
            fundManager.setId(resultSet.getInt("id"));
            fundManager.setName(resultSet.getString("name"));
            return fundManager;
        }, id);

    }
}
