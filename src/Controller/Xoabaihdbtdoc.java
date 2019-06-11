package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QuanlybtdocDAO;
import DB.DBConnection;


@WebServlet("/Xoabaihdbtdoc")
public class Xoabaihdbtdoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Xoabaihdbtdoc() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();
		
		String readexeriseidstr = request.getParameter("readexeriseid");
		int readexeriseid = Integer.parseInt(readexeriseidstr);
		
		try 
		{								
			QuanlybtdocDAO.Xoabaihdbtdoc(conn, readexeriseid);	
			
			RequestDispatcher rd = request.getRequestDispatcher("Hienthidsbtdoc?pageid=1");
			rd.forward(request,response);
			
			conn.close();
		} 
		catch (SQLException e) 
		{

			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
