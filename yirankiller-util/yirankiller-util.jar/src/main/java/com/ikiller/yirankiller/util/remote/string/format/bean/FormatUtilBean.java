package com.ikiller.yirankiller.util.remote.string.format.bean;

import com.ikiller.yirankiller.util.jndibinding.JndiBindingRemote;
import com.ikiller.yirankiller.util.remote.string.format.FormatUtil;
import org.jboss.annotation.ejb.RemoteBinding;

import javax.ejb.Remote;
import javax.ejb.Stateless;

/**
 * User: easliu
 * Date: 7/20/12
 * Version: 1.0
 */
@Stateless
@Remote({FormatUtil.class})
public class FormatUtilBean implements FormatUtil {
    @Override
    public String formatDate(String date) {
        return "2012/07/11";
    }
}
