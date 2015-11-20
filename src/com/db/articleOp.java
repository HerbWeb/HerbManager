package com.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mapping.sqlMapper;
import com.model.articleInfo;

public class articleOp {
	
	public boolean write(articleInfo article)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession(true);
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        int result;
	        result = mapper.addArticle(article);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        if(result == 1)
        	return true;
        	
		return false;
	}
	public static boolean isExistTitle(articleInfo article)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        articleInfo result;
	        result = mapper.getById(article);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        if(result != null)
        	return true;
        	
		return false;
	}
	public static List<articleInfo> getAllArticle()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<articleInfo> result;
	        result = mapper.getAllArticle();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	public  static int deleteById(articleInfo article)
	{   
		if(isExistTitle(article)){
		 SqlSession sqlSession = sqlOp.getSqlSession(true);
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        int result;
	        result = mapper.deleteById(article);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
		return 0;
}
	public static articleInfo getById(articleInfo article)
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        articleInfo result;
	        result = mapper.getById(article);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	public boolean update(articleInfo article) {
		SqlSession sqlSession = sqlOp.getSqlSession(true);
        
        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
        int result;
        result = mapper.updateArticle(article);
        //使用SqlSession执行完SQL之后需要关闭SqlSession
        sqlSession.close();
    if(result == 1)
    	return true;
    	
	return false;
	}
}
