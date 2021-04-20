package com.kiranum.fundmanager.controller;

import com.kiranum.fundmanager.model.FundManager;
import com.kiranum.fundmanager.service.FundManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FundManagerController {

    @Autowired
    private FundManagerService fundManagerService;

    @GetMapping("/fund-managers/{fundManagerId}")
    public ResponseEntity<FundManager> getById(@PathVariable Integer fundManagerId) {
        return ResponseEntity.ok(fundManagerService.getById(fundManagerId));
    }
}