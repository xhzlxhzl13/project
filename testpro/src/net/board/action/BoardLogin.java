package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.board.db.BoardDAO;

public class BoardLogin implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.Login(id);
		
		if(result == 0){
			out.print("<script>");
			out.print("alert('아이디가 없습니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
			out.close();
		}else if(!passwd.equals(dao.passwdCheck(id))){
			out.print("<script>");
			out.print("alert('비밀번호가 다릅니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
			out.close();
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			
			
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/index.jsp");
		
		
		return forward;
	}
}
