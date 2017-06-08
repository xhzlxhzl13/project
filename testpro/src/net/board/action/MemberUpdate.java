package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.BoardDTO;

public class MemberUpdate implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		BoardDTO dto = new BoardDTO();
		BoardDAO dao = BoardDAO.getInstance();
		
		
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("phone");
		String passwd = request.getParameter("passwd");
		
		System.out.println(id);
		System.out.println(passwd);
		System.out.println(email);
		dto.setId(request.getParameter("id"));
		dto.setEmail(request.getParameter("email"));
		dto.setName(request.getParameter("name"));
		dto.setNickname(request.getParameter("nickname"));
		dto.setPhone(request.getParameter("phone"));

		
		if(dao.passwdCheck(id).equals(passwd)){
			dao.memberUpdate(dto);
		}else{
			out.print("<script>");
			out.print("alert('비밀번호가 일치하지 않습니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
			out.close();
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./board/index.jsp");
		
		return forward;
	}
}
