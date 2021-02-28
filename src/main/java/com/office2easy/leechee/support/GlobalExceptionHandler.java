package com.office2easy.leechee.support;

import com.office2easy.leechee.exception.LCException;
import com.office2easy.leechee.utils.R;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.sql.SQLSyntaxErrorException;

@RestControllerAdvice
public class GlobalExceptionHandler {


    @ExceptionHandler(AuthenticationException.class)
    @ResponseStatus(HttpStatus.OK)
    public Object authenticationExceptionHandler(AuthenticationException e) {
        return R.error().message(e.getMessage());
    }

    @ExceptionHandler(AuthorizationException.class)
    @ResponseStatus(HttpStatus.FORBIDDEN)
    public Object authorizationExceptionHandler(AuthorizationException e) {
        return R.error().message(e.getMessage());
    }

    @ExceptionHandler(LCException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public Object lcExceptionHandler(LCException e) {
        return R.error().message(e.getMessage());
    }

    @ExceptionHandler(SQLSyntaxErrorException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public Object lcExceptionHandler(SQLSyntaxErrorException e) {
        e.printStackTrace();
        return R.error().message(e.getMessage());
    }
}
