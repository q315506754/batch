package com.bingdian.pushmonitor.controller;

import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author Jiangli
 *
 *         CreatedTime  2015/6/9 0009 10:39
 */
@Controller
@RequestMapping(value = "/")
public class CommonController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());


    @Autowired
    private HttpSession session;


    public CommonController() {
        logger.debug("CommonController construct...");
    }


    @RequestMapping(value = "/eventinfo", method = {RequestMethod.POST, RequestMethod.GET}, produces = "application/json;charset=utf-8")
    public
    @ResponseBody
    JSONObject eventinfo() {

        JSONObject param = new JSONObject();


        return param;
    }

    @RequestMapping(value = "/hotelPopInfo", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView popInfo(HttpServletRequest request,String pName) {
        logger.debug(pName);

        //TODO
        ModelAndView ret = new ModelAndView("module/hotelPopInfo");
        return ret;
    }

}
