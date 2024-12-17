package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *宿舍分配：(DormitoryAllocation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DormitoryAllocation")
public class DormitoryAllocation implements Serializable {

    //DormitoryAllocation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dormitory_allocation_id")
    private Integer dormitory_allocation_id;
   // 楼栋
   @Basic
    private String building;
   // 楼层
   @Basic
    private String floor;
   // 房号
   @Basic
    private String room_number;
   // 房间类型
   @Basic
    private String room_type;
   // 床位号
   @Basic
    private String bed_number;
   // 占位
   @Basic
    private Integer seize_a_seat;
   // 学生账号
   @Basic
    private Integer student_account;
   // 宿管人员
   @Basic
    private Integer housekeeping_personnel;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
