package com.project.demo.controller;

import com.project.demo.entity.DormitoryInformation;
import com.project.demo.service.DormitoryInformationService;
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
 *宿舍信息：(DormitoryInformation)表控制层
 *
 */
@RestController
@RequestMapping("/dormitory_information")
public class DormitoryInformationController extends BaseController<DormitoryInformation,DormitoryInformationService> {

    /**
     *宿舍信息对象
     */
    @Autowired
    public DormitoryInformationController(DormitoryInformationService service) {
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
