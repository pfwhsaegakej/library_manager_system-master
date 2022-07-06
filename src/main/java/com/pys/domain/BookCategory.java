package com.pys.domain;

import lombok.Data;

@Data
public class BookCategory {
    private Integer categoryId;

    private String categoryName;

    public Integer getCategoryId() {
        return categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }
}