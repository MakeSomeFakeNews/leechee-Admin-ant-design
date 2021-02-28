package com.office2easy.leechee.support;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.office2easy.leechee.utils.R;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.boot.autoconfigure.web.ErrorProperties;
import org.springframework.boot.autoconfigure.web.servlet.error.BasicErrorController;
import org.springframework.boot.web.servlet.error.DefaultErrorAttributes;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@Slf4j
public class GlobalFilterExceptionHandler extends BasicErrorController {
    public GlobalFilterExceptionHandler() {
        super(new DefaultErrorAttributes(), new ErrorProperties());
    }

    @Override
    public ResponseEntity error(HttpServletRequest request) {
        Map<String, Object> errorAttributes = getErrorAttributes(request, isIncludeStackTrace(request, MediaType.ALL));
        HttpStatus status = getStatus(request);
        String message = errorAttributes.get("message").toString();
        String exception = (String) errorAttributes.get("exception");
        if (!StringUtils.isBlank(exception)) {
            if (exception.equals(AuthenticationException.class.getName())) {
                throw new AuthenticationException();
            } else if (exception.equals(AuthorizationException.class.getName())) {
                throw new AuthorizationException();
            }
        }
        log.info("exception message:{},status:{}", message, status);
        return new ResponseEntity(message, status);
    }
}
