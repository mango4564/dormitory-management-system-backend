package com.project.demo.controller;

import com.project.demo.entity.DormitoryAllocation;
import com.project.demo.service.DormitoryAllocationService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 *宿舍分配：(DormitoryAllocation)表控制层
 *
 */
@RestController
@RequestMapping("/dormitory_allocation")
public class DormitoryAllocationController extends BaseController<DormitoryAllocation,DormitoryAllocationService> {

    /**
     *宿舍分配对象
     */
    @Autowired
    public DormitoryAllocationController(DormitoryAllocationService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        String sql = "SELECT MAX(dormitory_allocation_id) AS max FROM "+"dormitory_allocation";
        Query select = service.runCountSql(sql);
        Integer max = (Integer) select.getSingleResult();
        sql = ("SELECT count(*) count FROM `dormitory_information` INNER JOIN `dormitory_allocation` ON dormitory_information.room_number=dormitory_allocation.room_number WHERE dormitory_information.number_of_beds &#60; dormitory_allocation.seize_a_seat AND dormitory_allocation.dormitory_allocation_id="+max).replaceAll("&#60;","<");
        select = service.runCountSql(sql);
        Integer count = Integer.valueOf(String.valueOf(select.getSingleResult()));
        if(count>0){
            sql = "delete from "+"dormitory_allocation"+" WHERE "+"dormitory_allocation_id"+" ="+max;
            select = service.runCountSql(sql);
            select.executeUpdate();
            return error(30000,"床位不足!");
        }
        sql = "UPDATE `dormitory_information` INNER JOIN `dormitory_allocation` ON dormitory_information.room_number=dormitory_allocation.room_number SET dormitory_information.number_of_beds = dormitory_information.number_of_beds - dormitory_allocation.seize_a_seat WHERE dormitory_allocation.dormitory_allocation_id="+max;
        select = service.runCountSql(sql);
        select.executeUpdate();
        return success(1);
    }

}
