package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

public class Logout implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		session.invalidate();
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./board/index.jsp");
		
		return forward;
	}
}
