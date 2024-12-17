package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *宿舍通知：(DormitoryNotice)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DormitoryNotice")
public class DormitoryNotice implements Serializable {

    //DormitoryNotice编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dormitory_notice_id")
    private Integer dormitory_notice_id;
   // 编号
   @Basic
    private String number;
   // 通知类型
   @Basic
    private String notification_type;
   // 通知标题
   @Basic
    private String notice_title;
   // 宿管人员
   @Basic
    private Integer housekeeping_personnel;
   // 通知内容
   @Basic
    private String notice_content;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
