package com.yuntu.pojo;

import java.util.Date;

public class User {
		private int u_id;
		private String u_name;
		private int u_sex;
		private Date u_birthday;
		private int u_degree;
		private int u_professional;
		private String u_specialty;
		private String u_phone1;
		private String u_phone2;
		private String u_email;
		private String u_pwd;
		private int u_status;//状态码

		public User() {
		}

		public User(String u_name, String u_pwd) {
				this.u_name = u_name;
				this.u_pwd = u_pwd;
		}

		public User(String u_name, int u_sex,Date u_birthday, int u_degree,int u_professional, String u_specialty, String u_phone1, String u_phone2, String u_email, String u_pwd, int u_status) {
				this.u_name = u_name;
				this.u_birthday = u_birthday;
				this.u_degree = u_degree;
				this.u_sex = u_sex;
				this.u_professional = u_professional;
				this.u_specialty = u_specialty;
				this.u_phone1 = u_phone1;
				this.u_phone2 = u_phone2;
				this.u_email = u_email;
				this.u_pwd = u_pwd;
				this.u_status = u_status;
		}

		public User(int u_id, String u_name, int u_sex, Date u_birthday, int u_degree, int u_professional, String u_specialty, String u_phone1, String u_phone2, String u_email, String u_pwd, int u_status) {
				this.u_id = u_id;
				this.u_name = u_name;
				this.u_sex = u_sex;
				this.u_birthday = u_birthday;
				this.u_degree = u_degree;
				this.u_professional = u_professional;
				this.u_specialty = u_specialty;
				this.u_phone1 = u_phone1;
				this.u_phone2 = u_phone2;
				this.u_email = u_email;
				this.u_pwd = u_pwd;
				this.u_status = u_status;
		}

		public int getU_id() {
				return u_id;
		}

		public void setU_id(int u_id) {
				this.u_id = u_id;
		}

		public String getU_name() {
				return u_name;
		}

		public void setU_name(String u_name) {
				this.u_name = u_name;
		}

		public Date getU_birthday() {
				return u_birthday;
		}

		public void setU_birthday(Date u_birthday) {
				this.u_birthday = u_birthday;
		}

		public int getU_degree() {
				return u_degree;
		}

		public void setU_degree(int u_degree) {
				this.u_degree = u_degree;
		}

		public int getU_professional() {
				return u_professional;
		}

		public void setU_professional(int u_professional) {
				this.u_professional = u_professional;
		}

		public String getU_specialty() {
				return u_specialty;
		}

		public void setU_specialty(String u_specialty) {
				this.u_specialty = u_specialty;
		}

		public String getU_phone1() {
				return u_phone1;
		}

		public void setU_phone1(String u_phone1) {
				this.u_phone1 = u_phone1;
		}

		public String getU_phone2() {
				return u_phone2;
		}

		public void setU_phone2(String u_phone2) {
				this.u_phone2 = u_phone2;
		}

		public String getU_email() {
				return u_email;
		}

		public void setU_email(String u_email) {
				this.u_email = u_email;
		}

		public String getU_pwd() {
				return u_pwd;
		}

		public void setU_pwd(String u_pwd) {
				this.u_pwd = u_pwd;
		}

		public int getU_status() {
				return u_status;
		}

		public void setU_status(int u_status) {
				this.u_status = u_status;
		}

		public int getU_sex() {
				return u_sex;
		}

		public void setU_sex(int u_sex) {
				this.u_sex = u_sex;
		}

		@Override
		public String toString() {
				return "User{" +
								"u_id=" + u_id +
								", u_name='" + u_name + '\'' +
								", u_sex=" + u_sex +
								", u_birthday=" + u_birthday +
								", u_degree=" + u_degree +
								", u_professional=" + u_professional +
								", u_specialty='" + u_specialty + '\'' +
								", u_phone1='" + u_phone1 + '\'' +
								", u_phone2='" + u_phone2 + '\'' +
								", u_email='" + u_email + '\'' +
								", u_pwd='" + u_pwd + '\'' +
								", u_status=" + u_status +
								'}';
		}
}
