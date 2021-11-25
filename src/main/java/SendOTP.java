import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Random;

import javax.net.ssl.HttpsURLConnection;

public class SendOTP {
	
    
	public static void sendOTP(String message, String number, String apikey) throws Exception {
		Random rnd = new Random();
		int numInt = rnd.nextInt(999999);
		String num =""+numInt;
		URL url = null ;
		String myURL="https://www.fast2sms.com/dev/bulkV2?authorization="+apikey+"&variables_values=" +num +"&route=otp&numbers=" +number;
		try {
	        String u = myURL;
	        url = new URL(u);
	    } catch (Exception e) {
	        e.printStackTrace();	
	        
	    }
		HttpsURLConnection con = (HttpsURLConnection)url.openConnection();
		
		try {
			message = URLEncoder.encode(message,"UTF-8");
			
			
		} catch (UnsupportedEncodingException e) {
			
			
			e.printStackTrace();
		}
		
		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", "Chrome");
		con.setRequestProperty("cache-control","no-cache");
		int responseCode = con.getResponseCode();
		
		StringBuffer response = new StringBuffer();
		BufferedReader br = new BufferedReader (new InputStreamReader(con.getInputStream()));
		
		while(true) {
			String line = br.readLine();
			if(line == null) {
				break;
				
			}
			response.append(line);
		}
		
		
		
		
	}
	public static void main(String[] args) {
			String message="";
			String number="9024458477";
			String apikey="rnPdkHJ9AVQIYUi3so4MyeOcpGqlW87w2zEFhBmgRaK0uvbTxZxwzeNmol0vFhAKRBGLDEVaJ6Cp8HQT";
			try {
				sendOTP(message,number,apikey);
			} catch (Exception e) {
				
				e.printStackTrace();
			}

	}

}
