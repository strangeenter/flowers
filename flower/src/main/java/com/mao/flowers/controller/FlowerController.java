package com.mao.flowers.controller;

import com.mao.flowers.service.FlowerService;
import com.mao.flowers.service.impl.FlowerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class FlowerController {
    @Autowired
    private FlowerService flowerService;

    /**
     * 根据id删除花
     * @param request
     * @return
     */
    @RequestMapping("/deleteFlower.do")
    @ResponseBody
    public String deleteFlower(HttpServletRequest request){
        String id = request.getParameter("id");
        String ret = "失败";
        try {
            ret = flowerService.deleteFlower(id) == 1 ? "成功" : "失败";

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return ret;
    }
}
