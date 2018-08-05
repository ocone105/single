package local.controller;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import local.dto.EventDTO;
import local.dto.LocalDTO;
import local.dto.SigunguDTO;

public class localTest {
	public static void main(String[] args) {
		ArrayList<SigunguDTO> sigungulist = new ArrayList<SigunguDTO>();
		try {
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			String eventurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode";
			String key = "I8D75wKPpAZsS%2By%2FnPRx1lBAn758Wn1C4VkbUAmkbJr7YfuIXv77WgHujBFuM%2FCVZZK7IfCiRdWebdYCf6S7%2Fg%3D%3D";
			
			for (int i = 1; i <= 5; i++) {
				// 페이지수
				int pageNo = i;
				//String areaCode = ?;
				// 시작일 처리
				// String areaCode = "areaCode=?";
				// String sigunguCode = "sigunguCode=?";
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
		
		System.out.println(sigungulist.get(1));
		
/*		ArrayList<LocalDTO> locallist = new ArrayList<LocalDTO>();
		try {
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			String eventurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode";
			String key = "I8D75wKPpAZsS%2By%2FnPRx1lBAn758Wn1C4VkbUAmkbJr7YfuIXv77WgHujBFuM%2FCVZZK7IfCiRdWebdYCf6S7%2Fg%3D%3D";
			
			for (int i = 1; i < 2; i++) {
				// 페이지수
				int pageNo = i;
				// 시작일 처리
				// String areaCode = "areaCode=?";
				// String sigunguCode = "sigunguCode=?";
				String param = "&areaCode=1&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest";
				String realUrl = eventurl + "?ServiceKey=" + key + param;
				XmlPullParser pullparser = factory.newPullParser();
				URL url = new URL(realUrl);
				BufferedInputStream bis = new BufferedInputStream(url.openStream());
				pullparser.setInput(bis, "UTF-8");
				int eventType = pullparser.getEventType();
				String tagName = "";
				String text = "";
				LocalDTO local = null;
				while (eventType != XmlPullParser.END_DOCUMENT) {
					if (eventType == XmlPullParser.START_TAG) {
						tagName = pullparser.getName();
						if(tagName.equals("item")){
							local = new LocalDTO();
						}
					} else if (eventType == XmlPullParser.TEXT) {
						if (!pullparser.getText().contains("\n")) {
							if (tagName.equals("code")) {
								text = pullparser.getText();
								local.setCode(text);
							} else if (tagName.equals("name")) {
								text = pullparser.getText();
								local.setName(text);
							}
						}
					} else if (eventType == XmlPullParser.END_TAG) {
						tagName = pullparser.getName();
						if (tagName.equals("item")) {
							locallist.add(local);
						}
					}
					eventType = pullparser.next();
				}
			}
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		
		
		
		
		//ArrayList<EventDTO> eventlist = new ArrayList<EventDTO>();
		/*try {
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			String eventurl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival";
			String key = "I8D75wKPpAZsS%2By%2FnPRx1lBAn758Wn1C4VkbUAmkbJr7YfuIXv77WgHujBFuM%2FCVZZK7IfCiRdWebdYCf6S7%2Fg%3D%3D";
			for (int i = 1; i < 10; i++) {
				// 페이지수
				int pageNo = i;
				// 시작일 처리
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				Calendar today = new GregorianCalendar();
				String eventStartDate = sdf.format(today.getTime());
				// String areaCode = "areaCode=?";
				// String sigunguCode = "sigunguCode=?";
				String param = "&numOfRows=9&MobileOS=ETC&MobileApp=single&arrange=A&listYN=Y&pageNo=" + pageNo
						+ "&eventStartDate=" + eventStartDate;
				String realUrl = eventurl + "?ServiceKey=" + key + param;
				XmlPullParser pullparser = factory.newPullParser();
				URL url = new URL(realUrl);
				BufferedInputStream bis = new BufferedInputStream(url.openStream());
				pullparser.setInput(bis, "UTF-8");
				int eventType = pullparser.getEventType();
				String tagName = "";
				String text = "";
				EventDTO event = null;
				while (eventType != XmlPullParser.END_DOCUMENT) {
					if (eventType == XmlPullParser.START_TAG) {
						tagName = pullparser.getName();
						if(tagName.equals("item")){
							event = new EventDTO();
						}
					} else if (eventType == XmlPullParser.TEXT) {
						if (!pullparser.getText().contains("\n")) {
							if (tagName.equals("addr1")) {
								text = pullparser.getText();
								event.setAddr1(text);
							} else if (tagName.equals("areacode")) {
								text = pullparser.getText();
								event.setAreacode(text);
							} else if (tagName.equals("contentid")) {
								text = pullparser.getText();
								event.setContentid(text);
							} else if (tagName.equals("eventenddate")) {
								text = pullparser.getText();
								event.setEventenddate(text);
							} else if (tagName.equals("eventstartdate")) {
								text = pullparser.getText();
								event.setEventstartdate(text);
							} else if (tagName.equals("firstimage")) {
								text = pullparser.getText();
								event.setFirstimage(text);
							} else if (tagName.equals("mapx")) {
								text = pullparser.getText();
								event.setMapx(text);
							} else if (tagName.equals("mapy")) {
								text = pullparser.getText();
								event.setMapy(text);
							} else if (tagName.equals("readcount")) {
								text = pullparser.getText();
								event.setReadcount(text);
							} else if (tagName.equals("sigungucode")) {
								text = pullparser.getText();
								event.setSigungucode(text);
							} else if (tagName.equals("tel")) {
								text = pullparser.getText();
								event.setTel(text);
							} else if (tagName.equals("title")) {
								text = pullparser.getText();
								event.setTitle(text);
							}
						}
					} else if (eventType == XmlPullParser.END_TAG) {
						tagName = pullparser.getName();
						if (tagName.equals("item")) {
							eventlist.add(event);
						}
					}
					eventType = pullparser.next();
				}
			}
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(eventlist.get(0));
		System.out.println(eventlist.get(1));
		System.out.println(eventlist.get(2));*/
	}
}
