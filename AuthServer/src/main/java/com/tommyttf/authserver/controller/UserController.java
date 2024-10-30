package com.tommyttf.authserver.controller;

import com.tommyttf.authserver.entity.UserInfo;
import com.tommyttf.authserver.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserInfoService userInfoService;


    @PostMapping("/users/add")
    public ResponseEntity<?> addUser(@RequestBody UserInfo userInfo){
        try {
            UserInfo createdUserInfo = userInfoService.addUser(userInfo);
            return new ResponseEntity<>(createdUserInfo, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
        }
    }
}
