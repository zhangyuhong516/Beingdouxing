package com.bdx.pojo;
/**
 * 每上传成功一个文件的信息
 * @author Administrator
 *
 */
public class UpdFile
{
	private long size;
	private String oldname;
	private String newname;
	private String mime;
	public UpdFile(){}
	public UpdFile(long size,String oldname,String newname,String mime)
	{
		this.size=size;
		this.oldname=oldname;
		this.newname=newname;
		this.mime=mime;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public String getOldname() {
		return oldname;
	}
	public void setOldname(String oldname) {
		this.oldname = oldname;
	}
	public String getNewname() {
		return newname;
	}
	public void setNewname(String newname) {
		this.newname = newname;
	}
	public String getMime() {
		return mime;
	}
	public void setMime(String mime) {
		this.mime = mime;
	}
	

}
