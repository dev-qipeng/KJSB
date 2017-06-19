function checkLogin(form){
		if(form.username.value==""){
			alert("用户名不能为空");
			form.username.focus();
			return false;
		}
		if(form.password.value==""){
			alert("用户密码不能为空");
			form.password.focus();
			return false;
		} 
//		if((form.username.value=="admin") && (form.password.value=="123")){
//			form.action="admin/admin_index.html";
//			return true;
//		}
//		if((form.username.value=="expert") && (form.password.value=="123")){
//			form.action="expert/expert_index.html";
//			return true;
//		}
//		if((form.username.value=="unit") && (form.password.value=="123")){
//			form.action="unit/unit_index.html";
//			return true;
//		}
		return true;
	}
	
function checkUser(form){
var temp1 = form.username;
if(temp1.value=="")
  { 
       alert("用户名不能为空！");
       temp1.focus();
       return false; 
  }
  return true;
}
//添加项目类别的验证
function checkAddProjectCategory(form){
var temp1 = document.getElementById("temp1");
var temp2 = document.getElementById("temp2");
var temp3 = document.getElementById("temp3");
if(temp1.value=="")
    { 
       alert("项目类别不能为空！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("申报开始时间不能为空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("申报结束不能为空！");
       temp3.focus();
       return false; 
     }else{return true;}
}
//项目审批验证
function checkAudit(form){
var temp1 = document.getElementById("opinion");
var temp2 = document.getElementById("score");
if(temp1.value=="")
    { 
       alert("评审意见不能为空！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
     
       alert("专家评分不能为空！");
       temp2.focus();
       return false; 
     }
     else{return true;}
}
  
function checkProjict(form){
var temp1 = document.getElementById("categoryname");
if(temp1.value=="")
    { 
       alert("项目名不能为空！");
       temp1.focus();
       return false; 
     }
     return true;
}
function checkUintPassword(form){
var temp1 = document.getElementById("temp1");
var temp2 = document.getElementById("temp2");
var temp3 = document.getElementById("temp3");
if(temp1.value=="")
    { 
       alert("原始密码不能为空！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("新密码不能为空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("重复新密码不能为空！");
       temp3.focus();
       return false; 
     }else {
　　　　return true;
　　　}
}
//修改专家信息
function checkExpert(form){
var temp1 = document.getElementById("name");
var temp2 = document.getElementById("unitname");
var temp3 = document.getElementById("nation");
var temp4 = document.getElementById("sex");
var temp5 = document.getElementById("title");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("名称不能为空！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("单位名称不能为空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("国籍不能为空！");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("性别不能为空！");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("职称不能为空！");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("电话不能为空！");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("简介不能为空！");
       temp7.focus();
       return false; 
     }
else{return true;}
}

function checkExpertPassword(form){
var temp1 = document.getElementById("temp1");
var temp2 = document.getElementById("temp2");
var temp3 = document.getElementById("temp3");
if(temp1.value=="")
    { 
       alert("原始密码不能为空！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("新密码不能为空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("重复新密码不能为空！");
       temp3.focus();
       return false; 
     }else {
　　　　return true;
　　　}
}
//修改单位信息
function checkUnit(form)
{
var temp1 = document.getElementById("unitname");
var temp2 = document.getElementById("address");
var temp3 = document.getElementById("corporation");
var temp4 = document.getElementById("investment");
var temp5 = document.getElementById("type");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("email");
var temp8 = document.getElementById("fax");
var temp9 = document.getElementById("zipcode");
var temp10 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("请输入单位名称！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("地址不能空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("法人不能为空！");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("注册资金不能为空！");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("单位性质不能为空！");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("单位电话不能为空！");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("邮箱不能为空！");
       temp7.focus();
       return false; 
     }
else if(temp8.value=="")
    { 
       alert("传真不能为空！");
       temp8.focus();
       return false; 
     }
else if(temp9.value=="")
    { 
       alert("邮编不能为空！");
       temp9.focus();
       return false; 
     }
else if(temp10.value=="")
    { 
       alert("简介不能为空！");
       temp10.focus();
       return false; 
     }
     return true;
}

function checkUnitInfromation(form){
var temp1 = document.getElementById("unitname");
var temp2 = document.getElementById("address");
var temp3 = document.getElementById("corporation");
var temp4 = document.getElementById("investment");
var temp5 = document.getElementById("type");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("email");
var temp8 = document.getElementById("fax");
var temp9 = document.getElementById("zipcode");
var temp10 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("请输入单位名称！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("地址不能空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("法人不能为空！");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("注册资金不能为空！");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("单位性质不能为空！");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("单位电话不能为空！");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("邮箱不能为空！");
       temp7.focus();
       return false; 
     }
else if(temp8.value=="")
    { 
       alert("传真不能为空！");
       temp8.focus();
       return false; 
     }
else if(temp9.value=="")
    { 
       alert("邮编不能为空！");
       temp9.focus();
       return false; 
     }
else if(temp10.value=="")
    { 
       alert("简介不能为空！");
       temp10.focus();
       return false; 
     }else{
     return true;
     }
} 
//项目申报的验证
function checkProjectDeclare(form){
var temp = document.getElementById("projectname");
var temp1 = document.getElementById("unitname");
var temp2 = document.getElementById("applicant");
var temp3 = document.getElementById("grade");
var temp4 = document.getElementById("education");
var temp5 = document.getElementById("filldate");
var temp6 = document.getElementById("status");
var temp7 = document.getElementById("future");
var temp8 = document.getElementById("analysis");
var temp9 = document.getElementById("way");
var temp10 = document.getElementById("result");
var temp11 = document.getElementById("capital");

    if (temp.value=="")
    { 
       alert("请输入项目名称！");
       temp.focus();
       return false; 
     }else if(temp1.value=="")
    { 
       alert("请输入单位名称！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("申请人不能空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("职称不能为空！");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("学历不能为空！");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("申请时间不能为空！");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("项目现状不能为空！");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("项目前景不能为空！");
       temp7.focus();
       return false; 
     }
else if(temp8.value=="")
    { 
       alert("重难点分析不能为空！");
       temp8.focus();
       return false; 
     }
else if(temp9.value=="")
    { 
       alert("研究方法不能为空！");
       temp9.focus();
       return false; 
     }
else if(temp10.value=="")
    { 
       alert("预计研究成果不能为空！");
       temp10.focus();
       return false; 
     }
else if(temp11.value=="")
    { 
       alert("申请资金不能为空！");
       temp11.focus();
       return false; 
     }else{
     return true;
     }
}
function checkEexinfromation(form){
var temp1 = document.getElementById("name");
var temp2 = document.getElementById("unitname");
var temp3 = document.getElementById("nation");
var temp4 = document.getElementById("sex");
var temp5 = document.getElementById("title");
var temp6 = document.getElementById("tel");
var temp7 = document.getElementById("introduction");
if(temp1.value=="")
    { 
       alert("名称不能为空！");
       temp1.focus();
       return false; 
     }else if(temp2.value=="")
    { 
       alert("单位名称不能为空！");
       temp2.focus();
       return false; 
     }else if(temp3.value=="")
    { 
       alert("国籍不能为空！");
       temp3.focus();
       return false; 
     }else if(temp4.value=="")
    { 
       alert("性别不能为空！");
       temp4.focus();
       return false; 
     }
else if(temp5.value=="")
    { 
       alert("职称不能为空！");
       temp5.focus();
       return false; 
     }
else if(temp6.value=="")
    { 
       alert("电话不能为空！");
       temp6.focus();
       return false; 
     }
else if(temp7.value=="")
    { 
       alert("简介不能为空！");
       temp7.focus();
       return false; 
     }
else{return true;}

}

function AddNew(form){
	form.action="../unit/highquery.html";
	return true;
	}