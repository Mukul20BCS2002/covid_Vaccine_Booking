package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.vaccineRequestBean;
import databaseConnection.connectionProvider;

public class vaccineRequestdao {
	public String vaccineRequest(vaccineRequestBean vaccinereqbean)
	{
		Connection con = null;
		try
		{
			con = connectionProvider.getConnection();
			PreparedStatement pst = con.prepareStatement("insert into requestVaccination values(?,?,?,?,?,?,?,?)");
			pst.setInt(1, vaccinereqbean.getAdminbank_id());
			pst.setString(2,vaccinereqbean.getName());
			pst.setString(3,vaccinereqbean.getMail());
			pst.setString(4,vaccinereqbean.getPhone());
			pst.setString(5,vaccinereqbean.getVaccineType());
			pst.setString(6,vaccinereqbean.getTimeSlot());
			pst.setString(7,vaccinereqbean.getAddress());
			pst.setString(8,"panding");
			int i = pst.executeUpdate();
			if(i>0)
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
		return "valid";
		
	}
}
