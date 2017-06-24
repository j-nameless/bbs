package myservlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.*;

import bbs2.DB;

public class ControlPost extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    req.setCharacterEncoding("utf8");
			String title = req.getParameter("title");
			String cont = req.getParameter("cont");
			System.out.println(title);
			Connection conn = (Connection) DB.getConn();

			PreparedStatement pstmt = null;
			Statement stmt = null;
			try {
				boolean autoCommit = conn.getAutoCommit();
				conn.setAutoCommit(false);
				
				int rootId = -1;
				
				String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?,?)";
				pstmt = (PreparedStatement) DB.prepareStmt(conn, sql, Statement.RETURN_GENERATED_KEYS);
				pstmt.setInt(1, 0);
				pstmt.setInt(2, rootId);
				pstmt.setString(3, title);
				pstmt.setString(4, cont);
				pstmt.setInt(5, 0);
				pstmt.setInt(6,1);
				pstmt.executeUpdate();
				
				ResultSet rsKey = pstmt.getGeneratedKeys();
				rsKey.next();
				rootId = rsKey.getInt(1);

				stmt = (Statement) DB.getStm(conn);
				stmt.executeUpdate("update article set rootid = " + rootId + " where id = "	+ rootId);

				conn.commit();
				conn.setAutoCommit(autoCommit);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				
				DB.close(pstmt);
				DB.close(stmt);
				DB.close(conn);
			}		
			req.getRequestDispatcher("index.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
	
}
