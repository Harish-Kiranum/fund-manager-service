package com.kiranum.fundmanager.model;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class FundManager {
    private Integer id;
    private String name;
    private List<FundGroup> fundGroups;
}
