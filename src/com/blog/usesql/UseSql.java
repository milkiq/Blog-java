package com.blog.usesql;

import com.mysql.jdbc.*;

public class UseSql {
    private String url;
    public UseSql(String u){
        this.url = u;
    }
    String read(String sql){
        //声明Connection对象
        Connection con;
        //驱动程序名
        String driver = "com.mysql.jdbc.Driver";
        //URL指向要访问的数据库名mydata
        String url = "jdbc:mysql://localhost:3306/mydata";
        //MySQL配置时的用户名
        String user = "root";
        //MySQL配置时的密码
        String password = "980528nyx";
        return url;
    }
}
