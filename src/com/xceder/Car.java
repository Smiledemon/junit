package com.xceder;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author: xiaopan
 * Date: 2018-03-26
 * Time: 上午10:27
 */
public class Car {
    private String name;
    private String color;
    private double price;

    public Car() {
    }

    public Car(String name, String color, double price) {
        this.name = name;
        this.color = color;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}/*
../../tools/node_modules/karma/bin/karma start /var/lib/jenkins/tools/karma.conf.js

        #rm -rf Mozilla

        #rm -rf coverage
        pwd

        cp -r /var/lib/jenkins/tools/Mozilla .

        cp -r /var/lib/jenkins/tools/coverage .*/