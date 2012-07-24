<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*,javax.naming.*,com.ikiller.yirankiller.util.remote.string.format.FormatUtil,com.ikiller.yirankiller.util.jndibinding.JndiBindingRemote"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head></head>
<body>
this is page.
<hr />
<%
    Properties props = new Properties();
    props.setProperty("java.naming.factory.initial","org.jnp.interfaces.NamingContextFactory");
    props.setProperty("java.naming.provider.url", "10.10.99.9:1099");
    props.setProperty("java.naming.factory.url.pkgs", "org.jboss.naming");
    InitialContext ctx;
    try {
        ctx = new InitialContext(props);
        if(ctx != null){
            out.println("ctx obj");
        }
        FormatUtil formatUtil = (FormatUtil) ctx.lookup("FormatUtilBean/remote");
        out.println(formatUtil.formatDate(""));
    }catch(NamingException e) {
        e.printStackTrace();
        out.println(e.getMessage());
    }
%>
</body>
</html>
