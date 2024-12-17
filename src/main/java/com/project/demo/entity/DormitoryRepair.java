package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *宿舍报修：(DormitoryRepair)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DormitoryRepair")
public class DormitoryRepair implements Serializable {

    //DormitoryRepair编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dormitory_repair_id")
    private Integer dormitory_repair_id;
   // 楼栋
   @Basic
    private String building;
   // 楼层
   @Basic
    private String floor;
   // 房号
   @Basic
    private String room_number;
   // 报修类型
   @Basic
    private String repair_type;
   // 宿管人员
   @Basic
    private Integer housekeeping_personnel;
   // 学生
   @Basic
    private Integer student;
   // 报修原因
   @Basic
    private String repair_reason;
    // 审核状态
    @Basic
    private String examine_state;
    // 审核回复
    @Basic
    private String examine_reply;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
