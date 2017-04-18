package com.software.util;

import com.software.core.entity.User;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by root on 17-4-10.
 */
public class RegisterCheck {
    //综合验证
    public static boolean check(String userName,List<User> list,String password,String phoneNumber){
        boolean flagpwd = checkPassword(password);
        boolean flagusername = checkUserName(userName,list);
        boolean flagphonenum = checkPhoneNumber(phoneNumber);
        if(flagpwd&flagphonenum&flagphonenum)
        {
            return true;
        }
        else {
            return false;
        }
    }

    //验证用户ID
    public static boolean checkUserName(String userName,List<User> list) {

        boolean flag = true;
        char[] chars = userName.toCharArray();
        if(userName.length() >= 6 && userName.length() < 16) {
            for(User user : list ) {
                if (userName.equals(user.getUserName())) {
                    flag = false;
                    return flag;
                }
            }
            for(int i = 0; i < userName.length(); i++) {
                if(!(chars[i] >= '0' && chars[i] <='9'))
                    if(!(chars[i] >= 'a' && chars[i] <= 'z'))
                        if(!(chars[i] >= 'A' && chars[i] <= 'Z')) {
                            flag = false;
                            return flag;
                        }
            }
        }
        else
            flag = false;
        return flag;
    }
    //验证用户密码
    public static boolean checkPassword (String password) {
        boolean flag = true;
        boolean countNum = false;
        boolean countLow = false;
        boolean countUp = false;
        char[] chars = password.toCharArray();
        if(password.length() >= 6 && password.length() < 16) {
            for(int i = 0; i < password.length(); i++) {
                if((chars[i] >= '0' && chars[i] <='9'))
                    countNum = true;
                if((chars[i] >= 'a' && chars[i] <= 'z'))
                    countLow = true;
                if((chars[i] >= 'A' && chars[i] <= 'Z'))
                    countUp = true;
            }
            if(countNum == false || countLow == false || countUp == false)
                flag = false;
        }
        else
            flag = false;
        return flag;
    }
    //检查手机号码
    public static boolean checkPhoneNumber(String phoneNumber){
        boolean flag = false;
        try{
            Pattern p = Pattern.compile("^((17[7,8])|(13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
            Matcher m = p.matcher(phoneNumber);
            flag = m.matches();
        }catch(Exception e){
            flag = false;
        }
        return flag;
    }

    public static boolean isNum(String number){
        boolean flag = false;
        try{
            Pattern p = Pattern.compile("^[0-9]{5}$");
            Matcher m = p.matcher(number);
            flag = m.matches();
        }catch(Exception e){
            flag = false;
        }
        return flag;
    }

}

