import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

public class demo {
	int OTP;
	public void sendSms() {
		try {
			// Construct data
			String apiKey = "apikey=" + "NTIzMjQ0MzU3Mzc5NjI0ZTcyNjY0ODY4Mzk1MjZiNjc=";
			Random rand = new Random();
			OTP = rand.nextInt(999999);
			
			String message = "&message=" + "Hey for registering in AutoPARK. Your OTP is " + OTP;
			String sender = "&sender=" + "Abhinav Verma";
			String numbers = "&numbers=  9024458477";
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.txtlocal.com/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			
		}
	}
}