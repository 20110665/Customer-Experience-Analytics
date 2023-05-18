package vn.iotstar.service;


import java.io.IOException;

import org.json.JSONObject;
import org.springframework.stereotype.Service;


import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;


@Service
public class ApiService {
	private static final String apiToken = "c6e9a21d10fb4ff0887bfefc487200d4";

    
    public JSONObject createTranscript (String audioUrl) throws IOException {
    	String url = "https://api.assemblyai.com/v2/transcript";
    	
    	okhttp3.MediaType mediaType = okhttp3.MediaType.parse("application/json");
    	
    	JSONObject data = new JSONObject();
    	data.put("audio_url", audioUrl);
    	
    	RequestBody requestBody = RequestBody.create(mediaType, data.toString());
    	
    	Request request = new Request.Builder()
    			.url(url)
    			.addHeader("authorization", apiToken)
    			.addHeader("content-type", "application/json")
                .post(requestBody)
                .build();
    	
    	OkHttpClient client = new OkHttpClient();
    	
    	Response response = client.newCall(request).execute();
    	JSONObject responseBody = new JSONObject(response.body().string());
    	String transcriptId = responseBody.getString("id");
    	String pollingEndpoint = "https://api.assemblyai.com/v2/transcript/" + transcriptId;
    	while (true) {
            // Create the request for polling the endpoint
            Request pollingRequest = new Request.Builder()
                    .url(pollingEndpoint)
                    .addHeader("authorization", apiToken)
                    .addHeader("content-type", "application/json")
                    .build();

            // Send the polling request and get the response
            Response pollingResponse = client.newCall(pollingRequest).execute();

            // Parse the polling response body
            JSONObject pollingResponseBody = new JSONObject(pollingResponse.body().string());

            // Get the status of the transcription
            String status = pollingResponseBody.getString("status");

            // If the status of the transcription is 'completed', exit the loop
            if (status.equals("completed")) {
            	return pollingResponseBody;
            }

            // If the status of the transcription is 'error', throw a runtime exception with
            // the error message
            else if (status.equals("error")) {
                String errorMessage = pollingResponseBody.getString("error");
                throw new RuntimeException("Transcription failed: " + errorMessage);
            }

            // If the status of the transcription is not 'completed' or 'error', wait for
            // 3 seconds and poll again
            // else {
            //     try {
            //         Thread.sleep(3000);
            //     } catch (InterruptedException e) {
            //         e.printStackTrace();
            //     }
            // }
        }
    }
}

