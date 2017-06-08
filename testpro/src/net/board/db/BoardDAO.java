package net.board.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDAO {
	
	//싱글톤
	public static BoardDAO instance = new BoardDAO();
	private BoardDAO(){}
	public static BoardDAO getInstance(){
		return instance;
	}
	
	//DB
	private SqlSession getSession(){
		SqlSession session = null;
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("./SqlMapConfig.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return session;
	}
	
	//회원가입
	public void BoardJoin(BoardDTO board){
		SqlSession session = null;
		int result = 0;
		try {
			session = getSession();
			result = session.insert("board.board_join",board);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//로그인 아이디 검색
	public int Login(String id){
		SqlSession session = null;
		int result = 0;
		try {
			session = getSession();
			result = (Integer)session.selectOne("board.login_find",id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//로그인 아이디 패스워드 검사
	public String passwdCheck(String id){
		SqlSession session = null;
		String passwd = "";
		try {
			session = getSession();
			passwd = (String)session.selectOne("board.passwd_check",id);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return passwd;
	}
	
	//회원정보 구함
	public BoardDTO memberFind(String id){
		SqlSession session = null;
		BoardDTO member = null;
		try {
			session = getSession();
			member = new BoardDTO();
			System.out.println(id);
			member = (BoardDTO) session.selectOne("board.member_find",id);
			System.out.println(member.getEmail());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	//회원정보 수정
	public void memberUpdate(BoardDTO board){
		SqlSession session = null;
		String result = null;
		System.out.println(board.getName());
		System.out.println(board.getEmail());
		System.out.println(board.getId());
		System.out.println(board.getNickname());
		System.out.println(board.getPhone());
		System.out.println(board.getPasswd());
		
		try {
			session = getSession();
			session.update("board.member_update",board);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
