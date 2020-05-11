# HOW TO INSTALL JENKINS 
![jenkins logo on linux](https://user-images.githubusercontent.com/63379120/81092043-a79ce400-8ec5-11ea-9e3e-b2b9b80b3c55.jpg)


:black_medium_square: Jenkins is a free and open source automation server.

:black_medium_square: It helps automate the parts of software development related to building, testing, and deploying,
 facilitating continuous integration and continuous delivery.


### PREREQUISITES:
 
   - **1 VPC**
   - **6 Subnets**
     - 3 Private Subents
     - 3 Public Subnets
   - **Public subnets should have IGW attached to it** 
   - **Private subnets should have NG attached to it**
   - **Configure route tables**
   
  
   
    
  #### - To check if everything is configured properly, create ec2 instance, manually,  on public subnet and ping www.google.com
  


![Screen Shot 2020-05-10 at 11 19 26 PM](https://user-images.githubusercontent.com/63379120/81523845-bd226b80-9314-11ea-9253-881e71f2bd91.png)

  - **If everything is successful, you should have proper response** &#8593;  :+1:

## TO INSTALL JENKINS ON EC2 INSTANCE, FOLLOW THE STEPS BELOW :arrow_down: **OR**
&nbsp;



**Please refer to null_resource.tf for more details**

```HCL
provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }

    inline = [
    ]
```
&nbsp;


 
 **1. Jenkins is a Java application, so the first step is to install Java.**
 
 ```HCL
 "sudo yum install java${var.java_version} -y",
```

**2. The next step is to enable the Jenkins repository.**
 ```HCL
 "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
```

**3. Add the repository to your system.**
 ```HCL
 "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
```

**4. Once the repository is enabled, install the latest stable version of Jenkins.**
  ```HCL
"sudo yum install ${var.jenkins_version} -y",
```

**5. After the installation process is completed, start the Jenkins service.**
  ```HCL
 "sudo systemctl start jenkins",
```

**6. Enable the Jenkins service to start on system boot.**
 ```HCL
"sudo systemctl enable jenkins",
```
**7. This inline command string prints the output for Jenkins Initial Administrator Password.**
 ```HCL
"echo -e $(tput setaf 1 )'Jenkins initialAdminPassword: '$(tput sgr0) $(tput setaf 2)`
sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
```



&nbsp;



# terraform apply -var-file configurations/jenkins.tfvars

![Screen Shot 2020-05-10 at 11 01 27 PM](https://user-images.githubusercontent.com/63379120/81523115-73d11c80-9312-11ea-8a57-771e57e41fd6.png)



&nbsp;
# Copy **http://your_ip_or_domain:8080** from the above output


![Screen Shot 2020-05-10 at 11 11 42 PM](https://user-images.githubusercontent.com/63379120/81523645-0e7e2b00-9314-11ea-96aa-a60d2b280a79.png)






&nbsp;


# **To Set Up Jenkins, please follow the prompts**

![Screen Shot 2020-05-10 at 11 12 20 PM](https://user-images.githubusercontent.com/63379120/81523684-41282380-9314-11ea-9853-c18883e029f3.png)

![Screen Shot 2020-05-10 at 11 13 07 PM](https://user-images.githubusercontent.com/63379120/81523708-51400300-9314-11ea-8c6c-a3cb2ba1f22e.png)

![Screen Shot 2020-05-10 at 11 14 01 PM](https://user-images.githubusercontent.com/63379120/81523731-60bf4c00-9314-11ea-8b60-cd7a7c2b7a22.png)

![Screen Shot 2020-05-10 at 11 14 12 PM](https://user-images.githubusercontent.com/63379120/81523756-6fa5fe80-9314-11ea-8622-7a0883b293e9.png)






&nbsp;

# Jenkins Dashboard

![Screen Shot 2020-05-10 at 11 14 22 PM](https://user-images.githubusercontent.com/63379120/81523775-7c2a5700-9314-11ea-9862-41060e62fae0.png)


&nbsp;




<img width="685" alt="Screen Shot 2020-05-05 at 3 17 16 PM" src="https://user-images.githubusercontent.com/63379120/81111983-8cd96800-8ee3-11ea-9dc5-b69ce26993f7.png">

