package com.moe.factory;

import com.moe.dao.*;
import com.moe.impl.*;

public class Factory {
    public static UserDao getUserDaoInstance() {
        return new UserDaoImpl();
    }

    public static MusicDao getMusicDaoInstance() {
        return new MusicDaoImpl();
    }

    public static ListDao getListDaoInstance() {
        return new ListDaoImpl();
    }

    public static DiscussDao getDiscussDaoInstance() {
        return new DiscussDaoImpl();
    }

    public static ClassifyDao getClassifyDaoInstance() {
        return new ClassifyDaoImpl();
    }
}
