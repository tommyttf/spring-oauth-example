package com.tommyttf.authserver.service;

import com.tommyttf.authserver.entity.UserInfo;
import com.tommyttf.authserver.repository.UserInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserInfoService {
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserInfoRepository userInfoRepository;

    public UserInfo addUser(UserInfo userDto) throws Exception {
        Optional<UserInfo> dbUser = userInfoRepository.findByUsername(userDto.getUsername());
        if (dbUser.isPresent()) {
            throw new Exception(
                    "There is an account with the same username:" + userDto.getUsername());
        }
        userDto.setPassword(passwordEncoder.encode(userDto.getPassword()));

        return userInfoRepository.save(userDto);
    }
}
