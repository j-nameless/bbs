package myservlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.*;

import bbs2.Article;
import bbs2.DB;

public class ControlArticle extends HttpServlet{
	Connection conn = null;
	Statement stm = null;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Article> list = new ArrayList<Article>();
		conn =(Connection) DB.getConn();
		stm = (Statement) DB.getStm(conn);
		ResultSet rs = DB.getRs(stm, "select * from article where pid = 0");
		try {
			DB.init(rs, list, conn);
			Article article = new Article();
			article.setList(list);
			HttpSession session=  req.getSession();
			session.setAttribute("article", article);
			resp.sendRedirect("showArticle.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(rs != null){
				DB.close(rs);
			}
			if(stm != null) {
				DB.close(stm);
			}
			if(conn != null) {
				DB.close(conn);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req,resp);
	}

}
