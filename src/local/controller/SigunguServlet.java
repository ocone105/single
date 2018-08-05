package local.controller;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import local.dto.SigunguDTO;

@WebServlet(name = "local/arealist", urlPatterns = { "/local/arealist.do" })
public class SigunguServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<SigunguDTO> sigungulist = new ArrayList<SigunguDTO>();
		try {
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			String eventurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode";
			String key = "I8D75wKPpAZsS%2By%2FnPRx1lBAn758Wn1C4VkbUAmkbJr7YfuIXv77WgHujBFuM%2FCVZZK7IfCiRdWebdYCf6S7%2Fg%3D%3D";
			
			for (int i = 1; i <= 5; i++) {
				// 페이지수
				int pageNo = i;
				String areaCode = request.getParameter("areaCode");
				//String areaCode = ?;
				String param = "&areaCode=1&MobileOS=ETC&pageNo="+pageNo+"&MobileApp=AppTest";
				String realUrl = eventurl + "?ServiceKey=" + key + param;
				XmlPullParser pullparser = factory.newPullParser();
				URL url = new URL(realUrl);
				BufferedInputStream bis = new BufferedInputStream(url.openStream());
				pullparser.setInput(bis, "UTF-8");
				int eventType = pullparser.getEventType();
				String tagName = "";
				String text = "";
				SigunguDTO sigungu = null;
				while (eventType != XmlPullParser.END_DOCUMENT) {
					if (eventType == XmlPullParser.START_TAG) {
						tagName = pullparser.getName();
						if(tagName.equals("item")){
							sigungu = new SigunguDTO();
						}
					} else if (eventType == XmlPullParser.TEXT) {
						if (!pullparser.getText().contains("\n")) {
							if (tagName.equals("code")) {
								text = pullparser.getText();
								sigungu.setCode(text);
							} else if (tagName.equals("name")) {
								text = pullparser.getText();
								sigungu.setName(text);
							}
						}
					} else if (eventType == XmlPullParser.END_TAG) {
						tagName = pullparser.getName();
						if (tagName.equals("item")) {
							sigungulist.add(sigungu);
						}
					}
					eventType = pullparser.next();
				}
			}
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		request.setAttribute("sigungulist", sigungulist);
	}
}
