package com.lj.entity;

import java.util.Date;

public class TScenicSpots {
    private Long id;//主键

    private String name;//名称

    private String images;//图片

    private String address;//地址

    private Long typeId;//类型id

    private String typeName;//类型名称

    private Boolean flag;//是否上架

    private Date createTime;//创建时间

    private Date updateTime;//修改时间

    private Long createUser;//创建人

    private Long updateUser;//修改人

    public  Long getId() {return id;}

    public void setId(Long id) {this.id = id;}

    public String getName() {return name;}

    public void setName(String name) {this.name = name ==null? null : name.trim();}

    public String getImages() {return images;}

    public void setImages(String images) {this.images = images ==null? null : images.trim();}

    public String getAddress() {return address;}

    public void setAddress(String address){this.address =address ;}

    public Long getTypeId() {return typeId;}

    public void setTypeId(Long typeId) {this.typeId = typeId;}


    public String getTypeName() {return typeName;}

    public void setTypeName(String typeName) {this.typeName = typeName ==null? null : typeName.trim();}

    public Boolean getFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Long getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Long createUser) {
        this.createUser = createUser;
    }

    public Long getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(Long updateUser) {
        this.updateUser = updateUser;
    }


}
