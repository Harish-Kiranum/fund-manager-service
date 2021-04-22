package com.kiranum.fundmanager.service;

import java.util.List;

import com.kiranum.fundmanager.model.FundGroup;
import com.kiranum.fundmanager.model.FundManager;

public interface FundManagerService {
    FundManager getById(Integer fundManagerId);

    List<FundManager> getFundManagers();

    FundGroup getProductsById(Integer fundManagerId,Integer fundGroupId);
}
