package com.kiranum.fundmanager.repository;

import com.kiranum.fundmanager.model.FundGroup;
import com.kiranum.fundmanager.model.FundManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class FundManagerRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private FundManagerMapper managerMapper;

    @Autowired
    private FundManagerDetailMapper fundManagerDetailMapper;

    @Autowired
    private ProductMapper productMapper;

    public FundManager getById(Integer fundManagerId) {
        String query = "select " +
                "fm.id as id, fm.name as name, " +
                "fg.id as fundGroups_id, fg.name as fundGroups_name, fg.description as fundGroups_description " +
                "from fund_manager fm " +
                "join fund_group fg on fm.id = fg.fund_manager_id " +
                "where fm.id = ? order by fundGroups_name";

        return jdbcTemplate
                .query(query, fundManagerDetailMapper.resultSetExtractor(), fundManagerId)
                .stream()
                .findFirst()
                .orElse(null);
    }

    public List<FundManager> getFundManagers(){
        String query="select fm.id as id ," +
                "fm.name as name from fund_manager fm";

        return jdbcTemplate
                .query(query, managerMapper.resultSetExtractor());
    }

    public FundGroup getProductsById(Integer fundManagerId,Integer fundGroupId){
        String query="select " +
                "fg.id as id, " +
                "fg.name as name, fg.description as description ," +
                "fp.id as fundProducts_id, fp.name as fundProducts_name, " +
                "fp.description as fundProducts_description" +
                " from fund_group fg " +
                "join fund_product fp on fg.id=fp.fund_group_id" +
                " where fg.fund_manager_id=? and fp.fund_group_id=? order by fundProducts_id";

        return  jdbcTemplate
                .query(query, productMapper.resultSetExtractor(), fundManagerId,fundGroupId)
                .stream()
                .findFirst()
                .orElse(null);
    }


}
