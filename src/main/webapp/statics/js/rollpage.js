function page_nav(pageIndex){
		// alert(pageIndex)
		var ConName = window.parent.conName;//user
		var pathName = window.document.location.pathname;//ssj_smbms/user/page
		var projectName = pathName.substring(0,pathName.substr(1).indexOf("/")+1);

		// alert(projectName+"/"+ConName+"/page?pageindex="+pageIndex)
		window.location.replace(projectName+"/sys/"+ConName+"/page?pageindex="+pageIndex)
}

function jump_to(num){
    //alert(num);
	//验证用户的输入
	var regexp=/^[1-9]\d*$/;
	var totalPageCount = document.getElementById("totalPageCount").value;
	//alert(totalPageCount);
	if(!regexp.test(num)){
		alert("请输入大于0的正整数！");
		return false;
	}else if((num-totalPageCount) > 0){
		alert("请输入小于总页数的页码");
		return false;
	}else{
		page_nav(num);
	}
}