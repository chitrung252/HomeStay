package e.admin.resomanager.utils;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class ChangeValue {

    public static String formatDecimalPrice(Float number) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(number) + " đ";
    }
    public static int formatFloatToInt(Float number) {
        return number.intValue();
    }
    public  static String changePercentFloat(float cate_percent, float total){
        float  result = Math.round((cate_percent / total) * 100);
         return result + " % ";
    }
    public static   String fomatStringDate(String date1) {
        String newFormatData;

        SimpleDateFormat oldformat = new SimpleDateFormat(
                "dd/MM/yyyy");
        SimpleDateFormat newFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date old = null;
        try {
            old = oldformat.parse(date1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        newFormatData = newFormat.format(old);
        return  newFormatData;
    }

}
