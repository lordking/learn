package com.example.demo;

import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

public class FakerDataSource implements DataSource {
    private List<String> cats;

    public FakerDataSource() {
        this.cats = Arrays.asList("Leo", "Oliver", "Max");
    }

    public List getCats() {
        return cats;
    }
}
