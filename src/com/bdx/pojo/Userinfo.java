package com.bdx.pojo;

public class Userinfo {
	private int id;
	private String email;
	private String pwd;
	private String diqv;//地区
	private String province;//地区
	private String city;//地区
	private String area;//地区
	
	private String real_name;//真实姓名
	private String subject_type;//文科/理科
	private String name;//是管理员还是什么，身份
	private int inter;//用户的积分
	private String phone;
	private String qq;
	private String sex;
	
	private String grade_one;//第一次测试成绩
	private String grade_two;//第二次测试成绩
	private String grade_three;//第三次测试成绩
	private String grade_one_type;//第一次测试类型
	private String grade_two_type;//第二次测试类型
	private String grade_three_type;//第三次测试类型
	
	private String year;//考生考试年份
	
	private int user_scores;//考试分数
	private int user_rank;//考试排名
    private String user_pic;//用户头像路径
	
	
	
	
	
	public String getUser_pic() {
		return user_pic;
	}
	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}
	public int getUser_scores() {
		return user_scores;
	}
	public void setUser_scores(int user_scores) {
		this.user_scores = user_scores;
	}
	public int getUser_rank() {
		return user_rank;
	}
	public void setUser_rank(int user_rank) {
		this.user_rank = user_rank;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getDiqv() {
		return diqv;
	}
	public void setDiqv(String diqv) {
		this.diqv = diqv;
	}
	public String getReal_name() {
		return real_name;
	}
	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	public String getSubject_type() {
		return subject_type;
	}
	public void setSubject_type(String subject_type) {
		this.subject_type = subject_type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getInter() {
		return inter;
	}
	public void setInter(int inter) {
		this.inter = inter;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getGrade_one() {
		return grade_one;
	}
	public void setGrade_one(String grade_one) {
		this.grade_one = grade_one;
	}
	public String getGrade_two() {
		return grade_two;
	}
	public void setGrade_two(String grade_two) {
		this.grade_two = grade_two;
	}
	public String getGrade_three() {
		return grade_three;
	}
	public void setGrade_three(String grade_three) {
		this.grade_three = grade_three;
	}
	public String getGrade_one_type() {
		return grade_one_type;
	}
	public void setGrade_one_type(String grade_one_type) {
		this.grade_one_type = grade_one_type;
	}
	public String getGrade_two_type() {
		return grade_two_type;
	}
	public void setGrade_two_type(String grade_two_type) {
		this.grade_two_type = grade_two_type;
	}
	public String getGrade_three_type() {
		return grade_three_type;
	}
	public void setGrade_three_type(String grade_three_type) {
		this.grade_three_type = grade_three_type;
	}
	
	

}
