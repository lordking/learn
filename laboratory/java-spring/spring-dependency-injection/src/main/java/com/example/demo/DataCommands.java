package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.shell.standard.ShellComponent;
import org.springframework.shell.standard.ShellMethod;

@ShellComponent
public class DataCommands {

    private final CatService catService;

    @Autowired
    public DataCommands(CatService catService) {
        this.catService = catService;
    }

    @ShellMethod(key = "total", value = "查询猫的总数")
    public Integer total() {
        return catService.getTotal();
    }
}
