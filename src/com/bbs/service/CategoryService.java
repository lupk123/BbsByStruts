package com.bbs.service;

import com.bbs.model.Category;
import com.bbs.util.DB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/7/30.
 */
public class CategoryService {

    public static Category getCategory(int id) throws SQLException{
        Category c = new Category();
        Connection conn = DB.getConn();
        Statement stmt = DB.getStatement(conn);
        String sql = "select * from t_category where id = " + id;
        ResultSet rs = DB.getResultSet(stmt, sql);

        try{
            rs.next();
            c.setId(rs.getInt("id"));
            c.setName(rs.getString("name"));
            c.setDescription(rs.getString("description"));
        }catch (SQLException e){
            e.printStackTrace();
            throw (e);
        }finally {
            DB.close(rs);
            DB.close(stmt);
            DB.close(conn);
        }

        return c;
    }

    public static void add(Category c) throws SQLException{
        Connection conn = DB.getConn();
        String sql = "insert into t_category values(null, ?, ?)";
        PreparedStatement pstmt = DB.preparedStatement(conn, sql);

        try{
            pstmt.setString(1, c.getName());
            pstmt.setString(2, c.getDescription());
            pstmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
            throw (e);
        }finally {
            DB.close(pstmt);
            DB.close(conn);
        }
    }

    public static void update(Category c) throws SQLException{
        Connection conn = DB.getConn();
        String sql = "update t_category set name = ?, description = ? where id = ?";
        PreparedStatement pstmt = DB.preparedStatement(conn, sql);
        try{
            pstmt.setString(1, c.getName());
            pstmt.setString(2, c.getDescription());
            pstmt.setInt(3, c.getId());
            pstmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
            throw (e);
        }finally {
            DB.close(pstmt);
            DB.close(conn);
        }
    }

    public static void delete(int id) throws Exception{
        Connection conn = DB.getConn();
        Statement stmt = DB.getStatement(conn);
        String sql = "delete from t_category where id = " + id;

        DB.executeUpdate(stmt, sql);
        DB.close(stmt);
        DB.close(conn);
    }

    public static List<Category> getCategories() throws SQLException{
        List<Category> categories = new ArrayList<Category>();
        Connection conn = DB.getConn();
        Statement stmt = DB.getStatement(conn);
        String sql = "select * from t_category";
        ResultSet rs = DB.getResultSet(stmt, sql);

        try{
            while(rs.next()){
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setDescription(rs.getString("description"));
                categories.add(c);
            }
        }catch (SQLException e){
            e.printStackTrace();
            throw (e);
        }finally {
            DB.close(rs);
            DB.close(stmt);
            DB.close(conn);
        }

        return categories;
    }
}
