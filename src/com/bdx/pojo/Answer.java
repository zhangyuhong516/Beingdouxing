package com.bdx.pojo;

import java.util.Date;

public class Answer {
private int	id;
private int		questions_id;
private String	contents;
private int		inter;
private Date	dates;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getQuestions_id() {
	return questions_id;
}
public void setQuestions_id(int questions_id) {
	this.questions_id = questions_id;
}
public String getContents() {
	return contents;
}
public void setContents(String contents) {
	this.contents = contents;
}
public int getInter() {
	return inter;
}
public void setInter(int inter) {
	this.inter = inter;
}
public Date getDates() {
	return dates;
}
public void setDates(Date dates) {
	this.dates = dates;
}

}
