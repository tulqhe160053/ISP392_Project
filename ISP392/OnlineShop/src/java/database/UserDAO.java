/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.util.ArrayList;
import model.Role;
import model.UserStatus;
import model.Users;

/**
 *
 * @author Tu
 */
public class UserDAO extends MyDAO implements DAOInterface<Users> {

    @Override
    public ArrayList<Users> selectAll() {
        ArrayList<Users> t = new ArrayList<>();
        xSql = "select * from Users";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int userId = rs.getInt("UserID");
                String userName = rs.getString("Username");
                String password = rs.getString("Password");
                String gender = rs.getString("gender");
                String email = rs.getString("Email");
                String phoneNum = rs.getString("PhoneNum");
                int role_id = rs.getInt("RoleID");

                RoleDAO dao = new RoleDAO();
                Role role = dao.selectById(new Role(role_id, null));

                int userStatus_id = rs.getInt("statusId");

                UserStatusDAO userDao = new UserStatusDAO();
                UserStatus status = userDao.selectById(new UserStatus(userStatus_id, null));
                
                Users x = new Users(userId, userName, password, gender, email, phoneNum, role, status);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    @Override
    public Users selectById(Users t) {
        Users ketqua = null;
        xSql = "select * from Users where UserID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, t.getUserID());
            rs = ps.executeQuery();
            /* The cursor on the rs after this statement is in the BOF area, i.e. it is before the first record.
         Thus the first rs.next() statement moves the cursor to the first record
             */

            if (rs.next()) {
                int userId = rs.getInt("UserID");
                String userName = rs.getString("Username");
                String password = rs.getString("Password");
                String gender = rs.getString("gender");
                String email = rs.getString("Email");
                String phoneNum = rs.getString("PhoneNum");
                int role_id = rs.getInt("RoleID");

                RoleDAO dao = new RoleDAO();
                Role role = dao.selectById(new Role(role_id, null));

                int userStatus_id = rs.getInt("statusId");

                UserStatusDAO userDao = new UserStatusDAO();
                UserStatus status = userDao.selectById(new UserStatus(userStatus_id, null));

                ketqua = new Users(userId, userName, password, gender, email, phoneNum, role, status);
            } else {
                ketqua = null;
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
        }
        return (ketqua);
    }

    @Override
    public void insert(Users t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertAll(ArrayList<Users> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Users t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int deleteAll(ArrayList<Users> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(int x, Users t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        ArrayList<Users> list = dao.selectAll();
        
        System.out.println(dao.selectById(list.get(1)));
    }
}
