package com.moe.dao;

import com.moe.entity.Upload;

public interface UploadDao {
    /**
     * 添加上传信息记录
     * @return
     */
    public boolean insertUploadInfo(Upload upload);
}
