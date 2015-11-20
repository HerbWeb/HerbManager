package com.mapping;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import com.beans.search;
import com.db.herbOp;
import com.model.*;

/**
 * @author
 * ����sqlӳ��Ľӿڣ�ʹ��ע��ָ������Ҫִ�е�SQL
 */
public interface sqlMapper {
//  �û��͹���Ա��SQL����--------------------------------------------------------------------------------------------------------------------------
    //ʹ��@Insertע��ָ��add����Ҫִ�е�SQL
    @Insert("insert into userInfo(accountName,password,dateTime) values( #{accountName},#{password},#{dateTime})")
    public int addUser(userInfo user);
    
    //ʹ��@Deleteע��ָ��deleteById����Ҫִ�е�SQL
    @Delete("delete from userInfo where accountName=#{accountName}")
    public int deleteByName(userInfo user);
    
    //ʹ��@Updateע��ָ��update����Ҫִ�е�SQL
    @Update("update userInfo set name=#{name},password=#{password} where accountName=#{accountName}")
    public int update(userInfo user);
    
    //ʹ��@Selectע��ָ��getById����Ҫִ�е�SQL
    @Select("select * from userInfo where accountName=#{accountName}")
    public userInfo getByName(String accountName);
    
    //ʹ��@Selectע��ָ��getAll����Ҫִ�е�SQL
    @Select("select * from userInfo")
    public List<userInfo> getAllUser();
    
   @Select( "SELECT * FROM administratorInfo WHERE accountName =#{accountName} and password =#{password}")
   public adminInfo getAdmin(adminInfo admin);
   
   @Select( "SELECT * FROM userInfo WHERE accountName =#{accountName} and password =#{password}")
   public userInfo getUser(userInfo user);
   
   @Select( "SELECT * FROM userInfo WHERE accountName =#{accountName}")
   public userInfo getUserbyName(userInfo user);
   
   
// ֲ�����Ա�SQL����--------------------------------------------------------------------------------------------------------------------------
  /* @Insert("insert into herbInfo(zhongyaoming,yaocaibieming,soshuzhiwuming,ladingming, men,gang,ke,shu,yaoxingfenlei,xingwei,guijing,gongneng,zhuzhi,yongfayongliang,paozhi,chandi,ruyaobuwei) values( #{zhongyaoming},#{yaocaibieming},#{soshuzhiwuming},#{ladingming}, #{men},#{gang},#{ke},#{shu},#{yaoxingfenlei},#{xingwei},#{guijing},#{gongneng},#{zhuzhi},#{yongfayongliang},#{paozhi},#{chandi},#{ruyaobuwei)}")
   public int addHerb(herbInfo herb);*/
   
   @Select("select * from herbAttr")
   public List<herbAttr> getAllHerb();
   
   @Select("select * from herbAttr where zhongyaoming=#{zhongyaoming}")
   public herbAttr getAttrByZYName(herbAttr attr);
   
   @Delete("delete from herbAttr where zhongyaoming=#{zhongyaoming}")
   public int deleteByZYName(herbAttr attr);
   
   @Select("select shu from v_keshu where ke=#{ke}")
   public List<String> getByKe(treeInfo tree);
   
   @Select("select zhongyaoming from v_tree where shu=#{shu}")
   public List<String> getByShu(treeInfo tree);
   
   @Select("select * from V_ke")
   public List<String> getAllKe();
   
   @Select("select * from V_men")
   public List<String> getAllMen();
   
   @Select("select * from V_shu")
   public List<String> getAllShu();
   
   @Select("select * from V_gang")
   public List<String> getAllGang();
   
   @Select("select * from V_yaoxingfenlei")
   public List<String> getAllYaoxing();
 /*  @Update("update herbInfo set title=#{title},body=#{body} where id=#{id}")
   public int updateHerb(herbInfo herb);*/
  
// ֲ��SQL����--------------------------------------------------------------------------------------------------------------------------  

   
// ����SQL����--------------------------------------------------------------------------------------------------------------------------
   @Insert("insert into articleInfo(id,title,body,date,auther) values(  #{id},#{title},#{body},#{date},#{auther})")
   public int addArticle(articleInfo user);
   
   @Select("select * from articleInfo")
   public List<articleInfo> getAllArticle();
   
   @Select("select * from articleInfo where id=#{id}")
   public articleInfo getById(articleInfo article);
   
   @Delete("delete from articleInfo where id=#{id}")
   public int deleteById(articleInfo article);
   
   @Update("update articleInfo set title=#{title},body=#{body},id=#{date} where id=#{id}")
   public int updateArticle(articleInfo article);
   
   
// Ȩ��SQL����--------------------------------------------------------------------------------------------------------------------------
   @Select("select * from authorization")
   public List<authorization> getAllAuth();
   
   @Update("update authorization set newsOp=#{newsOp},userOp=#{userOp},dataOp=#{dataOp},classificationOp=#{classificationOp},searchOp=#{searchOp},commentOp=#{commentOp},systemOp=#{systemOp} where name=#{name}")
   public int updateAuth(authorization auth);
   
   @Insert("insert into authorization(name,newsOp,userOp,dataOp,classificationOp,searchOp,commentOp,systemOp) values(#{name}, #{newsOp},#{userOp},#{dataOp},#{classificationOp},#{searchOp},#{commentOp},#{systemOp})")
   public int addAuth(authorization auth);
   
   
// menuSQL����--------------------------------------------------------------------------------------------------------------------------
   @Select("select id from t_menu_copy")
   public List<String> getAllId();
   
   @Update("update t_menu_copy set ord=#{k} where id=#{id}")
   public int updateTree(treeInfo tre);
   
// ֲ�����ݲ�ѯSQL����--------------------------------------------------------------------------------------------------------------------------  
   @Select("select * from v_allherbinfo where zhongyaoming=#{zhongyaoming}")
   public herbInfo getByZYName(herbInfo herb);
   
   @Select("select * from v_allherbinfo where ${id}=#{name}")
   public herbInfo getBy1(@Param("name")String name,@Param("id")String id);
   
   
   @SelectProvider(type=herbOp.class,method="getResultSql")
   public List<herbInfo> getResult(search info);
    
   
   
   
}