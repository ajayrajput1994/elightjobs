package com.naukari.helper;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Component
public class FileUploadHelper {

	private final String UPLOAD_DIR= new ClassPathResource("static/img").getFile().getAbsolutePath();
	public FileUploadHelper() throws IOException {
		
	}

	public boolean fileUploader(MultipartFile file) {
		boolean is=false;
			try {
				Files.copy(file.getInputStream(), Paths.get(UPLOAD_DIR+File.separator+file.getOriginalFilename() ), StandardCopyOption.REPLACE_EXISTING);
				System.out.println(UPLOAD_DIR+File.separator+file.getOriginalFilename());
				is=true;
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return is;
		
	}
}
