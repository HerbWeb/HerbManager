package com.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mapping.sqlMapper;
import com.model.articleInfo;
import com.model.authorization;
import com.model.treeInfo;

public class authOp {
      public static List<authorization> getAllAuth()
  	{   
 		 SqlSession sqlSession = sqlOp.getSqlSession();
 	        
 	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
 	        List<authorization> result;
 	        result = mapper.getAllAuth();
 	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
 	        sqlSession.close();
         return result;
 	}
      
      public static List<String> getAllId()
    	{   
   		 SqlSession sqlSession = sqlOp.getSqlSession();
   	        
   	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
   	        List<String> result;
   	        result = mapper.getAllId();
   	        //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
   	        sqlSession.close();
           return result;
   	}
      
      public static boolean update(treeInfo tre) {
  		SqlSession sqlSession = sqlOp.getSqlSession(true);
          
          sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
          int result;
          result = mapper.updateTree(tre);
          //ʹ��SqlSessionִ����SQL֮����Ҫ�ر�SqlSession
          sqlSession.close();
      if(result == 1)
      	return true;
      	
  	return false;
  	}
}
