

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
    .output {
  border: 1px solid black;
  padding: 0.5em 0.5em;
  font-size: 6.9em;
}
.buttonform:hover
{
    background-color: rgb(5, 216, 216);
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
                    
                    <th>Mã Kho</th>
                    <th>Tên Kho</th>
                    <th >Địa Chỉ</th>
                    <th>Giá Thuê</th>
                  </tr>
                </thead>
               
                <tbody>
                    <tr>
                      <td>IN001</td>
                      <td>Kho A</td>
                      <td>01/01/2022</td>
                      <td>10,000</td>
                    </tr>
                    <tr>
                      <td>OUT001</td>
                      <td>Kho B</td>
                      <td>02/01/2022</td>
                      <td>10,000</td>
                    </tr>
                    <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>IN001</td>
                        <td>Kho A</td>
                        <td>01/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                        <td>OUT001</td>
                        <td>Kho B</td>
                        <td>02/01/2022</td>
                        <td>10,000</td>
                      </tr>
                      <tr>
                          <td>IN001</td>
                          <td>Kho A</td>
                          <td>01/01/2022</td>
                          <td>10,000</td>
                        </tr>
                        <tr>
                          <td>OUT001</td>
                          <td>Kho B</td>
                          <td>02/01/2022</td>
                          <td>10,000</td>
                        </tr>
                        <tr>
                          <td>IN001</td>
                          <td>Kho A</td>
                          <td>01/01/2022</td>
                          <td>10,000</td>
                        </tr>
                        <tr>
                          <td>OUT001</td>
                          <td>Kho B</td>
                          <td>02/01/2022</td>
                          <td>10,000</td>
                        </tr>
                        <tr>
                          <td>IN001</td>
                          <td>Kho A</td>
                          <td>01/01/2022</td>
                          <td>10,000</td>
                        </tr>
                        <tr>
                          <td>OUT001</td>
                          <td>Kho B</td>
                          <td>02/01/2022</td>
                          <td>10,000</td>
                        </tr>
                        <tr>
                            <td>IN001</td>
                            <td>Kho A</td>
                            <td>01/01/2022</td>
                            <td>10,000</td>
                          </tr>
                          <tr>
                            <td>OUT001</td>
                            <td>Kho B</td>
                            <td>02/01/2022</td>
                            <td>10,000</td>
                          </tr>
                          <tr>
                              <td>IN001</td>
                              <td>Kho A</td>
                              <td>01/01/2022</td>
                              <td>10,000</td>
                            </tr>
                            <tr>
                              <td>OUT001</td>
                              <td>Kho B</td>
                              <td>02/01/2022</td>
                              <td>10,000</td>
                            </tr>
                            <tr>
                              <td>IN001</td>
                              <td>Kho A</td>
                              <td>01/01/2022</td>
                              <td>10,000</td>
                            </tr>
                            <tr>
                              <td>OUT001</td>
                              <td>Kho B</td>
                              <td>02/01/2022</td>
                              <td>10,000</td>
                            </tr>
                            <tr>
                              <td>IN001</td>
                              <td>Kho A</td>
                              <td>01/01/2022</td>
                              <td>10,000</td>
                            </tr>
                            <tr>
                              <td>OUT001</td>
                              <td>Kho B</td>
                              <td>02/01/2022</td>
                              <td>10,000</td>
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
            <div class="col-md-6">
              <div class="text-right" >
                <button type="button" class="btn btn-success  buttonform">Thêm</button>
              </div>
              </div>
              <div class="col-md-6">
              <div class="text-left" >
                <button type="button" class="btn btn-success  buttonform">Xoá</button>
              </div>
            </div>
            <!-- <div class="col-md-4">
              <div class="text-center">
                <button type="button" class="btn btn-success  buttonform">Đóng</button>
                </div>
            </div> -->
          </div> 
    </div>

<div class="col-lg-6">
    <div class="panel panel-default ">
        <div class="panel-heading formheading">Thông tin kho</div>
        <hr>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-3">
                            <label for="ma_khach_hang">Mã Kho:</label>
                            <hr>
                            <label for="ho_ten">Tên Kho:</label>
                            <hr>
                            <label style= "margin-top:0.7em;"for="cmnd">Địa Chỉ:</label>
                            <hr>
                            <label for="ho_ten">Kì:</label>
                            <hr>
                            <label for="ma_khach_hang">Giá Thuê:</label>
                            <hr>                                                                                                
                        </div> 
                        <!--VÌ ĐÂY LÀ CÁC THÔNG TIN NÊN TẠM THỜI ĐỂ THẺ OUTPUT
                        NẾU CÓ TÍNH NĂNG SỬA OR THÊM THÌ CUNG CẤP THÊM HÀM ĐÂY NHA
                    <div class="col-md-4">                                                         
                                   <input type="text" id="ma-kho" name="ma-kho" placeholder="Nhập mã kho" required>
                                    <input type="text" id="ten-kho" name="ten-kho" placeholder="Nhập tên kho" required>   
                                    <input type="text" id="dia-chi" name="dia-chi" placeholder="Nhập địa chỉ" required>   
                                    <input type="text" id="ki" name="ki" placeholder="Nhập kì" required>   
                                    <input type="text" id="gia-thue" name="gia-thue" placeholder="Nhập giá thuê" required>                                                           
                        </div>
                    -->
                        <div class="col-md-4">                                                         
                                    <p  class="output"><span id="ma-kho-output"></span></p><hr>
                                    <p  class="output"><span id="ten-kho-output"></span></p><hr>
                                    <p style="height:1.7em" class="output"><span id="dia-chi-output"></span></p><hr>
                                    <p  class="output"><span id="ki-output"></span></p><hr>
                                    <p  class="output"><span id="gia-thue-output"></span></p><hr>                                                                       
                        </div>
                        
                        <div class="col-md-5">
                            <div style="text-align: center;">
                                <img src="kho-img.png" alt="Picture" style="width: 70em;height: 60em;">
                        
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

       <div class="panel panel-default">
        <div class="panel-heading formheading">Sức Chứa    </div>
<div class="panel-body">
    <div style="width:217em;height:65em; overflow-y: scroll;">
        <table >
            <thead>
              <tr>
                <th id="product-select">Mã Sản Phẩm
                   
                   
                </th>
                <th>Số lượng Tối Đa</th>
                <th>Số lượng Tối Thiểu</th>
              </tr>
            </thead>
            <tbody class="mouse-pointer">
                <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                   
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
                  <tr id="coca">
                    <td>SP01</td>
                    <td>100</td>
                    <td>10</td>
                  </tr>
              <!-- Các dòng khác -->
            </tbody>
          </table>
          
      </div>
</div>
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


