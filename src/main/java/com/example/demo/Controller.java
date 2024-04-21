package com.example.demo;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    ArrayList<User> arr = new ArrayList<>();
    @GetMapping("/addUser")
    public boolean addUser(@RequestParam String name, @RequestParam int score) {
        User user = new User();
        user.name = name;
        user.score = score;
        arr.add(user);
        return true;
    }
    @GetMapping("/list")
    public List<User> getList(){
        return arr;
    }

}
