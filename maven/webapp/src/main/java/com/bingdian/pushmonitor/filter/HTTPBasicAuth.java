
package com.bingdian.pushmonitor.filter;

import com.bingdian.newpush.utils.PropertiesUtil;
import com.sun.xml.internal.messaging.saaj.util.Base64;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HTTPBasicAuth implements Filter {
    private String username= PropertiesUtil.readStringValue("auth.username");
    private String password= PropertiesUtil.readStringValue("auth.password");

    public HTTPBasicAuth() {
    }

    @Override
    public void doFilter(ServletRequest req0, ServletResponse resp0,
            FilterChain chain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req0;
        HttpServletResponse response = (HttpServletResponse) resp0;

        String authorization = request.getHeader("Authorization");
        if (authorization != null) {
            String c[] = parseAuthorization(authorization);
            if (c != null && username.equals(c[0])
                    && password.equals(c[1])) {
                chain.doFilter(request, response);
                return;
            }
        }

        response.setHeader("WWW-Authenticate", "Basic realm=\"Restricted\"");
        response.sendError(401);
    }

    private String[] parseAuthorization(String authorization) {
        String parts[] = authorization.split(" ");
        if (parts.length == 2 && parts[0].equalsIgnoreCase("Basic")) {
            String userPass = Base64.base64Decode(parts[1]);

            int p = userPass.indexOf(":");
            if (p != -1) {
                return new String[] { userPass.substring(0, p),
                        userPass.substring(p + 1) };
            }
        }
        return null;
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
    }

    @Override
    public void destroy() {
    }

}
