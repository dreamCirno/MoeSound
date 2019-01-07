package com.moe.utils;

import java.sql.*;

public class DBUtils {
    private static final String DRIVERPATH = "com.mysql.cj.jdbc.Driver";
    private static final String CONNSTRING = "jdbc:mysql://localhost:3306/moe?serverTimezone=Asia/Shanghai";
    private static final String CONNUSERNAME = "root";
    private static final String CONNPASSWORD = "1234";
    private static Connection conn = null;
    private static PreparedStatement statement = null;

    static {
        try {
            Class.forName(DRIVERPATH);
            conn = DriverManager.getConnection(CONNSTRING, CONNUSERNAME, CONNPASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static PreparedStatement getStatement(String sql) {
        try {
            conn = DriverManager.getConnection(CONNSTRING, CONNUSERNAME, CONNPASSWORD);
            statement = conn.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statement;
    }

    public static void closeAll() {
        try {
            if (!statement.isClosed())
                statement.close();
            if (!conn.isClosed())
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static ResultSet doQuery(String sql, Object... paras) {
        ResultSet rs = null;
        // Set params
        try {
            conn = DriverManager.getConnection(CONNSTRING, CONNUSERNAME, CONNPASSWORD);
            PreparedStatement ppst = getStatement(sql);
            for (int i = 0; i < paras.length; i++) {
                ppst.setObject(i + 1, paras[i]);
            }
            rs = ppst.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rs;
    }

    public static int doUpdate(String sql, Object... paras) {
        int result = 0;
        // Set params
        try {
            conn = DriverManager.getConnection(CONNSTRING, CONNUSERNAME, CONNPASSWORD);
            PreparedStatement ppst = getStatement(sql);
            for (int i = 0; i < paras.length; i++) {
                ppst.setObject(i + 1, paras[i]);
            }
            result = ppst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }

        return result;
    }
}
