package com.project.demo.controller;

import com.project.demo.entity.DormitoryNotice;
import com.project.demo.service.DormitoryNoticeService;
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
 *宿舍通知：(DormitoryNotice)表控制层
 *
 */
@RestController
@RequestMapping("/dormitory_notice")
public class DormitoryNoticeController extends BaseController<DormitoryNotice,DormitoryNoticeService> {

    /**
     *宿舍通知对象
     */
    @Autowired
    public DormitoryNoticeController(DormitoryNoticeService service) {
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
