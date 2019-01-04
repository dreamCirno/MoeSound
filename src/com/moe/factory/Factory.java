package com.moe.factory;

import com.moe.dao.*;
import com.moe.impl.*;

public class Factory {
    public static UserDao getUserDaoInstance(){
        return new UserDaoImpl();
    }
}
