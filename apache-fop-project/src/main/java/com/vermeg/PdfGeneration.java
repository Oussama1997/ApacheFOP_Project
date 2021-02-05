package com.vermeg;

import java.io.IOException;
import javax.xml.transform.TransformerException;

import org.apache.fop.apps.FOPException;


public class PdfGeneration {
	
	public static final String RESOURCES_DIR = "src//main//resources//";
    public static final String OUTPUT_DIR = "src//main//resources//output//";

	public static void main( String[] args ){
	    try {
	    	ConvertToPDF.getInstance().convertToPDF(RESOURCES_DIR,OUTPUT_DIR);
	    } catch (FOPException | IOException | TransformerException e) {
	            e.printStackTrace();
	        }
	    }

}
