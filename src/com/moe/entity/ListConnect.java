package com.moe.entity;

public class ListConnect implements java.io.Serializable {
    private int musicId;
    private int listId;

    private ListConnect() {
        super();
    }

    public ListConnect(int musicId, int listId) {
        this.musicId = musicId;
        this.listId = listId;
    }

    public int getMusicId() {
        return musicId;
    }

    public void setMusicId(int musicId) {
        this.musicId = musicId;
    }

    public int getListId() {
        return listId;
    }

    public void setListId(int listId) {
        this.listId = listId;
    }
}
