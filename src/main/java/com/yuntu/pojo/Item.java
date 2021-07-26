package com.yuntu.pojo;

import java.util.Date;

public class Item {
		private int i_id;
		private String i_name;
		private String i_sort;
		private Date i_year;
		private String i_R_unit;
		private String i_A_unit;
		private int i_p_name;//项目负责人ID
		private Date i_GoTime;
		private Date i_EndTime;
		private int i_cycle;
		private String i_type;
		private String i_text;
		private int i_budget;
		private int i_evolve;
		private int i_balance;
		private int i_flag;

		//新增
		private String u_name;//项目负责人名字
		private int u_degree;//学位
		private int u_professional;//职称
		private String u_phone1;//办公电话
		private String u_phone2;//移动电话

		public String getU_name() {
				return u_name;
		}

		public void setU_name(String u_name) {
				this.u_name = u_name;
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

		public Item() {
		}
		//添加除了余额 其他都有


		public Item(String i_name, String i_sort, Date i_year,String i_R_unit, String i_A_unit, int i_p_name, Date i_GoTime, int i_cycle, String i_type, String i_text, int i_budget, int i_evolve, int i_flag) {
				this.i_name = i_name;
				this.i_sort = i_sort;
				this.i_year = i_year;
				this.i_R_unit = i_R_unit;
				this.i_A_unit = i_A_unit;
				this.i_p_name = i_p_name;
				this.i_GoTime = i_GoTime;
				this.i_cycle = i_cycle;
				this.i_type = i_type;
				this.i_text = i_text;
				this.i_budget = i_budget;
				this.i_evolve = i_evolve;
				this.i_flag = i_flag;
		}
	//修改项目 -- 无创建i_GoTime
		public Item(int i_id, String i_name, String i_sort, Date i_year, String i_R_unit, String i_A_unit, int i_p_name, Date i_EndTime, int i_cycle, String i_type, String i_text, int i_budget, int i_evolve, int i_balance, int i_flag) {
				this.i_id = i_id;
				this.i_name = i_name;
				this.i_sort = i_sort;
				this.i_year = i_year;
				this.i_R_unit = i_R_unit;
				this.i_A_unit = i_A_unit;
				this.i_p_name = i_p_name;
				this.i_EndTime = i_EndTime;
				this.i_cycle = i_cycle;
				this.i_type = i_type;
				this.i_text = i_text;
				this.i_budget = i_budget;
				this.i_evolve = i_evolve;
				this.i_balance = i_balance;
				this.i_flag = i_flag;
		}

		public Item(int i_id, String i_name, String i_sort, String i_R_unit, String i_A_unit, int i_p_name, Date i_GoTime, Date i_EndTime, int i_cycle, String i_type, String i_text, int i_budget, int i_evolve, int i_balance) {
				this.i_id = i_id;
				this.i_name = i_name;
				this.i_sort = i_sort;
				this.i_R_unit = i_R_unit;
				this.i_A_unit = i_A_unit;
				this.i_p_name = i_p_name;
				this.i_GoTime = i_GoTime;
				this.i_EndTime = i_EndTime;
				this.i_cycle = i_cycle;
				this.i_type = i_type;
				this.i_text = i_text;
				this.i_budget = i_budget;
				this.i_evolve = i_evolve;
				this.i_balance = i_balance;
		}

		public int getI_id() {
				return i_id;
		}

		public void setI_id(int i_id) {
				this.i_id = i_id;
		}

		public String getI_name() {
				return i_name;
		}

		public void setI_name(String i_name) {
				this.i_name = i_name;
		}

		public String getI_sort() {
				return i_sort;
		}

		public void setI_sort(String i_sort) {
				this.i_sort = i_sort;
		}

		public String getI_R_unit() {
				return i_R_unit;
		}

		public void setI_R_unit(String i_R_unit) {
				this.i_R_unit = i_R_unit;
		}

		public String getI_A_unit() {
				return i_A_unit;
		}

		public void setI_A_unit(String i_A_unit) {
				this.i_A_unit = i_A_unit;
		}

		public int getI_p_name() {
				return i_p_name;
		}

		public void setI_p_name(int i_p_name) {
				this.i_p_name = i_p_name;
		}

		public Date getI_GoTime() {
				return i_GoTime;
		}

		public void setI_GoTime(Date i_GoTime) {
				this.i_GoTime = i_GoTime;
		}

		public Date getI_EndTime() {
				return i_EndTime;
		}

		public void setI_EndTime(Date i_EndTime) {
				this.i_EndTime = i_EndTime;
		}

		public int getI_cycle() {
				return i_cycle;
		}

		public void setI_cycle(int i_cycle) {
				this.i_cycle = i_cycle;
		}

		public String getI_type() {
				return i_type;
		}

		public void setI_type(String i_type) {
				this.i_type = i_type;
		}

		public String getI_text() {
				return i_text;
		}

		public void setI_text(String i_text) {
				this.i_text = i_text;
		}

		public int getI_budget() {
				return i_budget;
		}

		public void setI_budget(int i_budget) {
				this.i_budget = i_budget;
		}

		public int getI_evolve() {
				return i_evolve;
		}

		public void setI_evolve(int i_evolve) {
				this.i_evolve = i_evolve;
		}

		public int getI_balance() {
				return i_balance;
		}

		public void setI_balance(int i_balance) {
				this.i_balance = i_balance;
		}

		public int getI_flag() {
				return i_flag;
		}

		public void setI_flag(int i_flag) {
				this.i_flag = i_flag;
		}

		public Date getI_year() {
				return i_year;
		}

		public void setI_year(Date i_year) {
				this.i_year = i_year;
		}

		@Override
		public String toString() {
				return "Item{" +
								"i_id=" + i_id +
								", i_name='" + i_name + '\'' +
								", i_sort='" + i_sort + '\'' +
								", i_year='" + i_year + '\'' +
								", i_R_unit='" + i_R_unit + '\'' +
								", i_A_unit='" + i_A_unit + '\'' +
								", i_p_name=" + i_p_name +
								", i_GoTime=" + i_GoTime +
								", i_EndTime=" + i_EndTime +
								", i_cycle=" + i_cycle +
								", i_type='" + i_type + '\'' +
								", i_text='" + i_text + '\'' +
								", i_budget=" + i_budget +
								", i_evolve=" + i_evolve +
								", i_balance=" + i_balance +
								", i_flag=" + i_flag +
								", u_name='" + u_name + '\'' +
								", u_degree=" + u_degree +
								", u_professional=" + u_professional +
								", u_phone1='" + u_phone1 + '\'' +
								", u_phone2='" + u_phone2 + '\'' +
								'}';
		}
}
