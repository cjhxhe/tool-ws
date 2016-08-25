package com.clay.email;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.clay.App;

import freemarker.template.Configuration;
import freemarker.template.Template;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = App.class)
public class EmailManager {

	@Autowired
	private JavaMailSender javaMailSender;

	@Autowired
	private Configuration configuration;

	@Test
	public void testEmailSend() {
		javaMailSender.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage, false, "UTF-8");
				message.setFrom("PasswordManager@cisco.com", "PasswordManager@cisco.com");
				message.setTo("clayyu@cisco.com");
				message.setSubject("Password Notification: Your CEC Password has been changed");
				Template template = configuration.getTemplate("email.ftl", "UTF-8");
				Map<String, String> dataMap = new HashMap<String, String>();
				dataMap.put("name", "Clay");
				String text = FreeMarkerTemplateUtils.processTemplateIntoString(template, dataMap);
				message.setText(text);
			}
		});
	}
}
