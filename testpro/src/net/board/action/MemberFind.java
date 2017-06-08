package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.board.db.BoardDAO;
import net.board.db.BoardDTO;

public class MemberFind implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO dto = new BoardDTO();
		
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		
		dto = dao.memberFind(id);
		
		request.setAttribute("id", id);
		request.setAttribute("dto",dto);
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/member.jsp");
		
		return forward;
	}
}
