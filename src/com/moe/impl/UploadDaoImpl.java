package com.moe.impl;

import com.moe.dao.UploadDao;
import com.moe.entity.Upload;
import com.moe.utils.DBUtils;

public class UploadDaoImpl implements UploadDao {
    @Override
    public boolean insertUploadInfo(Upload upload) {
        try {
            String sql = "INSERT INTO upload (musicId,userId) VALUES (?,?)";
            int result = DBUtils.doUpdate(sql, upload.getMusicId(), upload.getUserId());
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll();
        }
        return false;
    }
}
