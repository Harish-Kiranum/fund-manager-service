package com.kiranum.fundmanager.service;

import com.kiranum.fundmanager.model.FundManager;
import com.kiranum.fundmanager.repository.FundManagerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FundManagerServiceImpl implements FundManagerService {

    @Autowired
    private FundManagerRepository fundManagerRepository;

    @Override
    public FundManager getById(Integer fundManagerId) {
        return fundManagerRepository.getById(fundManagerId);
    }

}