package dao.code;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import org.junit.Test;

import java.util.Hashtable;

public class QrCode {
    @Test
    public void demo1() throws WriterException {
        Hashtable<EncodeHintType, Object> hints = new Hashtable<>() ;
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8") ;
        BitMatrix bitMatrix = new MultiFormatWriter().encode("123", BarcodeFormat.QR_CODE,100,100,hints);

    }
}
