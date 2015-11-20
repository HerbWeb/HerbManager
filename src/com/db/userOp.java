package com.db;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mapping.sqlMapper;
import com.model.*;
public class userOp {
	
	public  static List<userInfo> getAllUser()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<userInfo> result;
	        result = mapper.getAllUser();
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
        return result;
	}
	public  static int deleteByName(userInfo user)
	{   
		if(isExistName(user)){
		 SqlSession sqlSession = sqlOp.getSqlSession(true);
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        int result;
	        result = mapper.deleteByName(user);
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
	        System.out.print(result);
        return result;
	}
		return 0;
}
	public static boolean isExist(userInfo user)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        userInfo result;
	        result = mapper.getUser(user);
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
        if(result != null)
        	return true;
        	
		return false;
	}
	public static boolean isExistName(userInfo user)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        userInfo result;
	        result = mapper.getUserbyName(user);
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
        if(result != null)
        	return true;
        	
		return false;
	}
	public static boolean isExist(adminInfo user)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        adminInfo result;
	        result = mapper.getAdmin(user);
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
        if(result != null)
        	return true;
        	
		return false;
	}
	public boolean isExistName(String name)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        userInfo result;
	        result = mapper.getByName(name);
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
        if(result != null)
        	return true;
        	
		return false;
	}
	public boolean regist(userInfo user)
	{
		 SqlSession sqlSession = sqlOp.getSqlSession(true);
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        int result;
	        result = mapper.addUser(user);
	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
	        sqlSession.close();
        if(result == 1)
        	return true;
        	
		return false;
	}
}
