package no.adrsolheim.webapp.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleRestController {

    @Value("${foo}")
    private String foo;
    
    @Value("${number.ten}")
    private int ten;

    @GetMapping("/footen")
    public String footen() { return foo + " " + ten; }

}
