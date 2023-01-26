/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import model.Users;

/**
 *
 * @author ducth
 */
public class LoginDAO extends MyDAO{
    public Users login(String user, String pass) {

        try {
            String sql = "select UserID , Username , Password , gender , Email,PhoneNum , roleID from users  \n"
                    + "where Username = ? and Password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {

                return new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Users checklogin(String user, String email , String phone) {

        try {
            String sql = "select UserID , Username , Password , gender , Email,PhoneNum , roleID from users  \n"
                    + "where Username = ? or Email = ? or PhoneNum = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setString(3, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void register(String user , String pass , String gender , String email , String phoneNum) {
        try {
            String sql = "insert into users values (? , ? , ? , ? ,?,3 ,1)";
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, phoneNum);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    } 
}
