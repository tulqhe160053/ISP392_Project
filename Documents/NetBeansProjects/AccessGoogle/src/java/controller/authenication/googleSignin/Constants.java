/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.authenication.googleSignin;

/**
 *
 * @author ducth
 */
public class Constants {

    public static String GOOGLE_CLIENT_ID = "134660576705-h64ufofr5gm85m0ekbrkm0gt5824imb4.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "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";
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/AccessGoogle/GoogleSigninServlet";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";
}
