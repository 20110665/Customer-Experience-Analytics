package vn.iotstar.model;

import java.io.Serializable;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import lombok.Data;
@Data
public class Word implements Serializable {

	@SerializedName("confidence")
	@Expose
	private Double confidence;
	@SerializedName("end")
	@Expose
	private Integer end;
	@SerializedName("speaker")
	@Expose
	private Object speaker;
	@SerializedName("start")
	@Expose
	private Integer start;
	@SerializedName("text")
	@Expose
	private String text;
	private final static long serialVersionUID = -5389672390275160937L;
}
