package com.hotel.mvc.jstl;

import com.hotel.mvc.orm.ORMService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
/**
 * controls process of returning all users registered in application
 */
public class UserController {

    @Autowired
    /** Communicating between database and application */
    private ORMService ormService;

    @RequestMapping(value = "/jstlReturnUsers", method = RequestMethod.GET)
    public ModelAndView listUsers() {
        return new ModelAndView("users/users", "resultObjectList", ormService.queryFindAllUsersJPA());
    }
}
