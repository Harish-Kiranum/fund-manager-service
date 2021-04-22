package com.kiranum.fundmanager.model;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class FundGroup {
    private Integer id;
    private String name;
    private String description;
    private List<FundProduct> fundProducts;
}
