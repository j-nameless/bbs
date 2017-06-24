package myservlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.*;

import bbs2.Article;
import bbs2.DB;

public class ControlReply extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf8");
		List<Article> list = new ArrayList<Article>();
		int pid = Integer.parseInt(req.getParameter("pid"));
		int rootId = Integer.parseInt(req.getParameter("rootid"));
		String title = req.getParameter("title");
		String cont = req.getParameter("cont");
		Connection conn = (Connection) DB.getConn();
		PreparedStatement pstmt = null;
		Statement stmt = null;
		Statement stm1 = (Statement) DB.getStm(conn);
		Statement stm2 = (Statement) DB.getStm(conn);
		ResultSet rs1 = DB.getRs(stm1, "select * from article where id ="+pid);
		ResultSet rs2 = DB.getRs(stm2,"select * from article where pid ="+pid);
		try {
			boolean autoCommit = conn.getAutoCommit();
			conn.setAutoCommit(false);

			String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?,?)";
			pstmt = (PreparedStatement) DB.prepareStmt(conn, sql);
			pstmt.setInt(1, pid);
			pstmt.setInt(2, rootId);
			pstmt.setString(3, title);
			pstmt.setString(4, cont);
			pstmt.setInt(5, 0);
			pstmt.setInt(6, 1);
			pstmt.executeUpdate();

			stmt = (Statement) DB.getStm(conn);
			stmt.executeUpdate("update article set isleaf = 1 where id = " + pid);

			conn.commit();
			conn.setAutoCommit(autoCommit);
			if(rs1.next()){
				rs1.previous();
			}else req.getRequestDispatcher("show.jsp").forward(req, resp);
			DB.init(rs1, list, conn);
			DB.init(rs2, list, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		DB.close(pstmt);
		DB.close(stmt);
		DB.close(conn);
		}
		Article article = new Article();
		article.setList(list);
		HttpSession session=  req.getSession();
		session.setAttribute("article2", article);
		resp.sendRedirect("replyDeal.jsp");
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
	
}
