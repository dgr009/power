package com.icia.api.util;

import java.io.*;
import java.util.*;

import com.auth0.jwt.*;
import com.auth0.jwt.algorithms.*;
import com.auth0.jwt.exceptions.*;
import com.auth0.jwt.interfaces.*;
import com.icia.api.vo.*;

public class TokenUtils {
	public static String getToken(Users user) {
		String token = "";
		// 현재시간을 얻어 1시간을 더한다음 Date로 형변환
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR, cal.get(Calendar.HOUR_OF_DAY) + 1);
		Date time = new Date(cal.getTimeInMillis());
		Algorithm algorithm;
		try {
			algorithm = Algorithm.HMAC256("power-palette-secret-key");
			token = JWT.create().withIssuer("POWER").withSubject("AccessToken")
					.withExpiresAt(time).withClaim("ROLE", "ROLE_USER").withClaim("userId", user.getUserId())
					.withClaim("userPwd", user.getUserPwd()).sign(algorithm);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return token;
	}
	private static DecodedJWT verify(String token) {
		boolean result = true;
		Algorithm algorithm;
		try {
			algorithm = Algorithm.HMAC256("power-palette-secret-key");
			JWTVerifier verifier = JWT.require(algorithm).withIssuer("POWER").build();
			return verifier.verify(token);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch(JWTVerificationException e) {
			// 런타임 예외. catch하지 않으면 예외가 발생했을 때 return절의 동작을 알 수 없다 
		}
		return null;
	}
	public static boolean isValid(String token) {
		DecodedJWT jwt = verify(token);
		if(jwt==null) return false;
		Date currentTime = new Date();
		Date expiresTime = jwt.getExpiresAt();
		if(currentTime.compareTo(expiresTime)>0)
			return false;
		return true;
	}
	public static String get(String token, String key) {
		DecodedJWT jwt = JWT.decode(token);
		Claim claim = jwt.getClaim("userPwd");
		return claim.asString();
	}
}
