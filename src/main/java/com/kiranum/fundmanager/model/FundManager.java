package com.kiranum.fundmanager.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class FundManager {
    private Integer id;
    private String name;
    private List<FundManagerGroup> fundManagerGroups;

    @JsonIgnore
    public String getDummy() {
        return "dummy";
    }
}
