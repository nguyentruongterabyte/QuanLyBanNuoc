<head>
<style>
    .box {
      width: 3050px;
      height: 2700px;
      background-color: rgb(210, 204, 204);
    }

    thead {

      font-size: 80px;
      background-color: rgb(9, 207, 217);

    }

    th,
    td {
      text-align: center;
      border: 1px solid #ddd;

      border-collapse: collapse;
      border-spacing: 0;
    }

    tbody {
      font-size: 70px;
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
      text-align: right;
      font-size: 70px;
    }

    input,
    select {
      width: 1000px;
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

      <div class="col-lg-7">
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
        <div class="panel-body">
          <div class="row">
            <div class="col-md-12">
              <table class="table" style="border-collapse: collapse;">
                <thead>
                  <tr>
                    <th>Mã Nhân Viên</th>
                    <th>Tên Nhân Viên</th>
                    <th>Số điện thoại</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>001</td>
                    <td>Nguyễn Văn A</td>
                    <td>0987654321</td>
                  </tr>
                  <tr>
                    <td>002</td>
                    <td>Trần Thị B</td>
                    <td>0912345678</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn C</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn D</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn E</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn F</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn E</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn G</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn H</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn K</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn L</td>
                    <td>0865432190</td>
                  </tr>
                  <tr>
                    <td>003</td>
                    <td>Lê Văn M</td>
                    <td>0865432190</td>
                  </tr>

                </tbody>


              </table>
              <hr>
              <div class="row">
                <div class="col-md-6">
                  <div class="text-center">
                    <button type="button" class="btn btn-success  buttonform">Thêm</button>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="text-center">
                    <button type="button" class="btn btn-success  buttonform">Xoá</button>
                  </div>
                </div>
               
              </div>
            </div>

          </div>
        </div>
      </div>
      <div class="col-lg-5">
        <div class="panel panel-default " style="max-width: 2500px;">
          <div class="panel-heading formheading">Thông tin nhân viên</div>
          <hr>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                <div class="row">
                  <div class="col-md-4">
                    <div style="text-align: left; display: inline-block;">
                      <img src="employee-img.png" alt="Picture" style="width: 700px;height: 700px;">

                    </div>
                  </div>
                  <div class="col-md-3">
                    <label for="ma_khach_hang">Mã Nhân Viên:</label><br>
                    <hr>
                    <label for="ho_ten">Họ tên:</label><br>
                    <hr>
                    <label for="cmnd">CMND:</label><br>
                    <hr>
                    <label for="so_dien_thoai">Số điện thoại:</label><br>
                    <hr>
                  </div>
                  <div class="col-md-5">
                    <input type="text" id="ma_khach_hang" name="ma_khach_hang"><br>
                    <hr>
                    <input type="text" id="ho_ten" name="ho_ten"><br>
                    <hr>
                    <input type="text" id="cmnd" name="cmnd"><br><br>
                    <hr>
                    <input type="text" id="so_dien_thoai" name="so_dien_thoai"><br>
                    <hr>
                  </div>
                </div>

                <hr>

              </div>
              <section>
                <div class="row">

                  <div class="col-md-12">

                    <label for="email">Email:</label>
                    <input class="forminput" type="email" id="email" name="email"><br>
                    <hr>


                    <label for="dia_chi">Địa chỉ:</label>
                    <input type="text" class="forminput" id="dia_chi" name="dia_chi"><br>
                    <hr>


                    <label for="gioi_tinh">Giới tính:</label>
                    <select class="forminput" id="gioi_tinh" name="gioi_tinh">
                      <option value="nam">Nam</option>
                      <option value="nu">Nữ</option>
                    </select><br>
                    <hr>


                    <label for="ngay_sinh">Ngày sinh:</label>
                    <input type="date" class="forminput" id="ngay_sinh" name="ngay_sinh"><br>
                    <hr>


                    <label for="loai_khach_hang">Chức Vụ:</label>
                    <select class="forminput" id="loai_khach_hang" name="loai_khach_hang">
                      <option value="thanh_vien">Bộ phận quản lý kho</option>
                      <option value="vip">Bộ phận thu ngân</option>
                      <option value="thanh_vien">Bộ phận quản lý</option>
                      
                    </select><br>
                    <hr>
                    
                      <label for="amount">Lương:</label>
                      <input type="number" class="forminput"  id="amount" name="amount">
                      <span style="margin-left: 10px; ">VND</span> 
                 

              </section>


            </div>
            <hr>
            <div class="row">
              <div class="col-md-4">
                <div class="text-center">
                  <button type="button" class="btn btn-success  buttonform">Sửa</button>
                </div>
              </div>
              <div class="col-md-4">
                <div class="text-center">
                  <button type="button" class="btn btn-success  buttonform">Huỷ</button>
                </div>
              </div>
              <div class="col-md-4">
                <div class="text-center">
                  <button type="button" class="btn btn-success  buttonform">Lưu</button>
                  </div>
              </div>
            </div>
          </div>

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

