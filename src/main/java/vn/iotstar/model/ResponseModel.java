package vn.iotstar.model;

import java.io.Serializable;
import java.util.List;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import lombok.Data;



@Data
public class ResponseModel implements Serializable{
	@SerializedName("acoustic_model")
	@Expose
	private String acousticModel;
	@SerializedName("audio_duration")
	@Expose
	private Integer audioDuration;
	@SerializedName("audio_end_at")
	@Expose
	private Object audioEndAt;
	@SerializedName("audio_start_from")
	@Expose
	private Object audioStartFrom;
	@SerializedName("audio_url")
	@Expose
	private String audioUrl;
	@SerializedName("auto_chapters")
	@Expose
	private Boolean autoChapters;
	@SerializedName("auto_highlights")
	@Expose
	private Boolean autoHighlights;
	@SerializedName("auto_highlights_result")
	@Expose
	private Object autoHighlightsResult;
	@SerializedName("boost_param")
	@Expose
	private Object boostParam;
	@SerializedName("chapters")
	@Expose
	private Object chapters;
	@SerializedName("confidence")
	@Expose
	private Double confidence;
	@SerializedName("content_safety")
	@Expose
	private Boolean contentSafety;
	@SerializedName("content_safety_labels")
	@Expose
	private ContentSafetyLabels contentSafetyLabels;
	@SerializedName("custom_spelling")
	@Expose
	private Object customSpelling;
	@SerializedName("custom_topics")
	@Expose
	private Boolean customTopics;
	@SerializedName("disfluencies")
	@Expose
	private Boolean disfluencies;
	@SerializedName("dual_channel")
	@Expose
	private Object dualChannel;
	@SerializedName("entities")
	@Expose
	private Object entities;
	@SerializedName("entity_detection")
	@Expose
	private Boolean entityDetection;
	@SerializedName("filter_profanity")
	@Expose
	private Boolean filterProfanity;
	@SerializedName("format_text")
	@Expose
	private Boolean formatText;
	@SerializedName("iab_categories")
	@Expose
	private Boolean iabCategories;
	@SerializedName("iab_categories_result")
	@Expose
	private IabCategoriesResult iabCategoriesResult;
	@SerializedName("id")
	@Expose
	private String id;
	@SerializedName("language_code")
	@Expose
	private String languageCode;
	@SerializedName("language_detection")
	@Expose
	private Boolean languageDetection;
	@SerializedName("language_model")
	@Expose
	private String languageModel;
	@SerializedName("punctuate")
	@Expose
	private Boolean punctuate;
	@SerializedName("redact_pii")
	@Expose
	private Boolean redactPii;
	@SerializedName("redact_pii_audio")
	@Expose
	private Boolean redactPiiAudio;
	@SerializedName("redact_pii_audio_quality")
	@Expose
	private Object redactPiiAudioQuality;
	@SerializedName("redact_pii_policies")
	@Expose
	private Object redactPiiPolicies;
	@SerializedName("redact_pii_sub")
	@Expose
	private Object redactPiiSub;
	@SerializedName("sentiment_analysis")
	@Expose
	private Boolean sentimentAnalysis;
	@SerializedName("sentiment_analysis_results")
	@Expose
	private Object sentimentAnalysisResults;
	@SerializedName("speaker_labels")
	@Expose
	private Boolean speakerLabels;
	@SerializedName("speakers_expected")
	@Expose
	private Object speakersExpected;
	@SerializedName("speed_boost")
	@Expose
	private Boolean speedBoost;
	@SerializedName("status")
	@Expose
	private String status;
	@SerializedName("summarization")
	@Expose
	private Boolean summarization;
	@SerializedName("summary")
	@Expose
	private Object summary;
	@SerializedName("summary_model")
	@Expose
	private Object summaryModel;
	@SerializedName("summary_type")
	@Expose
	private Object summaryType;
	@SerializedName("text")
	@Expose
	private String text;
	@SerializedName("throttled")
	@Expose
	private Object throttled;
	@SerializedName("topics")
	@Expose
	private List<Object> topics;
	@SerializedName("utterances")
	@Expose
	private Object utterances;
	@SerializedName("webhook_auth")
	@Expose
	private Boolean webhookAuth;
	@SerializedName("webhook_auth_header_name")
	@Expose
	private Object webhookAuthHeaderName;
	@SerializedName("webhook_status_code")
	@Expose
	private Object webhookStatusCode;
	@SerializedName("webhook_url")
	@Expose
	private Object webhookUrl;
	@SerializedName("word_boost")
	@Expose
	private List<Object> wordBoost;
	@SerializedName("words")
	@Expose
	private List<Word> words;
	private final static long serialVersionUID = 1859984582312481458L;
}
