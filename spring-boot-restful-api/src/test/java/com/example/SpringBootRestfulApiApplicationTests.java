package com.example;

import com.alibaba.fastjson.JSON;
import com.example.dao.SysRoleMapper;
import com.example.dao.SysUserMapper;
import com.example.entity.SysRole;
import com.example.entity.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class SpringBootRestfulApiApplicationTests {

	@Resource
	private SysRoleMapper sysRoleMapper;
	@Resource
	private SysUserMapper sysUserMapper;

	@Test
	public void contextLoads() {
		SysRole sysRole = new SysRole();
		sysRole.setName("管理员");
		sysRole.setAvailable(1);
		sysRoleMapper.insert(sysRole);

		List<SysRole> sysRoleList = sysRoleMapper.selectAll();
		System.out.println("sysRoleList = " + sysRoleList.size());
	}

	@Test
	public void testSendMail(){
		Exception e = new Exception("哈哈我错了");
		log.error("错误", e);
	}

	@Test
	public void testGetOne(){
		SysUser sysUser = sysUserMapper.selectByPrimaryKey(1);
		System.out.println(JSON.toJSONString(sysUser));
	}

}
