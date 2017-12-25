package com.bdx.util;
/**
 * 如果上传成功，不会有异常，如果上传失败就会抛出一个UploadException
 * @author Administrator
 *
 */
public class UploadException extends Exception 
{
	public static int TOLONG=2;
	public static int NOTALLOW=1;
	public static int SUCCESS=0;
	
	private int errortype=0;//success
public UploadException()
{
	super();
}
public UploadException(String msg)
{
	super(msg);
}
public UploadException(String msg,int errortype)
{
	super(msg);
	this.errortype=errortype;
}
}
