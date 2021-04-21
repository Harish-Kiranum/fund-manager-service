package com.kiranum.fundmanager.service;

import java.util.List;

import com.kiranum.fundmanager.model.FundManager;

public interface FundManagerService {
    FundManager getById(Integer fundManagerId);

    List<FundManager> getFundManagers();
}
