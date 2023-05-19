package vn.iotstar.model;

import java.io.Serializable;
import java.util.List;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class ContentSafetyLabels implements Serializable{
	@SerializedName("results")
	@Expose
	private List<Object> results;
	@SerializedName("status")
	@Expose
	private String status;
	@SerializedName("summary")
	@Expose
	private Summary summary;
	private final static long serialVersionUID = -8117670230261000288L;
}
