package joeun.project.dto;

public class JsUSER_listDto {
   private String user_name;
   private String email;
   private String user_id;
   private String user_pw;
   private String tel;
   private String gender;
   private String birthday;
   private String c_date;
   private Integer auth;
   
   public JsUSER_listDto() {}

   public JsUSER_listDto(String user_name, String email, String user_id, String user_pw,
         String tel, String gender, String birthday, String c_date,
         Integer auth) {
      super();
      this.user_name = user_name;
      this.email = email;
      this.user_id = user_id;
      this.user_pw = user_pw;
      this.tel = tel;
      this.gender = gender;
      this.birthday = birthday;
      this.c_date = c_date;
      this.auth = auth;
   }

   public String getuser_name() {
      return user_name;
   }

   public void setuser_name(String user_name) {
      this.user_name = user_name;
   }

   public String getemail() {
      return email;
   }

   public void setemail(String email) {
      this.email = email;
   }

   public String getuser_id() {
      return user_id;
   }

   public void setuser_id(String user_id) {
      this.user_id = user_id;
   }

   public String getuser_pw() {
      return user_pw;
   }

   public void setuser_pw(String user_pw) {
      this.user_pw = user_pw;
   }

   public String gettel() {
      return tel;
   }

   public void settel(String tel) {
      this.tel = tel;
   }

   public String getgender() {
      return gender;
   }

   public void setgender(String gender) {
      this.gender = gender;
   }

   public String getbirthday() {
      return birthday;
   }

   public void setbirthday(String birthday) {
      this.birthday = birthday;
   }

   public String getc_date() {
      return c_date;
   }

   public void setc_date(String c_date) {
      this.c_date = c_date;
   }

   public Integer getauth() {
      return auth;
   }

   public void setauth(Integer auth) {
      this.auth = auth;
   }

   @Override
   public String toString() {
      return "Email_userLoginDto [user_name=" + user_name + ", email=" + email
            + ", user_id=" + user_id + ", user_pw=" + user_pw + ", tel="
            + tel + ", gender=" + gender + ", birthday="
            + birthday + ", c_date=" + c_date + ", auth=" + auth + "]";
   }
   
   
   
   
   
}
