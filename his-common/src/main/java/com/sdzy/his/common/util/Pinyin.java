package com.sdzy.his.common.util;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.springframework.util.StringUtils;

/**
 * @author mq
 * @description: TODO
 * @title: Pinyin
 * @projectName his
 * @date 2020/12/710:22
 */
public class Pinyin {
    /**
     * 得到中文首字母
     *
     * @param str
     * @return
     */
    public static String getPinYinHeadChar(String str) {

        String convert = "";
        for (int j = 0; j < str.length(); j++) {
            char word = str.charAt(j);
            String[] pinyinArray = PinyinHelper.toHanyuPinyinStringArray(word);
            if (pinyinArray != null) {
                convert += pinyinArray[0].charAt(0);
            } else {
                convert += word;
            }
        }
        return convert;
    }

    /**
     * 汉字转为拼音
     * @param chinese
     * @return
     */
    public static String chineseToPinyin(String chinese){
        StringBuilder pinyinStr = new StringBuilder();
        if(StringUtils.isEmpty(chinese)){
            return pinyinStr.toString();
        }
        char[] newChar = chinese.toCharArray();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for (int i = 0; i < newChar.length; i++) {
            if (newChar[i] > 128) {
                try {
                    pinyinStr.append(PinyinHelper.toHanyuPinyinStringArray(newChar[i], defaultFormat)[0]);
                } catch (BadHanyuPinyinOutputFormatCombination e) {
                    e.printStackTrace();
                }
            }else{
                pinyinStr.append(newChar[i]);
            }
        }
        return pinyinStr.toString();
    }

    /**
     * 获取字符串拼音的第一个字母
     * @param chinese 汉字
     */
    public static String chineseToFirstChar(String chinese){
        StringBuilder pinyinStr = new StringBuilder();
        char[] newChar = chinese.toCharArray();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for (int i = 0; i < newChar.length; i++) {
            if (newChar[i] > 128) {
                try {
                    pinyinStr.append(PinyinHelper.toHanyuPinyinStringArray(newChar[i], defaultFormat)[0].charAt(0));
                } catch (BadHanyuPinyinOutputFormatCombination e) {
                    e.printStackTrace();
                }
            }else{
                pinyinStr.append(newChar[i]);
            }
        }
        return pinyinStr.toString();
    }

    public static void main(String[] args) {
        String result = chineseToPinyin("饕鬄").toUpperCase();
        String aChar = chineseToFirstChar("饕鬄").toUpperCase();
        System.out.println(result);
        System.out.println(aChar);
    }
}
