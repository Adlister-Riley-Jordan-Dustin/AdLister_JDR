package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    List<Ad> findByUserId(String userId);

    List<Ad> search(String userSearch);

    List<Ad> findByTitle(String title);

   void updateAd (String title, String description, Long id);

   void deleteAd(Long id);

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
}
