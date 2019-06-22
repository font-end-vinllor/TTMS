package com.ff.utils;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Hashtable;

public class Qrcode {
    public static String generateQRCode(String text, int width, int height, String format) throws Exception {
        Hashtable<EncodeHintType, Object> hints = new Hashtable<>();
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
        BitMatrix bitMatrix = new MultiFormatWriter().encode(text, BarcodeFormat.QR_CODE, width, height, hints);

        String pathName = "temp.jpg";
        File outputFile = new File(pathName);
        if (!outputFile.exists()) {
            outputFile.mkdirs();
        }
        MatrixToImage.writeToFile(bitMatrix, format, outputFile);
        return pathName;
    }

}
