<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://use.fontawesome.com/6f636db11c.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
</head>
<body>
<br>
<div class="container">
	  <div class="card border-success">
            <div class="card-header bg-success text-white">
                <strong><i class="fa fa-plus"></i> ข้อมูลผู้ลงทะเบียน</strong>
            </div>
            <div class="card-body">
                <form action="SaveServlet" method="POST" >
                <div class="row">
                	<div class=" col-md-6">
                            <label for="name" class="col-form-label">ชื่อ</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="ชื่อ"required>
                    </div>
                    <div class="row">
                    	<div class="col-md-6">
                            <label for="lastName" class="col-form-label">นามสกุล</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="นามสกุล"  required>
                    	</div>
                	</div>
                	<div class="row">
                		<div class="col-md-12">
                			 <label for="note" class="col-form-label">ที่อยู่</label>
                        <textarea name="address" id="address" rows="5" class="form-control" placeholder="ที่อยู่"></textarea>
                		</div>
                	</div>
                    <div class="row">
                        <div class=" col-md-6">
                            <label for="province" class="col-form-label">จังหวัด</label>
                            <input type="text" class="form-control" id="provine" name="provine" placeholder="จังหวัด" required>
                        </div>
                        <div class=" col-md-6">
                            <label for="post" class="col-form-label">รหัสไปรษณีย์</label>
                            <input type="text" class="form-control" id="post" name="post" placeholder="รหัสไปรษณีย์" required>
                        </div>
                     
                    </div>
                    <div class="row">
                        <div class=" col-md-6">
                            <label for="tel" class="col-form-label">เบอร์โทรศัพท์</label>
                            <input type="text" class="form-control" id="tel" name="tel" placeholder="เบอร์" required>
                        </div>
                        <div class=" col-md-6">
                            <label for="email" class="col-form-label">อีเมล</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                        </div>
                     
                    </div>
                    
                    
                </div><br>
			<table style="width:50%" border="1" >

						  <thead style="font-weight: bold;text-align: center">
						   <tr>
						   		<td>เลือก</td>
							    <td>รหัสคอร์ส</td>
							    <td>ชื่อคอร์ส</td>
							    <td>ระยะเวลา (วัน)</td>
							    <td>ราคา</td>
						   </tr>
						</thead>
  
			  <c:set var="i" value="${0}" ></c:set>
			  
			  
			  <c:forEach items="${courses}"  var="p">
				   <tr>
						<td style="text-align:center">
						<input type="checkbox" name="pNo" value="${i}">
						</td>
					   <td>${p.code}</td>
					   <td>${p.title}</td>
					   <td>${p.duration}</td>
					   <td>${p.price}</td>
					   
				  </tr>
			  <c:set var="i" value="${i+1 }"></c:set>
			  </c:forEach>
  
  
</table>
                <button type="submit" class="btn btn-success"><i class="fa fa-check-circle"></i> Save</button>
              </form>
            
                   
                </div>
            </div>
        </div>
       </div>
</body>
</html>