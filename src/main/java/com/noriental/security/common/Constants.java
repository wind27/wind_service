package com.noriental.security.common;

/**
 * Global Constants
 *
 * @author Wang Beichen
 * @date 2014-1-16
 * @version 1.0
 */
public class Constants {
    public static class OP {
        public static final String GET = ".findById";
        public static final String INSERT = ".insert";
        public static final String UPDATE = ".update";
        public static final String DELETE = ".delete";
    }
	
	public static class PagerSize {	
		public static final int DEFAULT = 10;	
		public static final int SUBJECT = 10;		
		public static final int COURSE = 20;
		public static final int EXAM = 10;	
		public static final int QUESTION = 10;	
		public static final int COMMENT = 10;
		public static final int USER = 30;
		public static final int SCHOOL_SYSTEM = 30;
	}
}
