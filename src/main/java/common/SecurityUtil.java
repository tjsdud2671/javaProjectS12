package common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SecurityUtil {
	public String encryptSHA256(String str){ 
		//문자열을 SHA-256 해시로 암호화하는 메서드를 정의함.
		//이 메서드는 암호화된 결과를 문자열 형태로 반환함
		
    String sha = ""; //암호화된 결과를 저장할 변수 sha를 초기화함
    
    try{
       MessageDigest sh = MessageDigest.getInstance("SHA-256");
       sh.update(str.getBytes());
       byte byteData[] = sh.digest();
       StringBuffer sb = new StringBuffer();
       for(int i = 0 ; i < byteData.length ; i++){
           sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
       }
       sha = sb.toString();
   }catch(NoSuchAlgorithmException e){
       System.out.println("Encrypt Error - NoSuchAlgorithmException");
       sha = null;
   }
   return sha;
 } 
}

//이 코드는 주어진 문자열을 SHA-256 해시 알고리즘을 사용하여 암호화하고, 
//그 결과를 16진수 형태의 문자열로 반환한다. 
//이러한 암호화는 주로 보안이 필요한 사용자 비밀번호와 같은 데이터를 안전하게 저장하고 비교하기 위해 사용될 수 있다.
