package com.moopi.mvc.service.flash;

import java.util.Map;

import com.moopi.mvc.common.Search;
import com.moopi.mvc.service.domain.Flash;

public interface FlashService {

	public void addFlash(Flash flash) throws Exception;
	
	public Flash getFlash(int flashNo) throws Exception;
	
	public Map<String , Object> getFlashList(Search search) throws Exception;
	
	public void updateFlash(Flash flash) throws Exception;
	
}
