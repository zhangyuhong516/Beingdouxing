package com.bdx.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.Part;

import com.bdx.pojo.UpdFile;

/**
 * 用于文件上传的工具类
 * @author Administrator
 *
 */
public class UploadUtils 
{
	/**
	 * 上传文件
	 * @param parts
	 * @param allowmime  允许的mie  ,image/jpeg,image/pjpeg,image/bmp,image/png
	 * @param allowext   允许的扩展名,  jpg,txt,bmp,png,java
	 * @param maxzie     允许最大文件大小   字节
	 * @param targetname 新文件名及服务器上的路径
	 * @return
	 * @throws UploadException
	 * @throws IOException 
	 */
	
	//上传多个文件
    public static List<UpdFile> upload(Collection<Part> parts,String allowmime,long maxzie,String targetpath)throws UploadException, IOException
    {
    	
    	List<UpdFile> list=new ArrayList<UpdFile>();
    	if(null!=parts&&parts.size()>0)
    	{
    		Iterator<Part> it=parts.iterator();
    		while(it.hasNext())
    		{
    			Part part=it.next();
    			
    			//这里的if是用于判断是普通表单域还是文件上传，普通表单域是没有FileName的，如果是普通表单域就跳过这一次循环。
    			if("".equals(getFileName(part)))
    			{
    				continue;
    			}
    			
    			String contentType=part.getContentType();//得到上传的文件的mime类型
    			long size=part.getSize();
    			
    			if(allowmime(allowmime, contentType)&&size<=maxzie)//判断mime类型和文件大小是否匹配要求
    			{
    			  //上传
    				UpdFile up=new UpdFile();//新建一个文件类，用于存储文件的信息。
    				up.setMime(contentType);
    				up.setSize(size);
    				
    				String oldname=getFileName(part);//得到上传上来之前客户端文件的文件名
    				up.setOldname(oldname);
    				
    				String extname=getExtName(oldname);//得到文件扩展名
    				String randname=randFileName();//生成一个随机的文件名。
    				String newname=randname+extname;//新文件名=随机文件名+文件扩展名。
    				
    				up.setNewname(newname);
    			    part.write(targetpath+File.separator+newname);//写入服务器
    				
    			    list.add(up);
    			}else
    			{
    				
    				throw new UploadException();
    			
    			}//end if   这样可以知道这个大括号对应上面的哪一个
    			
    		}//end while
    		
    	}//end if
    
    		return list;//返回一个list
    }
    
    /**
     * 判读mime类型是否合法
     * @param alltype    image/jpeg,image/pjpeg,image/bmp,image/png
     * @param mimetype   image/mpeg
     * @return  true合法，
     */
    public static boolean allowmime(String alltype,String mimetype)//允许传入的mime类型，返回一个boolean类型的值
    {
    	boolean re=false;
    	if(null!=alltype&&null!=mimetype&&alltype.indexOf(mimetype)!=-1)//判断是否符合上传的要求
    	{
    		re=true;//是的话返回true
    	}
    	return re;
    }
    
    
	private static  SimpleDateFormat sf=new SimpleDateFormat("yyyyMMddHHmmsssss");//新建一个时间对象
	private static  Random random=new Random();//随机类
	public static  String randFileName()//产生一个随机文件名
	{
		return sf.format(new Date())+"_"+random.nextInt(1000);//返回的随机的文件名是：时间+随机数
	}
	
	public static  String getExtName(String fname)//得到文件的扩展名
	{
		String ex="";
		int index=fname.lastIndexOf(".");//这里不太懂，应该是返回最后一个点的位置？主要用来判断有没有点。
		if(index!=-1)//如果找到的话
		{
			//substring方法：返回一个新的字符串，它是原字符串的资格子字符串。该子字符串始于指定索引处的字符，一直到此字符串的末尾。
			ex=fname.substring(index);//这里应该是返回文件名的点(.)之后的字母（应该是包括点的），作为一个新的字符串。也就是返回文件的扩展名。
		}
		return ex;
	}
	
	public static String getFileName(Part part)//得到客户端的上传的文件的文件名
	{
		String fname="";
		String hvalue=part.getHeader("Content-Disposition");//得到这个报头中的信息
		//form-data; name="pic"; filename="hello.txt"（这里是这个报头中的信息）
		Pattern pattern=Pattern.compile("(form-data; name=\"(.*?)\"; filename=\"(.*?)\")");//用正则表达式来获取文件名
		Matcher mach=pattern.matcher(hvalue);//匹配
		if(mach.find())
		{
			fname=mach.group(3);//第三组，括号分组
			
		}
		return fname;
	}

 /*   public static UpdFile upload(Part part,String allowmime,String allowext,long maxzie,String targetname)throws UploadException
    {
    		return null;
    }
    public static UpdFile[] upload(Collection<Part> parts,String allowmime,long maxzie,String targetname)throws UploadException
    {
    		return null;
    }*/
   
}
