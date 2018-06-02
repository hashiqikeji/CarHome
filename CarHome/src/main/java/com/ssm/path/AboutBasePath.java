package com.ssm.path;

import org.springframework.util.StringUtils;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;

public class AboutBasePath  implements ServletContextAware{

    private ServletContext application;
    private String basePath;

    public void init() {
        if (StringUtils.isEmpty(basePath)) {
            basePath = application.getContextPath();
        }
        application.setAttribute("basePath", basePath);
        application.setAttribute("resPath", basePath + "/resources");
    }

    @Override
    public void setServletContext(ServletContext application) {
        this.application = application;
    }

    public void setbasePath(String basePath) {
        this.basePath = basePath;
    }



}
