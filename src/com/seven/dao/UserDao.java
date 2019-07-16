package com.seven.dao;
import com.seven.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserDao {
    @Select("select userName,userSex,userPassword,userEmail,userBirth,userFlag from usertable where userName=#{userName}")
    public User getUserByUserName(@Param("userName")String userName);

    @Insert("insert into usertable (userName,userSex,userPassword,userEmail,userBirth,userFlag) values " +
            "#{userName},(#{userSex},#{userPassword},#{userEmail},#{userBirth},#{userFlag})")
    public void addUser(User user);

    @Select("select userName,userSex,userPassword,userEmail,userBirth,userFlag from usertable where userName=#{userName}")
    public User checkUserNameIsExit(@Param("userName")String userName);
}
