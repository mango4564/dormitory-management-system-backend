package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *宿舍信息：(DormitoryInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DormitoryInformation")
public class DormitoryInformation implements Serializable {

    //DormitoryInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dormitory_information_id")
    private Integer dormitory_information_id;
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
   // 床位数
   @Basic
    private Integer number_of_beds;
   // 宿管人员
   @Basic
    private Integer housekeeping_personnel;
   // 备注
   @Basic
    private String remarks;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
