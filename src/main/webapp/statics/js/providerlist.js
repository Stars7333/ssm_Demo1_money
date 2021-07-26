var providerObj;



//供应商管理页面上点击删除按钮弹出删除框(providerlist.jsp)
function deleteProvider(obj){
	$.ajax({
		type:"GET",
		url:path+"/sys/item/Del",
		data:{i_id:obj.attr("i_id")},
		dataType:"text",
		success:function(data){
			if(data == "true"){//删除成功：移除删除行
				cancleBtn();
				obj.parents("tr").remove();
			}else if(data == "false"){//删除失败
				changeDLGContent("对不起，删除供应商【"+obj.attr("i_name")+"】失败");
			}
		},
		error:function(data){
			//alert("对不起，删除失败");
			changeDLGContent("对不起，删除失败");
		}
	});
}

function deleteProvider(obj){
	$.ajax({
		type:"GET",
		url:path+"/sys/item/Del",
		data:{i_id:obj.attr("i_id")},
		dataType:"text",
		success:function(data){
			if(data == "true"){//删除成功：移除删除行
				cancleBtn();
				obj.parents("tr").remove();
			}else if(data == "false"){//删除失败
				changeDLGContent("对不起，删除供应商【"+obj.attr("i_name")+"】失败");
			}
		},
		error:function(data){
			//alert("对不起，删除失败");
			changeDLGContent("对不起，删除失败");
		}
	});
}

function openYesOrNoDLG(){
	$('.zhezhao').css('display', 'block');
	$('#removeProv').fadeIn();
}

function cancleBtn(){
	$('.zhezhao').css('display', 'none');
	$('#removeProv').fadeOut();
}
function changeDLGContent(contentStr){
	var p = $(".removeMain").find("p");
	p.html(contentStr);
}
$(function(){



	$(".viewProvider").on("click",function(){
		//将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
		var obj = $(this);
		window.location.href=path+"/sys/item/viewOne/"+ obj.attr("i_id");
	});
	$(".viewMoney").on("click",function(){
		//将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
		var obj = $(this);
		window.location.href=path+"/sys/money/viewOne/"+ obj.attr("m_id");
	});
	
	$(".modifyProvider").on("click",function(){
		var obj = $(this);
		window.location.href=path+"/sys/item/view/"+ obj.attr("i_id");
	});
	$(".modifyMoney").on("click",function(){

		var obj = $(this);
		window.location.href=path+"/sys/money/view/"+ obj.attr("m_id");
	});

	$('#no').click(function () {
		cancleBtn();
	});
	
	$('#yes').click(function () {
		deleteProvider(providerObj);
	});

	$(".deleteProvider").on("click",function(){
		providerObj = $(this);
		changeDLGContent("你确定要删除该项目【"+providerObj.attr("i_name")+"】吗？");
		openYesOrNoDLG();
	});
	$(".deleteMoney").on("click",function(){
		var obj = $(this);
		$.ajax({
			type:"GET",
			url:path+"/sys/money/Del",
			data:{m_id:obj.attr("m_id")},
			dataType:"text",
			// success:function(data){
			// 	if(data == "true"){//删除成功：移除删除行
			// 		cancleBtn();
			// 		obj.parents("tr").remove();
			// 	}else if(data == "false"){//删除失败
			// 		changeDLGContent("对不起，删除供应商【"+obj.attr("i_name")+"】失败");
			// 	}
			// },
			// error:function(data){
			// 	//alert("对不起，删除失败");
			// 	changeDLGContent("对不起，删除失败");
			// }
		});
	});
	
/*	$(".deleteProvider").on("click",function(){
		var obj = $(this);
		if(confirm("你确定要删除供应商【"+obj.attr("proname")+"】吗？")){
			$.ajax({
				type:"GET",
				url:path+"/jsp/provider.do",
				data:{method:"delprovider",proid:obj.attr("proid")},
				dataType:"json",
				success:function(data){
					if(data.delResult == "true"){//删除成功：移除删除行
						alert("删除成功");
						obj.parents("tr").remove();
					}else if(data.delResult == "false"){//删除失败
						alert("对不起，删除供应商【"+obj.attr("proname")+"】失败");
					}else if(data.delResult == "notexist"){
						alert("对不起，供应商【"+obj.attr("proname")+"】不存在");
					}else{
						alert("对不起，该供应商【"+obj.attr("proname")+"】下有【"+data.delResult+"】条订单，不能删除");
					}
				},
				error:function(data){
					alert("对不起，删除失败");
				}
			});
		}
	});*/
});