package com.lrm.dao;

import com.lrm.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by limi on 2017/10/15.
 */
public interface UserRepository extends JpaRepository<User,Long> {

    User findByUsernameAndPassword(String username, String password);
    /*
    select userSELECT t_user.`*`
    FROM t_user
    WHERE username='cx' AND PASSWORD='96e79218965eb72c92a549dd5a330112';

     */
}
