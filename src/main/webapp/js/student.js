	//定义总页面  
	var totalRecord;
	//定义当前页
	var currentPage;
	//发送AJAX发送请求，获取数据
	/*$(function() {*/
		//页面加载，显示第一页数据
		to_page(1)
		$.ajax({
			url : "${APP}/stus",
			data : "pn=1",
			type : "GET",
			success : function(result) {
				//console.log(result);
				//1     解析显示员工数据
				//console.log(result.extend.pageInfo.list);
				build_stus_table(result);
				//2    解析并显示分页数据
				build_page_nav(result);
				//3、解析显示导航条
				build_page_info(result);
			}
		})
	/*})*/
	//一一    解析显示学生数据 
	function build_stus_table(result) {
		//构建之前先清空数据
		$("#stus_table tbody").empty();
		var stus = result.extend.pageInfo.list;
		$.each(stus,function(index, item) {
			//alert(item.stuName);
			var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
			var stuIdTd = $("<td></td>").append(item.stuId);
			var stuNoTd = $("<td></td>").append(item.stuNo);
			var stuNameTd = $("<td></td>").append(item.stuName);
			var stuAgeTd = $("<td></td>").append(item.stuAge);
			var stuGenderTd = $("<td></td>").append(item.stuGender);
			var stuEthnicTd = $("<td></td>").append(item.stuEthnic);
			var stuDeptTd = $("<td></td>").append(item.department.deptName);
			var stuProTd = $("<td></td>").append(item.profession.proName);
			var stuProvinceTd = $("<td></td>").append(item.stuProvince);
			var stuCityTd = $("<td></td>").append(item.stuCity);
			var stuDetailedTd = $("<td></td>").append(item.stuDetailed);
			var editBtn = $("<button></button>")
							.addClass("btn btn-primary btn-sm edit_btn")
							.append($("<span></span>")
							.addClass("glyphicon glyphicon-pencil"))
							.append("编辑");
			//为编辑按钮添加一个自定义的属性，来表示当前学生no
			editBtn.attr("edit-id", item.stuId);
			var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
			//为删除按钮添加自定义的属性来表示当前删除的学生no
			delBtn.attr("del-id", item.stuId);
			var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
			//append方法执行完成以后后，还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
						.append(stuIdTd)
						.append(stuNoTd)
						.append(stuNameTd)
						.append(stuAgeTd)
						.append(stuGenderTd)
						.append(stuEthnicTd)
						.append(stuDeptTd).append(stuProTd)
						.append(stuProvinceTd)
						.append(stuCityTd)
						.append(stuDetailedTd)
						.append(btnTd).appendTo("#stus_table tbody");
		})
	}
	//2    解析并显示分页数据
	function build_page_info(result) {
		//先清空数据
		$("#page_info_area").empty();
		$("#page_info_area").append("当前第" + result.extend.pageInfo.pageNum 
								+ "页    总共"+ result.extend.pageInfo.pages 
								+ "页    总共"+ result.extend.pageInfo.total + "条记录");
		totalRecord = result.extend.pageInfo.total;
		currentPage = result.extend.pageInfo.pageNum;
	}
	//3、解析显示导航条,点击分页条要能去下一页
	function build_page_nav(result) {
		//先清空导航数据
		$("#page_nav_area").empty();
		var ul = $("<ul></ul>").addClass("pagination")
		var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
		var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
		//在第一页，前一页不显示
		if (result.extend.pageInfo.hasPreviousPage == false) {
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		} else {
			//为元素点击翻页事件
			//点击首页去首页
			firstPageLi.click(function() {
				to_page(1);
			})
			prePageLi.click(function() {
				to_page(result.extend.pageInfo.pageNum - 1);
			})
		}

		var nextPageLi = $("<li></li>").append(
				$("<a></a>").append("&raquo;"));
		var lastPageLi = $("<li></li>").append(
				$("<a></a>").append("尾页").attr("href", "#"));
		//如果没有下一页，则不能点击
		if (result.extend.pageInfo.hasNextPage == false) {
			nextPageLi.addClass("disabled");
			lastPageLi.addClass("disabled");
		} else {
			//为元素点击翻页事件
			//点击尾页去尾页   配置分页插件属性，让其点击不会去超过总页数和负数页码
			lastPageLi.click(function() {
				to_page(result.extend.pageInfo.pages);
			})
			nextPageLi.click(function() {
				to_page(result.extend.pageInfo.pageNum + 1);
			})
		}
		//添加前一页和首页提示
		ul.append(firstPageLi).append(prePageLi);
		//页码号1 2 3遍历给ul添加页码提示
		$.each(result.extend.pageInfo.navigatepageNums, function(index,
				item) {
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if (result.extend.pageInfo.pageNum == item) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				to_page(item);
			})
			ul.append(numLi);
		})
		//添加下一页和末页的提示
		ul.append(nextPageLi).append(lastPageLi);
		//把ul加入带nav中
		var navEle = $("<nav></nav>").append(ul);
		navEle.appendTo("#page_nav_area");
	}
	//二二      点击哪一页，去哪一页
	function to_page(pn) {
		$.ajax({
			url : "${APP}/stus",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				//console.log(result);
				//1     解析显示员工数据
				//console.log(result.extend.pageInfo.list);
				build_stus_table(result);
				//2    解析并显示分页数据
				build_page_nav(result);
				//3、解析显示导航条
				build_page_info(result);
			}
		})
	}
	function reset_form(ele) {
		$(ele)[0].reset();
		//清空表单样式
		$(ele).find("*").removeClass("has-error has-success");
		$(ele).find(".help-block").text("");
	}
	//三三   点击新增按钮，显示新增模态框
	$("#stu_add_modal_btn").click(function() {
		//清楚表单数据
		reset_form("#stuAddModal form");	
		$("#dept_add_select").empty();
		$("#pro_add_select").empty();
		//弹出模态框
		$("#stuAddModal").modal({
			backdrop : "static"
		})
		$("#dept_add_select").empty();
		$.ajax({				               
			url:"${APP}/depts",
			type:"GET",
			success:function(result){
				/* $("#dept_add_select").empty(); */
				/* $("#dept_add_select").append("<option>"+'--请选择--'+"</option>");  */
				console.log(result.extend.depts);
				//遍历动态插入院系信息
				$("#dept_add_select").append("<option>--请选择--</option>");
				$("#pro_add_select").append("<option>--请选择--</option>");
				var str='';
				result.extend.depts.forEach(function(obj,i){
					str+='<option value="'+obj.deptId+'">'+obj.deptName+'</option>'
				})
				 $("#dept_add_select").append(str);
			}
		})
		$("#dept_add_select").change(function(){
			var id=$("#dept_add_select").val();
			console.log(id);
			$.ajax({				               
				url:"${APP}/getProsById/"+id,
				type:"GET",
				success:function(result){
					$("#pro_add_select").empty();//清空专业下面的专业的选项框里的内容
					console.log(result.extend.pro);
					$("#pro_add_select").append("<option>--请选择--</option>");
					var str='';
					result.extend.pro.forEach(function(obj,i){
						str+='<option value="'+obj.proId+'">'+obj.proName+'</option>'
					})
					 $("#pro_add_select").append(str);
				}
			})
		})		
	})
	//查处所有的院系信息，显示在下拉列表中
	function getDepts(ele) {
		$(ele).empty();
		$.ajax({
			url : "${APP}/depts",
			type : "GET",
			success : function(result) {
				//按照ID找出模态框内容
				$.each(result.extend.depts, function() {
					var optionEle = $("<option ></option>")
					.append(this.deptName).attr("value", this.deptId);
					optionEle.appendTo(ele);
				})
			}
		})
	}
	//查处所有的专业信息，显示在下拉列表中
  	function getPros(ele) {
		//清空之前下拉列表的值
		$(ele).empty();
		$.ajax({
			url : "${APP}/pros",
			type : "GET",
			success : function(result) {
				//console.log(result);
				$.each(result.extend.pros, function() {
					var optionEle = $("<option ></option>").append(
							this.proName).attr("value", this.proId);
					optionEle.appendTo(ele);
				})
			}
		})
	}   
	//校验表单数据
	function validate_add_form() {
		//拿到要检验的数据，正则表达式
		var stuName = $("#stuName_add_input").val();
		var regName = /^[\u2E80-\u9FFF]{2,16}/;
		if (!regName.test(stuName)) {
			//alert("学生姓名不合法");
			show_validate_msg("#stuName_add_input", "error",
					"学生姓名只能2-16为汉字");
			return false;
		} else {
			show_validate_msg("#stuName_add_input", "success", "");
		}
		var stuNo = $("#stuNo_add_input").val();
		var regNo = /^2014\d{6}$/;
		if (!regNo.test(stuNo)) {
			//清空这个元素的之前的验证信息
			show_validate_msg("#stuNo_add_input", "error","学号只能以2014开头，位数10位");
			return false;
		} else {
			show_validate_msg("#stuNo_add_input", "success", "");
		}
		//校验
		return true;
	}
	//校验结果的提示信息
	function show_validate_msg(ele, status, msg) {
		//清楚之前的校验信息
		$(ele).parent().removeClass("has-success has-error");
		$(ele).next("span").text("");
		if ("success" == status) {
			$(ele).parent().addClass("has-success");
			$(ele).next("span").text(msg);
		} else if ("error" == status) {
			$(ele).parent().addClass("has-error");
			$(ele).next("span").text(msg);
		}
	}
	//给学生学号绑定查询时间，学号不能重复
	$("#stuNo_add_input").change(
			function() {
				//发送AJAX请求,校验学号是否已存在
				var stuNo = this.value;
				$.ajax({
					url : "${APP}/checkStuNo",
					data : "stuNo=" + stuNo,
					type : "POST",
					success : function(result) {
						if (result.code == 100) {
							show_validate_msg("#stuNo_add_input","success", "学号无对应学生，可以添加")
							$("#stu_save_btn").attr("ajax-va", "success");
						} else {
							show_validate_msg("#stuNo_add_input", "error","该学号已存在，不能重复添加")
							$("#stu_save_btn").attr("ajax-va", "error");
						}
					}
				})
			})
	//点击保存，传入数据库
	$("#stu_save_btn").click(function() {
		//模态框的表单数据提交给服务器
		//先对要提交给服务器的数据进行校验
		if (!validate_add_form()) {
			return false;
		}
		//判断之前ajax学号校验是否成功，如果成功
		if ($(this).attr("ajax-va") == "error") {
			return false;
		}
		//发送请求保存学生
		//alert($("#stuAddModal form").serialize())
		$.ajax({
				url : "${APP}/saveStu",
				type : "POST",
				data : $("#stuAddModal form").serialize(),
				success : function(result) {
					//alert(result.msg);
					//保存成功
					//关闭模态框
					if (result.code == 100) {
						$("#stuAddModal").modal("hide");
						//来到最后一页
						//发送ajax，显示最后一页数据
						to_page(totalRecord);
					}  else {
						alert("添加学生失败")
					} 
				}

			})
		})
	//四四四  修改学生模态框
	$(document).on("click", ".edit_btn", function() {
  		//查出学生信息
		$("#dept_update_select").empty();
		$("#pro_update_select").empty();
		getStu($(this).attr("edit-id"));
		//把员工传递给模态框的更新按钮
		$("#stu_update_btn").attr("edit-id", $(this).attr("edit-id"));
		//进入模态框先构建下拉列表初始信息
 		$("#pro_update_select").append("<option>--请选择--</option>");
		$("#stuUpdateModal").modal({
			backdrop : "static"
		})
		$.ajax({				               
			url:"${APP}/depts",
			type:"GET",
			success:function(result){
				console.log(result.extend.depts);
 				$("#dept_update_select").append("<option>--请选择--</option>");
				var str='';
				result.extend.depts.forEach(function(obj,i){
					str+='<option value="'+obj.deptId+'">'+obj.deptName+'</option>'
				})
				 $("#dept_update_select").append(str);
			} 			
		})
		//从下拉列表中，点击院系信息直接查出院系所对应的专业
		$("#dept_update_select").change(function(){
			//获取院系选项框里的院系ID值
			var id=$("#dept_update_select").val();
			console.log(id);
			$.ajax({				               
				url:"${APP}/getProsById/"+id,
				type:"GET",
				success:function(result){
					$("#pro_update_select").empty();//清空院系下面的专业的选项框里的内容	                
					console.log(result.extend.pro);
 					$("#pro_update_select").append("<option>--请选择--</option>");
					var str='';
					result.extend.pro.forEach(function(obj,i){
						str+='<option value="'+obj.proId+'">'+obj.proName+'</option>'
					})
					 $("#pro_update_select").append(str);
				}
			})
		})	 
	})
	function getStu(stuId) {
		$.ajax({
			url : "${APP}/getStu/" + stuId,
			type : "GET",
			success : function(result) {
				//console.log(result);
				var stuData = result.extend.stu;
				$("#stuNo_update_input").val(stuData.stuNo);
				$("#stuName_update_input").val(stuData.stuName);
				$("#stuAge_update_input").val(stuData.stuAge);
				$("#stuGender_update_input").val(stuData.stuGender);
				$("#stuEthnic_update_input").val(stuData.stuEthnic);
				$("#stuProvince_update_input").val(stuData.stuProvince);
				$("#stuCity_update_input").val(stuData.stuCity);
				$("#stuDetailed_update_input").val(stuData.stuDetailed);
			}
		})
	}
	// 五五五    点击更新员工信息
	$("#stu_update_btn").click(function() {
		//发送请求  保存员工数据
		var hello=$("#stuUpdateModal form").serialize();
		console.log(hello);
		$.ajax({
			url : "${APP}/saveStu/" + $(this).attr("edit-id"),
			type : "PUT",
			data : $("#stuUpdateModal form").serialize(),
			success : function(result) {
				//alert(result.msg);
				//关闭对话框
				$("#stuUpdateModal").modal("hide");
				//回到本页面
				to_page(currentPage);
			}
		})
	})
	//六六六  删除学生
	$(document).on("click", ".delete_btn", function() {
		//确认删除会话框
		var stuName = $(this).parents("tr").find("td:eq(3)").text();
		var stuId = $(this).attr("del-id");
		if (confirm("确认删除【" + stuName + "】")) {
			//确认发送请求删除
			$.ajax({
				url : "${APP}/deleteStu/" + stuId,
				type : "DELETE",
				success : function(result) {
					//alert(result.msg);
					to_page(currentPage);
				}
			})
		}
	});
	//批量删除 完成全选/或者全不选
	$("#check_all").click(function(){
		$(this).prop("checked");
		$(".check_item").prop("checked",$(this).prop("checked"));
	})
	$(document).on("click",".check_item",function(){
		//当前选中的元素是否是5个
		var flag=$(".check_item:checked").length==$(".check_item").length;
		$("#check_all").prop("checked",flag);
	})
	//点击全部删除就批量删除
	$("#stu_delete_all_btn").click(function () {
		var stuNames="";
		var del_idstr="";
		$.each($(".check_item:checked"),function(){
			stuNames += $(this).parents("tr").find("td:eq(3)").text()+",";
			//组装员工ID字符串
			del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
		})
		//取出empNames多余的,
		stuNames=stuNames.substring(0,stuNames.length-1);
		//去除删除员工ID多余的-
		del_idstr=del_idstr.substring(0,del_idstr.length-1);
		if (confirm("确认删除【"+stuNames+"】吗？")) {
			//发送AJAX请求
			$.ajax({
				url:"${APP}/deleteStu/"+del_idstr,
				type:"DELETE",
				success:function(result){
					alert(result.msg);
					//回到当前页面
					to_page(currentPage);
				}
			})			
		}
	})