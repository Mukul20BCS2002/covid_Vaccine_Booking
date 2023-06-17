package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Types;

import beans.RegisterAdminbean;
import databaseConnection.connectionProvider;

public class RegisterAdmindao {
	public String registerAdmin(RegisterAdminbean adminregisterbean)
	{
		Connection con = null;
		try
		{
			con = connectionProvider.getConnection();
			PreparedStatement pst = con.prepareStatement("insert into registeradmin values(?,?,?,?,?,?,?,?,?,?)");
            PreparedStatement pst1 = con.prepareStatement("insert into loginadmin values(?,?,?)");
            pst.setNull(1,Types.INTEGER);
			pst.setString(2,adminregisterbean.getUser());
			pst.setString(3,adminregisterbean.getPassword());
			pst.setString(4,adminregisterbean.getMobile());
			pst.setString(5,adminregisterbean.getPincode());
			pst.setString(6,adminregisterbean.getState());
			pst.setString(7,adminregisterbean.getDistrict());
			pst.setString(8,adminregisterbean.getCity());
			pst.setString(9,adminregisterbean.getCategory());
			pst.setString(10,adminregisterbean.getBankaddress());
			int i = pst.executeUpdate();
			
			
			  pst1.setNull(1,Types.INTEGER);
			  pst1.setString(2,adminregisterbean.getUser());
			  pst1.setString(3,adminregisterbean.getPassword()); 
			  int j = pst1.executeUpdate();
			 
			  
			if(i>0&&j>0)
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
