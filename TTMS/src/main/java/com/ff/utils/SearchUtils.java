package com.ff.utils;

public class SearchUtils {
    /**
     * 排除通配符
     * @param str
     * @return
     */
    //
    public static String specialStr(String str) {
        Integer index = str.indexOf("%");
        Integer index1 = str.indexOf("_");
        Integer index2 = str.indexOf("\\");
        StringBuffer stringBuffer = new StringBuffer(str);
        if (index != -1) {
            stringBuffer.insert(index, "\\");
        }
        if (index1 != -1) {
            stringBuffer.insert(index1, "\\");
        }
        if (index2 != -1) {
            stringBuffer.insert(index2, "\\");
        }
        return stringBuffer.toString();

    }

    /**
     * 不连续关键词查询
     * @param str
     * @return
     */
    //    不连续关键词查询
    public static String specialStrKeyword(String str) {
        if (str == null || str == "") {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char chari = stringBuffer.charAt(i);
            if (i == 0) {
                if (chari == '%' || chari == '_' || chari == '\\') {
                    stringBuffer.insert(i, "\\");
                    i++;
                    length++;
                }
            } else {
                if (chari == '%' || chari == '_' || chari == '\\') {
                    stringBuffer.insert(i, "%\\");
                    i += 2;
                    length += 2;
                } else {
                    stringBuffer.insert(i, "%");
                    i++;
                    length++;
                }
            }
        }
        return stringBuffer.toString();

    }

}
