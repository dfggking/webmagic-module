package com.webmagic.controller;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-09-28
 */
public class TestProcessor {

//	// 抓取网站的相关配置，包括编码、抓取间隔、重试次数等
//	private Site site = Site.me().setRetryTimes(3).setSleepTime(1000);
//
//	// process是定制爬虫逻辑的核心接口，在这里编辑抽取逻辑
//	@Override
//	public void process(Page page) {
//		// 定义如何抽取页面信息，并保存下来
//		Html html = page.getHtml();
//		System.out.println("start");
//		Document document = Jsoup.parse(html.toString());
//		Elements elements_jgzsl =document.getElementsByClass("jgzsl");
//		Elements elements_jgzsl_ul = elements_jgzsl.get(0).getElementsByTag("ul");
//		Elements elements_jgzsl_ul_lis = elements_jgzsl_ul.get(0).getElementsByTag("li");
//		for (Element e : elements_jgzsl_ul_lis) {
//			Element element_a = e.getElementsByTag("a").get(0);
//			System.out.println(element_a.attr("href"));
//			System.out.println(element_a.html());
//		}
//
//		page.addTargetRequest("http://www.cnjidan.com" + elements_jgzsl_ul_lis.get(2).getElementsByTag("a").get(0).attr("href"));
//
//	}
//
//	@Override
//	public Site getSite() {
//		return site;
//	}
//
//	public static void main(String[] args) {
//		Spider.create(new TestProcessor())
//			.addUrl("http://www.cnjidan.com/jiage/632268/")
//			.thread(1)
//			.run();
//	}
}
