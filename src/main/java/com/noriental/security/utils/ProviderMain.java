package com.noriental.security.utils;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProviderMain {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				new String[]{
						"spring/provider.xml",
						"spring/provider-datasource.xml"
						});
		context.start();
		
		System.out.println("Dubbo service server started!");

		synchronized (ProviderMain.class) {
            while (true) {
                try {
                	ProviderMain.class.wait();
                } catch (Throwable e) {
                }
            }
        }
	}
}
