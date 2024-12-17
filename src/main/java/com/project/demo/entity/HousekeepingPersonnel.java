package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *宿管人员：(HousekeepingPersonnel)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "HousekeepingPersonnel")
public class HousekeepingPersonnel implements Serializable {

    //HousekeepingPersonnel编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "housekeeping_personnel_id")
    private Integer housekeeping_personnel_id;
   // 性别
   @Basic
    private String gender;
    // 用户编号
    @Id
    @Column(name = "user_id")
    private Integer userId;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
