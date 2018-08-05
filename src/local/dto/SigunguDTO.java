package local.dto;

public class SigunguDTO {
	String code;
	String name;
	
	
	public SigunguDTO() {
	}
	
	public SigunguDTO(String code, String name) {
		super();
		this.code = code;
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "SigunguDTO [code=" + code + ", name=" + name + "]";
	}

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
