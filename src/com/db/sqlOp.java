package com.db;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mapping.sqlMapper;

public class sqlOp {

    /**
     * ��ȡSqlSessionFactory
     * @return SqlSessionFactory
     */
    public static SqlSessionFactory getSqlSessionFactory() {
        String resource = "configuration.xml";
        InputStream is = sqlOp.class.getClassLoader().getResourceAsStream(resource);
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
        return factory;
    }
    
    /**
     * ��ȡSqlSession
     * @return SqlSession
     */
    public static SqlSession getSqlSession() {
        return getSqlSessionFactory().openSession();
    }
    
    /**
     * ��ȡSqlSession
     * @param isAutoCommit 
     *         true ��ʾ������SqlSession������ִ����SQL֮����Զ��ύ����
     *         false ��ʾ������SqlSession������ִ����SQL֮�󲻻��Զ��ύ������ʱ����Ҫ�����ֶ�����sqlSession.commit()�ύ����
     * @return SqlSession
     */
    public static SqlSession getSqlSession(boolean isAutoCommit) {
        return getSqlSessionFactory().openSession(isAutoCommit);
    }
}