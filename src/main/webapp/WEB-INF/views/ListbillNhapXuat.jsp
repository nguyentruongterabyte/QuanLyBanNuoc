 <head>
<style>
    .box {
      width: 3050px;
      height: 2700px;
      background-color: rgb(210, 204, 204);
    }
    table {
  border-collapse: collapse;
  table-layout: fixed;
  width: 100%;
}
th
{
    background-color: rgb(10, 240, 224);
    height: 2.5em;
    text-align: center;
}
thead
{
    
    position: sticky;
  top: 0; /* Giữ nguyên vị trí của phần header */
  
}

th, td {
  border: 1px solid rgb(2, 125, 105);
  padding: 5px;
  font-size: 5em;
}

tr:hover
{
background-color: rgba(9, 187, 169, 0.555);
}
/* Đặt kích thước cho ô chứa checkbox */
td input[type="checkbox"] {
  width: 10em; /* Đặt kích thước */
}

.mouse-pointer::before {
  content: "";
  display: inline-block;
  width: 10px;
  height: 10px;
  margin-right: 5px;
  border-top: 1px solid #333;
  border-right: 1px solid #333;
  transform: rotate(45deg);
}

.mouse-pointer {
  cursor: pointer;
 
}
    .buttonform {
      padding: 30px 80px;
      font-size: 60px;
      font-family: 'Times New Roman', Times, serif;
      font-weight: bold;
      border: 4px solid #f80202;
      border-radius: 20px;
      /* độ cong góc của button */
      box-shadow: 5px 5px 5px rgba(199, 5, 5, 0.56);
      /* phủ bóng mờ */
    }

    .formheading {
      font-family: 'Times New Roman', Times, serif;
      /* chọn kiểu phông chữ */
      font-size: 90px;
      /* đặt kích thước chữ */
      font-weight: bold;
      /* tạo đậm chữ */
      color: #333;
      /* tạo màu chữ */
      text-align: left;
      /* canh lề cho văn bản */
      padding: 40px 0px 40px 40px;

    }

    .form-inline .form-group {
      margin-right: 10px;
    }

    .form-inline .form-group label {
      margin-right: 10px;
      font-weight: bold;
    }

    label {
      text-align: left;
      font-size: 70px;
    }

    input,
    select {
      width: 16em;
      height: 110px;
      font-size: 60px;
    }

    .forminput {
      width: 2500px;
      height: 110px;
      font-size: 60px;
    }
    
  </style>

</head>

<body>
  <form action="">
    <div class="row">

      <div class="col-lg-6">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title" style="text-align: center;">
              <div class="form-group">

              </div>
              <input type="text" style="width:1500px; height:130px; font-size: 50px;margin-right: 20px;"
                placeholder="Tìm kiếm...">
              <button type="button" class="btn btn-success  buttonform">Search</button>
              
          </div>
          </h3>
        </div>
        <hr>
        <div class="panel-body" style="width:220em;height:170em; overflow-y: scroll;">
          <div class="row">
            <div class="col-md-12">
              <table class="mouse-pointer" style="border-collapse: collapse;">
                <thead>
                  <tr>
                    
                    <th>Mã Đơn</th>
                    <th>Kho Hàng</th>
                    <th >Ngày Lập</th>
                    <th>Nhập</th>
                  </tr>
                </thead>
               
                <tbody>
                    <tr>
                      <td>IN001</td>
                      <td>Kho A</td>
                      <td>01/01/2022</td>
                      <td>
                        <div class="checkbox-wrapper">
                          <input type="checkbox">
                          
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>OUT001</td>
                      <td>Kho B</td>
                      <td>02/01/2022</td>
                      <td>
                        <div class="checkbox-wrapper">
                          <input type="checkbox">
                          
                        </div>
                      </td>
                    </tr>
                    <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>
                          <div class="checkbox-wrapper">
                            <input type="checkbox">
                            
                          </div>
                        </td>
                      </tr>
                      <tr>
                          <td>IN001</td>
                          <td>Kho A</td>
                          <td>01/01/2022</td>
                          <td>
                            <div class="checkbox-wrapper">
                              <input type="checkbox">
                              
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>OUT001</td>
                          <td>Kho B</td>
                          <td>02/01/2022</td>
                          <td>
                            <div class="checkbox-wrapper">
                              <input type="checkbox">
                              
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>IN001</td>
                          <td>Kho A</td>
                          <td>01/01/2022</td>
                          <td>
                            <div class="checkbox-wrapper">
                              <input type="checkbox">
                              
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>OUT001</td>
                          <td>Kho B</td>
                          <td>02/01/2022</td>
                          <td>
                            <div class="checkbox-wrapper">
                              <input type="checkbox">
                              
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>IN001</td>
                          <td>Kho A</td>
                          <td>01/01/2022</td>
                          <td>
                            <div class="checkbox-wrapper">
                              <input type="checkbox">
                              
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>OUT001</td>
                          <td>Kho B</td>
                          <td>02/01/2022</td>
                          <td>
                            <div class="checkbox-wrapper">
                              <input type="checkbox">
                              
                            </div>
                          </td>
                        </tr>
                        <tr>
                            <td>IN001</td>
                            <td>Kho A</td>
                            <td>01/01/2022</td>
                            <td>
                              <div class="checkbox-wrapper">
                                <input type="checkbox">
                                
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>OUT001</td>
                            <td>Kho B</td>
                            <td>02/01/2022</td>
                            <td>
                              <div class="checkbox-wrapper">
                                <input type="checkbox">
                                
                              </div>
                            </td>
                          </tr>
                          <tr>
                              <td>IN001</td>
                              <td>Kho A</td>
                              <td>01/01/2022</td>
                              <td>
                                <div class="checkbox-wrapper">
                                  <input type="checkbox">
                                  
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>OUT001</td>
                              <td>Kho B</td>
                              <td>02/01/2022</td>
                              <td>
                                <div class="checkbox-wrapper">
                                  <input type="checkbox">
                                  
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>IN001</td>
                              <td>Kho A</td>
                              <td>01/01/2022</td>
                              <td>
                                <div class="checkbox-wrapper">
                                  <input type="checkbox">
                                  
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>OUT001</td>
                              <td>Kho B</td>
                              <td>02/01/2022</td>
                              <td>
                                <div class="checkbox-wrapper">
                                  <input type="checkbox">
                                  
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>IN001</td>
                              <td>Kho A</td>
                              <td>01/01/2022</td>
                              <td>
                                <div class="checkbox-wrapper">
                                  <input type="checkbox">
                                  
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>OUT001</td>
                              <td>Kho B</td>
                              <td>02/01/2022</td>
                              <td>
                                <div class="checkbox-wrapper">
                                  <input type="checkbox">
                                  
                                </div>
                              </td>
                            </tr>
                    <!-- Các dòng khác -->
                  </tbody>


              </table>
              <hr>
              
            </div>

          </div>
        </div>



        <div class="row">
            <hr><hr>
            <div class="col-md-12">
              <div class="text-right" >
                <button type="button" class="btn btn-success  buttonform">Xoá</button>
              </div>
            </div>
           
          </div> 
    </div>

<div class="col-lg-6">
    <div class="panel panel-default ">
        <div class="panel-heading formheading">Thông tin nhân viên</div>
        <hr>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-4">
                            <label for="ma_khach_hang">Mã Nhân Viên:</label>
                            <hr>
                            <label for="ho_ten">Người Lập:</label>
                            <hr>
                            <label for="cmnd">Ngày Lập:</label>
                            <hr>
                            <label for="nguoi_chiu_trach_nhiem">Người Chịu Trách Nhiệm:</label>
                            <hr>
                            <label for="ma_khach_hang">Phí Vận Chuyển:</label>
                            <hr>
                            <label for="ho_ten">Kì:</label>
                            <hr>
                            <label for="cmnd">Loại:</label>
                            <hr>
                          
                        </div>
                        <div class="col-md-4">
                            <input type="text" id="ma_nhan_vien" name="ma_nhan_vien"><br>
                            <hr>
                            <select id="nv-lap-hoa-don" name="nv-lap-hoa-don">
                                <option value="nv1">Nhân viên 1</option>
                                <option value="nv2">Nhân viên 2</option>
                                <option value="nv3">Nhân viên 3</option>
                            </select><br>
                            <hr>
                           
                            <input type="date" id="ngay_lap" name="ngay_lap"><br>
                            <hr>
                            
                            
        
                            
        
                            <select id="nv-chiu_trach_nhiem" name="nv-chiu_trach_nhiem">
                                <option value="nv1">Nhân viên 1</option>
                                <option value="nv2">Nhân viên 2</option>
                                <option value="nv3">Nhân viên 3</option>
                            </select><br>
                            <hr>
        
        
                            <input type="number" id="phivanchuyen" name="phivanchuyen" placeholder="VND">
                            <hr>
        
                            <select id="Kho" name="Kho">
                                <option value="nv1">Kho 1</option>
                                <option value="nv2">Kho 2</option>
                                <option value="nv3">Kho 3</option>
                            </select>
                            <hr>
        
        
                            <input type="number" id="ki" name="ki"> <hr>
                            
                            <select id="Kho" name="Kho">
                                <option value="nv1">Xuất Hàng</option>
                                <option value="nv2">Nhập Hàng</option>
                                
                            </select>
                            <hr>
        
                        </div>
                        
                        <div class="col-md-4">
                            <div style="text-align: center;">
                                <img src="listbillnhapxuat-img.jpg" alt="Picture" style="width: 60em;height: 90em;">
                        
                            </div>
                           </div>
        
                      </div>
                    </div>

                </div>
                <!-- <section>
                    <div class="row">

                        <div class="col-md-12">


                </section> -->


            </div>


        </div>

        <hr>

        <div style="width:217em;height:60em; overflow-y: scroll;">
            <table >
                <thead>
                  <tr>
                    <th id="product-select">Sản phẩm
                       
                        <select style="width: 1.3em;height: 1em;" size = "1" id="product-select" name="product-select">
                            <option   value="coca">Coca</option>
                            <option value="7up">7up</option>
                            <option value="tangluc">Nước tăng lực</option>
                            <option   value="cafesua">Cafe sữa</option>
                            <option value="khongdo">Không độ</option>
                            <option value="c2">C2</option>
                        </select><br>
                    </th>
                    <th>Số lượng</th>
                   
                  </tr>
                </thead>
                <tbody class="mouse-pointer">
                    <tr id="coca">
                        <td>CoCa</td>
                        <td>10</td>
                       
                      </tr>
                      <tr id="7up">
                        <td>7 Up</td>
                        <td>15</td>
                       
                      </tr>
                      <tr id="tangluc">
                        <td>Tăng Lực</td>
                        <td>20</td>
                      
                      </tr>
                      <tr id="coca">
                        <td>CoCa</td>
                        <td>10</td>
                       
                      </tr>
                      <tr id="7up">
                        <td>7 Up</td>
                        <td>15</td>
                       
                      </tr>
                      <tr id="tangluc">
                        <td>Tăng Lực</td>
                        <td>20</td>
                      
                      </tr>
                      <tr id="coca">
                        <td>CoCa</td>
                        <td>10</td>
                       
                      </tr>
                      <tr id="7up">
                        <td>7 Up</td>
                        <td>15</td>
                       
                      </tr>
                      <tr id="tangluc">
                        <td>Tăng Lực</td>
                        <td>20</td>
                      
                      </tr>
                      <tr id="coca">
                        <td>CoCa</td>
                        <td>10</td>
                       
                      </tr>
                      <tr id="7up">
                        <td>7 Up</td>
                        <td>15</td>
                       
                      </tr>
                      <tr id="tangluc">
                        <td>Tăng Lực</td>
                        <td>20</td>
                      
                      </tr>
                      <tr id="coca">
                        <td>CoCa</td>
                        <td>10</td>
                       
                      </tr>
                      <tr id="7up">
                        <td>7 Up</td>
                        <td>15</td>
                       
                      </tr>
                      <tr id="tangluc">
                        <td>Tăng Lực</td>
                        <td>20</td>
                      
                      </tr>
                  <!-- Các dòng khác -->
                </tbody>
              </table>
              
          </div>
          <br>
         <br>
         <hr>

          <div class="text-right">
            <button type="button" class="btn btn-success  buttonform">Sửa</button>
            </div>
            <br>
        <br>
       </div>       
<hr>
        <div class="text-right">
          <button type="button" class="btn btn-success  buttonform">Đóng</button>
          </div>
      </div>
      </div>
    </div>
    </div>

    </div>
  </form>

</body>
