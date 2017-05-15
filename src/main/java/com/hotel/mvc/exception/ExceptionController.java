package com.hotel.mvc.exception;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
/**
 * Getting runtime exceptions
 */
public class ExceptionController {

    @RequestMapping(value = "/runtimeException", method = RequestMethod.GET)
    /**
     * throws RuntimeException
     */
    public void throwException( ) {
        throw new RuntimeException();
    }
}
