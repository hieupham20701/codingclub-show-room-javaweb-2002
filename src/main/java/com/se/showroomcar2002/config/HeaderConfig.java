package com.se.showroomcar2002.config;

import java.util.ArrayList;
import java.util.List;

import com.se.showroomcar2002.model.Link;

public class HeaderConfig {
	List<Link> links;

	public HeaderConfig(List<Link> links) {
		super();
		this.links = links;
	}
	
	public HeaderConfig() {
		this.links = new ArrayList<Link>();
		this.links.add(new Link("Các dòng xe", "categories"));
		this.links.add(new Link("Mua trực tuyến", "online-buying"));
		this.links.add(new Link("Tư vấn mua xe", "customer-services"));
		this.links.add(new Link("Dịch vụ", "services"));
		this.links.add(new Link("Thế giới xe", "world-of-cars"));
	}

	public List<Link> getLinks() {
		return links;
	}

	public void setLinks(List<Link> links) {
		this.links = links;
	}
	
	
}
