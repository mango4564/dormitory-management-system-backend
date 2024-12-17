package com.project.demo.controller;

import com.project.demo.entity.DormitoryRepair;
import com.project.demo.service.DormitoryRepairService;
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
 *宿舍报修：(DormitoryRepair)表控制层
 *
 */
@RestController
@RequestMapping("/dormitory_repair")
public class DormitoryRepairController extends BaseController<DormitoryRepair,DormitoryRepairService> {

    /**
     *宿舍报修对象
     */
    @Autowired
    public DormitoryRepairController(DormitoryRepairService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
