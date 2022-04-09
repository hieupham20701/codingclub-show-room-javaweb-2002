package com.se.showroomcar2002.entity;

public class Link {
	private String title;
	private String path;
	private String icon;
	private String color;
	public Link(String title, String path, String icon, String color) {
		super();
		this.title = title;
		this.path = path;
		this.icon = icon;
		this.color = color;
	}
	public Link(String title, String path, String icon) {
		super();
		this.title = title;
		this.path = path;
		this.icon = icon;
	}
	public Link(String title, String path) {
		super();
		this.title = title;
		this.path = path;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	
}
