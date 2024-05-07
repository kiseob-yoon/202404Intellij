package com.ks.demo.spring;

public class TestException extends RuntimeException {
    public TestException(String message) {
        super(message);
        System.out.println("---------------------"+message);
    }
}
