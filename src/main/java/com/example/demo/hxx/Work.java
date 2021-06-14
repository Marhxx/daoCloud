package com.example.demo.hxx;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
public class Work {


	@GetMapping("getName")
	public  Map<String, Object> getName(@RequestParam("name") String name){

		UUID uuid = UUID.randomUUID();
		Map<String, Object> put = new HashMap<String, Object>();
		put.put(name, uuid);
		return put;
	}
}
