/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import model.Product;
import model.ProductImg;

/**
 *
 * @author Tu
 */
public class ProductImgDAO extends MyDAO implements DAOInterface<ProductImg> {

    @Override
    public ArrayList<ProductImg> selectAll() {
        ArrayList<ProductImg> t = new ArrayList<>();
        xSql = "select * from ProductImg";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                int product_id = rs.getInt("ProductID");
                
                ProductDAO dao = new ProductDAO();
                Product x = new Product();
                x.setProductID(product_id);
                Product product = dao.selectById(x);
                
                String productImgUrl = rs.getString("ProductImgURL");

                ProductImg y = new ProductImg(id, product, productImgUrl);
                t.add(y);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    @Override
    public ProductImg selectById(ProductImg t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(ProductImg t) {
        xSql = "insert into ProductImg (ProductID,ProductImgURL) values (?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, t.getProduct().getProductID());
            ps.setString(2, t.getProductImgUrl());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public int insertAll(ArrayList<ProductImg> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(ProductImg t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int deleteAll(ArrayList<ProductImg> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(int x, ProductImg t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public static void main(String[] args) {
        ProductImgDAO dao = new ProductImgDAO();
        
        for (ProductImg pro : dao.selectAll()) {
            System.out.println(pro);
        }
    }
}
