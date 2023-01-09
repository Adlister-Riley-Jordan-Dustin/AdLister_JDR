package com.codeup.adlister.dao;
//test commit
public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static UsersAds userAdsDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
    public static UsersAds getUserAdsDao(){
        if (userAdsDao == null){
            userAdsDao = new UserAdsDao(config);
        }return userAdsDao;
    }
}
