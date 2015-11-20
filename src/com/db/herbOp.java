package com.db;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.jdbc.SqlBuilder;

import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import org.apache.ibatis.session.SqlSession;

import com.beans.search;
import com.mapping.sqlMapper;
import com.model.herbAttr;
import com.model.herbInfo;
import com.model.treeInfo;

public class herbOp extends SqlBuilder{
	public herbOp(){}

	public static List<herbAttr> getAllHerb()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<herbAttr> result;
	        result = mapper.getAllHerb();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	public static List<String> getAllByKe(treeInfo tree)
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getByKe(tree);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	public static List<String> getAllByShu(treeInfo tree)
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getByShu(tree);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	public static List<String> getAllKe()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getAllKe();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	public static List<String> getAllGang()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getAllGang();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	public static List<String> getAllShu()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getAllShu();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	public static List<String> getAllMen()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getAllMen();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	public static List<String> getAllYaoxing()
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<String> result;
	        result = mapper.getAllYaoxing();
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	public static herbInfo getByZYName(herbInfo herb)
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        herbInfo result;
	        result = mapper.getByZYName(herb);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	//select -------------------------------------------------------------------------------------------------------
	public static herbInfo getBy1(String id,String name)
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        herbInfo result;
	        result = mapper.getBy1(name,id);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	public static List<herbInfo> getResult(search info)
	{   
		 SqlSession sqlSession = sqlOp.getSqlSession();
	        sqlMapper mapper = sqlSession.getMapper(sqlMapper.class);
	        List<herbInfo> result;
	        result = mapper.getResult(info);
	        //使用SqlSession执行完SQL之后需要关闭SqlSession
	        sqlSession.close();
        return result;
	}
	
	
	//---------------------------------------------------------------
	public String getResultSql(search info){
		
		 
		search  temp = info ;
		/*String id="sds";
		String name="sdsdsf";*/
		String sql="select* from v_allherbinfo where (";
		String[] text={temp.text1,temp.text2,temp.text3,temp.text4};
		String[] scope={temp.scope1,temp.scope2,temp.scope3,temp.scope4};
		for(int i=0;i<scope.length;i++){
			text[i]=text[i].replaceAll(" ", "");
			if(!scope[i].equals("chandi")&&!text[i].equals("")){
				text[i]="'%"+text[i]+"%'";
			}
			if(scope[i].equals("chandi")&&!text[i].equals("")){
			String[] partion=text[i].split("[,，.。!@#$%^&*()~?';]"); 
			
				String str=null;
				str="'%"+partion[0]+"%'";
				for(int i1=1;i1<partion.length;i1++ ){
					str+=" "+"and chandi like '%"+partion[i1]+"%'";
				}
				text[i]=str;
			
			}
		}
	/*	BEGIN();
		 
		SELECT("*");
		 
		FROM("v_allherbinfo");
		 
		if(id!=null&&!(id.equals(""))){
		 
		WHERE("zhongyaoming =#{id}");
		 
		}
		 
		if(name!=null&&!(name.equals(""))){
		 
		WHERE("tname = #{name}");
		 
		}*/
		if(text[0]!=null&&!(text[0].equals(""))){
					 
		  sql+=temp.scope1+" like "+text[0]+"";
					 
		}
		else{
			temp.and_or1="";
		}
		if(text[1]!=null&&!(text[1].equals(""))){
			 
			  sql+=temp.and_or1+" "+temp.scope2+" like "+text[1]+" ";
						 
			}
		if(text[0].equals("")&&text[1].equals(""))
		{
			temp.and_or2="";
		}
		if(text[2]!=null&&!(text[2].equals(""))){
			 
			  sql+=temp.and_or2+" "+temp.scope3+" like "+text[2]+" ";
						 
			}
		if(text[0].equals("")&&text[1].equals("")&&text[2].equals("")){
			temp.and_or3="";
		}
		if(text[3]!=null&&!(text[3].equals(""))){
			 
			  sql+=temp.and_or3+" "+temp.scope4+" like "+text[3]+" ";
						 
			}
		 sql+=") ORDER BY ke";
		System.out.println("SQL:"+sql/*SQL()*/);
		 
		return sql;
		 
		}
	
}
