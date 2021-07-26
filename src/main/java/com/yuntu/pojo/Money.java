package com.yuntu.pojo;

import java.util.Date;

public class Money {
		private int m_id;
		private Date m_Time;
		private String m_text;
		private String m_name;
		private int m_Debit;
		private String m_img;
		private int m_balance;
		private int m_i_id;

		public Money() {
		}

		public Money(Date m_Time, String m_text, String m_name, int m_Debit, String m_img, int m_balance, int m_i_id) {
				this.m_Time = m_Time;
				this.m_text = m_text;
				this.m_name = m_name;
				this.m_Debit = m_Debit;
				this.m_img = m_img;
				this.m_balance = m_balance;
				this.m_i_id = m_i_id;
		}

		public Money(int m_id, Date m_Time, String m_text, String m_name, int m_Debit, String m_img, int m_balance, int m_i_id) {
				this.m_id = m_id;
				this.m_Time = m_Time;
				this.m_text = m_text;
				this.m_name = m_name;
				this.m_Debit = m_Debit;
				this.m_img = m_img;
				this.m_balance = m_balance;
				this.m_i_id = m_i_id;
		}

		public int getM_id() {
				return m_id;
		}

		public void setM_id(int m_id) {
				this.m_id = m_id;
		}

		public Date getM_Time() {
				return m_Time;
		}

		public void setM_Time(Date m_Time) {
				this.m_Time = m_Time;
		}

		public String getM_text() {
				return m_text;
		}

		public void setM_text(String m_text) {
				this.m_text = m_text;
		}

		public String getM_name() {
				return m_name;
		}

		public void setM_name(String m_name) {
				this.m_name = m_name;
		}

		public int getM_Debit() {
				return m_Debit;
		}

		public void setM_Debit(int m_Debit) {
				this.m_Debit = m_Debit;
		}

		public String getM_img() {
				return m_img;
		}

		public void setM_img(String m_img) {
				this.m_img = m_img;
		}

		public int getM_balance() {
				return m_balance;
		}

		public void setM_balance(int m_balance) {
				this.m_balance = m_balance;
		}

		public int getM_i_id() {
				return m_i_id;
		}

		public void setM_i_id(int m_i_id) {
				this.m_i_id = m_i_id;
		}

		@Override
		public String toString() {
				return "Money{" +
								"m_id=" + m_id +
								", m_Time=" + m_Time +
								", m_text='" + m_text + '\'' +
								", m_name='" + m_name + '\'' +
								", m_Debit=" + m_Debit +
								", m_img='" + m_img + '\'' +
								", m_balance=" + m_balance +
								", m_i_id=" + m_i_id +
								'}';
		}
}
