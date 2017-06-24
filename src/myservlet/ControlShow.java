package myservlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import bbs2.Article;
import bbs2.DB;

public class ControlShow extends HttpServlet{
	Connection conn = null;
	Statement stm = null,stm2 = null;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		List<Article> list = new ArrayList<Article>();
		conn =(Connection) DB.getConn();
		stm = (Statement) DB.getStm(conn);
		stm2 = (Statement) DB.getStm(conn);
		ResultSet rs = DB.getRs(stm, "select * from article where id ="+id);
		ResultSet rs2 = DB.getRs(stm2,"select * from article where pid ="+id);
		try {
			if(rs.next()){
				rs.previous();
			}else req.getRequestDispatcher("show.jsp").forward(req, resp);
			DB.init(rs, list, conn);
			DB.init(rs2, list, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
				try {
					if(rs2 != null)
					rs2.close();
					if(rs != null)
						rs.close();
					if(stm2 != null)
						stm2.close();
					if(stm != null)
						stm.close();
					if(conn != null)
						conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		Article article = new Article();
		article.setList(list);
		HttpSession session=  req.getSession();
		session.setAttribute("article2", article);
		//resp.sendRedirect("show.jsp");
		req.getRequestDispatcher("show.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req,resp);
	}
	
}
