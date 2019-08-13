/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.util;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author Chi Trung
 */
public class MyUtil {

    public static String formatDate(Date date) {
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String text = df.format(date);
        return text;
    }
}
