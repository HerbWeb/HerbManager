package com.db;



import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Iterator;
import java.util.List;

import com.model.*;
import com.mapping.sqlMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.beans.search;
import com.db.*;

public class dbTest {

    public static void main(String[] args) throws IOException {
        //mybatis锟斤拷锟斤拷锟斤拷锟侥硷拷
        String resource = "configuration.xml";
        //使锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟絤ybatis锟斤拷锟斤拷锟斤拷锟侥硷拷锟斤拷锟斤拷也锟斤拷锟截癸拷锟斤拷锟斤拷映锟斤拷锟侥硷拷锟斤拷
        InputStream is = dbTest.class.getClassLoader().getResourceAsStream(resource);
        //锟斤拷锟斤拷sqlSession锟侥癸拷锟斤拷
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
        //使锟斤拷MyBatis锟结供锟斤拷Resources锟斤拷锟斤拷锟絤ybatis锟斤拷锟斤拷锟斤拷锟侥硷拷锟斤拷锟斤拷也锟斤拷锟截癸拷锟斤拷锟斤拷映锟斤拷锟侥硷拷锟斤拷
        //Reader reader = Resources.getResourceAsReader(resource); 
        //锟斤拷锟斤拷sqlSession锟侥癸拷锟斤拷
        //SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
        //锟斤拷锟斤拷锟斤拷执锟斤拷映锟斤拷锟侥硷拷锟斤拷sql锟斤拷sqlSession
        
        SqlSession session = sessionFactory.openSession(true);//锟叫讹拷锟角凤拷锟侥憋拷锟斤拷菘猓拷锟轿拷锟�锟斤拷锟皆改憋拷  默锟斤拷为false锟斤拷锟斤拷锟斤拷锟剿猜测。
        /**
         * 映锟斤拷sql锟侥憋拷识锟街凤拷
         * me.gacl.mapping.userMapper锟斤拷userMapper.xml锟侥硷拷锟斤拷mapper锟斤拷签锟斤拷namespace锟斤拷锟皆碉拷值锟斤拷
         * getUser锟斤拷select锟斤拷签锟斤拷id锟斤拷锟斤拷值锟斤拷通锟斤拷select锟斤拷签锟斤拷id锟斤拷锟斤拷值锟酵匡拷锟斤拷锟揭碉拷要执锟叫碉拷SQL
         */
       /* String statement = "com.mapping.userMapper.getUser";//映锟斤拷sql锟侥憋拷识锟街凤拷
        //执锟叫诧拷询锟斤拷锟斤拷一锟斤拷唯一user锟斤拷锟斤拷锟絪ql
        User user = session.selectOne(statement, 2);
        System.out.println(user);*/
        //通锟斤拷xml锟斤拷式
        /*String statement = "com.mapping.userMapper.deleteUser";//映锟斤拷sql锟侥憋拷识锟街凤拷
        User user = new User();
        user.setId(3);
        user.setName("锟矫伙拷锟铰帮拷锟斤拷锟斤拷");
        user.setAge(20);
        //执锟叫诧拷锟斤拷锟斤拷锟�
        int retResult = session.delete(statement,3);
        //锟街讹拷锟结交锟斤拷锟斤拷
        //sqlSession.commit();
        //使锟斤拷SqlSession执锟斤拷锟斤拷SQL之锟斤拷锟斤拷要锟截憋拷SqlSession
        session.close();
        System.out.println(retResult);*/
        //通锟斤拷注锟斤拷姆锟绞斤拷锟�
        sqlMapper mapper = session.getMapper(sqlMapper.class);
   /*     List<String> id=authOp.getAllId();
        int count=0;
        for(int i=0;i<id.size();i++){
        	treeInfo tre=new treeInfo();
        	tre.id=id.get(i);
        	tre.k=i+1;
        	System.out.println(id.get(i));
        	authOp.update(tre);
        	if(id.get(i).contains("科")|id.get(i).contains("纲")||id.get(i).contains("属")){
        	tre.k=Integer.toString(i+1);
        	System.out.println(id.get(i));
        	authOp.update(tre);
        	count++;}
        	
        	
        }
        System.out.println(count);*/
        List<herbInfo> herb;
        //herb.setZhongyaoming("徐长卿");
        search info=new search();

        info.setText1("  ");
        info.setText2("");
        info.setText3("四川");
        info.setText4("   ");
        String[] partion="T恤  ,nihc.bpqu，都       ".split("[,，.。!@#$%^&*()~?';]");
        info.setAnd_or1("or");
        info.setAnd_or2("or");
        info.setAnd_or3("and");
        
        info.setScope1("zhongyaoming");
        info.setScope2("chandi");
        info.setScope3("chandi");
        info.setScope4("zhuzhi");
        herb=herbOp.getResult(info);
        System.out.println(herb.size());
        
        
       /* treeInfo tree=new treeInfo();
		 tree.ke="菊科";
		  List<String> tre=herbOp.getAllByKe(tree);
		  for(int j=0;j<=tre.size();j++){
				System.out.println(tre.get(j));}*/
        
/*        articleInfo a = new articleInfo();
        a.id="20151104203824";
		a.title="你好么me";
		a.body="<p>常侧面</p>";
		a.date=new java.sql.Timestamp(System.currentTimeMillis()).toString().replaceAll("\\..*", "");
		a.auther="admin";
			//实例化一个数据层访问对象
		articleOp u = new articleOp();
		u.update(a);*/
        
		 /* for (String t : tre) {
	             System.out.println(t);
	         }*/
         /*List<herbInfo> result = mapper.getAllHerb();*/
        //使锟斤拷SqlSession执锟斤拷锟斤拷SQL之锟斤拷锟斤拷要锟截憋拷SqlSession
       /*  System.out.println(result.size());
         for (herbInfo student : result) {
             System.out.println(student.ruyaobuwei);
         }*/
        session.close();
        //System.out.println(op.isExist(user));
        System.out.println(new java.sql.Timestamp(System.currentTimeMillis()).toString().replaceAll("\\..*", ""));
    }
}
