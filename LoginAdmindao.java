package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.LoginAdminbean;
import databaseConnection.connectionProvider;

public class LoginAdmindao {
	public String loginAdmin(LoginAdminbean adminlogbean)
	{
		Connection con = null;
		try
		{
			con = connectionProvider.getConnection();
			PreparedStatement pst = con.prepareStatement("select *from loginadmin where username=? and password=?");
			pst.setString(1,adminlogbean.getUsername());
			pst.setString(2,adminlogbean.getPassword());
			ResultSet rst = pst.executeQuery();
			if(rst.next())
			{
				return "valid";
			}
			else
			{
				return "Invalid";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "Invalid";
		
	}
}
