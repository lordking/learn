package com.example.demo;

import org.springframework.stereotype.Service;

@Service
public class CatService {

    private final DataSource dataSource;

    public CatService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public Integer getTotal() {
        return this.dataSource.getCats().size();
    }
}
