
<head> 
    <style>
        .panel-title {
            font-weight: bold;
            font-size: 50px;
            text-align: center;
            background-color: rgba(9, 160, 138, 0.968);
        }

        .box {
            border: 2px;
            border-color: rgb(11, 11, 11);
            background-color: rgba(169, 169, 169, 0.56);
        }

        form {
            font-size: 20px;
            text-align: left;
        }

        h3 {
            font-family: 'Times New Roman', Times, serif;
            text-align: left;
            font-weight: bold;
            font-size: 25px;

        }

        h4 {
            font-family: 'Times New Roman', Times, serif;
            text-align: left;
            font-weight: 30px;
            font-size: 40px;
            background-color: cornsilk;
        }

        .border {
            border: 1px solid #ccc;
            /* đường viền 1 pixel với màu #ccc */
            padding: 10px;
            /* tạo khoảng cách giữa nội dung và đường viền */
        }

        input {
            width: 400px;
            height: 50px;
            margin-right: 100px;
        }

        select {
            display: inline-block;
            /* cho phép label và select nằm cùng hàng */
            width: 500px;
            height: 50px;
            /* độ rộng của select */
            font-size: 30px;
        }

        label,
        input {
            display: inline-block;
            margin-bottom: 10px;
            /* khoảng cách giữa các dòng */
            vertical-align: middle;
            /* căn giữa theo chiều dọc */
        }

        label {
            font-size: 25px;
            width: 100px;
            /* chiều rộng của label */
            text-align: left;
            /* căn phải nội dung của label */
            margin-right: 50px;
            /* khoảng cách giữa label và input */
            margin-left: 50px;
        }


        .buttonform {
            font-size: 30px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
        }

        span {
            font-weight: bold;
        }

        option {
            font-size: 50px;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
        }

        
        img
        {
           
            width: 380px;
            height: 400px;
            
        }
    </style>
</head>

<body style="background-color: rgba(10, 172, 183, 0.855);">

    <div class="container">
        <div style="margin-top: 800px;">
            <div class="panel panel-default" style="max-width: 1500px;max-height: 2000px; transform: scale(2);">
                <div class="panel-heading">
                    <h3 class="panel-title">Tạo Đơn Đặt Hàng</h3>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box">
                                <h4>Thông tin đơn đặt hàng</h4>
                                <hr>
                                <div class="row">
                                    <!-- <div class="col-md-4">

                                        
                                    </div> -->
                                    <div class="col-md-12">

                                        <form>
                                           
                                            <div class="form-group">
                                                <label style="width: 300px;" for="mahoadon">Mã Hoá Đơn:</label>
                                                <input type="text" style="width: 500px;" id="makhachhang">
                                            </div>
                                            <div class="form-group">
                                                <label style="width: 300px;" for="ngay-lap">Ngày lập:</label>
                                                <input type="date" style="font-size: 30px;width:500px" ; id="ngay-lap">
                                            </div>
                                            <div class="form-group">
                                                <label  style="width: 300px;" for="nv-lap-hoa-don">Nhân viên lập hoá đơn:</label>
                                                <select  id="nv-lap-hoa-don" name="nv-lap-hoa-don">
                                                    <option value="nv1">Nhân viên 1</option>
                                                    <option value="nv2">Nhân viên 2</option>
                                                    <option value="nv3">Nhân viên 3</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label style="width: 300px;" for="ngay-giao-dich">Ngày giao dịch:</label>
                                                <input type="date" style="font-size: 30px;width:500px" ; id="ngay-lap">
                                            </div>
                                        </form>


                                    </div>
                                </div>
                               <hr >
                                <div class="box">
                                    <h4 style="text-align: left;background-color: cornsilk;">Thông Tin Nhà Cung Cấp</h4>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-4 ">
                                            <div >
                                                <img src="billorder-img.png" style="border-right: 10px solid rgb(4, 187, 178);" alt="Picture">
                                            </div> 
                                        </div>
                                        <div class="col-md-8">
                                            <form action="">
                                        
                                        
                                                <div class="form-group">
                                                    <label for="ncc">Tên:</label>
                                                    <select style="width: 400px;" id="ncc" name="ncc">
                                                        <option value="nv1">NCC 1</option>
                                                        <option value="nv2">NCC 2</option>
                                                        <option value="nv3">NCC 3</option>
                                                    </select>
                                                </div>
                                        
                                                
                                                <div class="form-group">
                                                    <label for="phone">Số Điện Thoại:</label>
                                                    <input type="number" style="font-size: 30px;" id="phone" name="phone">
                                        
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email:</label>
                                                    <input type="text" id="makhachhang">
                                                </div>
                                                <div class="form-group">
                                                    <label for="makhachhang">Địa Chỉ:</label>
                                                    <input type="text" id="makhachhang">
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                   
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="text-center">
                                            <button type="button" class="btn btn-success  buttonform">Huỷ</button>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="text-center">
                                            <button type="button" class="btn btn-success  buttonform">Tạo Đơn Đặt Hàng</button>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="text-center">
                                            <button type="button" class="btn btn-success  buttonform">Đóng</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>
