package org.m4ver1k.service;

public class SercureServiceImpl implements SecureService{

	@Override
	public String add() {
		return "Data added";
	}

	@Override
	public String get() {
		return "Here is your secret data";
	}

	@Override
	public String delete() {
		return "data deleted";
	}
	
}
