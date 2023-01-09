package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserAdsDao {
    private Connection connection;
    public UserAdsDao(Connection connection) {
        this.connection = connection;
    }
    public List<Ad> getAdsByUser(int userId) {
        List<Ad> ads = new ArrayList<>();
        try {
            String sql = "SELECT * FROM ads WHERE user_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, userId);
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String title = resultSet.getString("title");
                String description = resultSet.getString("description");
                Long ownerId = resultSet.getLong("user_id");
                Ad ad = new Ad(id, ownerId, title, description);
                ads.add(ad);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ads;
    }
}
