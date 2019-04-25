package kr.co.sist.vo;

public class MemberVO {
	public String name, img, loc, highschool;
	
	public MemberVO() {
	} // MemberVO

	public MemberVO(String name, String img, String loc, String highschool) {
		this.name = name;
		this.img = img;
		this.loc = loc;
		this.highschool = highschool;
	} // MemberVO

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getHighschool() {
		return highschool;
	}

	public void setHighschool(String highschool) {
		this.highschool = highschool;
	}

} // class
