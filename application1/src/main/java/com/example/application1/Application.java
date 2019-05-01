package com.example.application1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.example.shared.write.Example;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        Example example = new Example();
        system.println.out(example.testOutput());
        SpringApplication.run(Application.class, args);
    }
}