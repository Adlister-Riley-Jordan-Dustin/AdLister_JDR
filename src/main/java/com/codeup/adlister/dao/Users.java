package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
//    User generateImage(Image image);
    void updateByUsername(String updateUsername, String updateEmail, String userName);
}
