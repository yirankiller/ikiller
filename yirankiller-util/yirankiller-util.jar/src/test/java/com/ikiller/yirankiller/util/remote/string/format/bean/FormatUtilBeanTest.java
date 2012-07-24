package com.ikiller.yirankiller.util.remote.string.format.bean;


import com.ikiller.yirankiller.util.jndibinding.JndiBindingRemote;
import com.ikiller.yirankiller.util.remote.string.format.FormatUtil;
import org.junit.Test;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.Properties;

/**
 * User: easliu
 * Date: 7/23/12
 * Version: 1.0
 */
public class FormatUtilBeanTest {
    @Test
    public void test(){
        System.out.println("test");
        Properties props = new Properties();
        props.setProperty("java.naming.factory.initial","org.jnp.interfaces.NamingContextFactory");
        props.setProperty("java.naming.provider.url", "10.10.99.6:1099");
        props.setProperty("java.naming.factory.url.pkgs", "org.jboss.naming");
        InitialContext ctx;
        try {
            ctx = new InitialContext(props);
            FormatUtil helloworld = (FormatUtil) ctx.lookup(JndiBindingRemote.IKILLER_FORMATUTILBEAN_REMOTE);
            System.out.println(helloworld.formatDate(""));
        }catch(NamingException e) {
            System.out.println(e.getMessage());
        }
    }
}
