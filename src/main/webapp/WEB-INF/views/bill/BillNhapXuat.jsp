 <head>
<style>
        .panel-title {
            text-align: left;
            font-size: 7em;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
        }

        h1 {
            font-size: 5em;
            font-family: 'Times New Roman', Times, serif;
        }

        label {
            font-size: 5em;
        }

        input {
            font-size: 5em;
            width: 20em;
        }

        .formcol {
            border-left: 1em solid rgba(3, 127, 117, 0.841);
        }

        select {
            font-size: 5em;
            width: 20em;
            height: 1.8em;
        }

        option {
            font-size: 1em;
        }

        thead {
            text-align: center;
            font-size: 4em;
            background-color: rgba(5, 161, 159, 0.644);

        }

        th,
        td {
            text-align: center;
            border: 0.2em solid #ddd;

            /* border-collapse: collapse; */
            border-spacing: 0;
        }

        tbody {
            font-size: 4em;
        }

        .buttonform {
            padding: 0.3em 1.4em;
            font-size: 60px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            border: 4px solid #f80202;
            border-radius: 20px;
            /* độ cong góc của button */
            /* box-shadow: 5px 5px 5px rgba(199, 5, 5, 0.56); */
            margin-top: 4em;
            /* phủ bóng mờ */
        }
        .buttonform2 {
            padding: 0.3em 1.4em;
            font-size: 60px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            border: 4px solid #f80202;
            border-radius: 20px;
            /* độ cong góc của button */
            /* box-shadow: 5px 5px 5px rgba(199, 5, 5, 0.56); */
            
            /* phủ bóng mờ */
        }
  .buttonform3 {
            padding: 0.3em 1.4em;
            font-size: 60px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            border: 4px solid #f80202;
            border-radius: 20px;
            /* độ cong góc của button */
            /* box-shadow: 5px 5px 5px rgba(199, 5, 5, 0.56); */
           
            /* phủ bóng mờ */
        }
 tr:hover
        {
            cursor: pointer;
            background-color: rgba(2, 145, 119, 0.523);
        }
    </style>

</head>

<body>
    <form action="">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-10">
                        <h3 class="panel-title"> Đơn nhập xuất kho</h3>
                    </div>

                    <div class="col-md-2">
                        <button style="font-size: 5em;" class="btn btn-default  panel-minimize"><i
                                class="glyphicon glyphicon-minus"></i></button>
                        <button style=" font-size: 5em;" class="btn btn-default  panel-maximize"><i
                                class="glyphicon glyphicon-fullscreen"></i></button>
                        <button style=" font-size: 5em;" class="btn btn-danger  panel-close"><i
                                class="glyphicon glyphicon-remove"></i></button>
                    </div>
                </div>
            </div>

            <div class="panel-body">
                <div class="pane panel-default">
                    <div class="panel-heading">
                        <h1>
                            Thông Tin

                        </h1>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-7 ">
                                <div class="col-md-3 formcol">
                                    <div style="text-align: left;">
                                        <img src="billnhapxuat-img.png" alt="Picture" style="width: 60em;height: 60em;">
                                        <div class="text-center">
                                            <button type="button" class="btn btn-success  buttonform">Nhập Hàng</button>
                  <button type="button" class="btn btn-success buttonform3 ">Xuất Hàng</button>
                
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 formcol">
                                    <label for="ma_don_hang">Mã Đơn</label>
                                    <hr>

                                    <label for="nguoi_lap">Người lập</label>
                                    <hr>

                                    <label for="ngay_lap">Ngày lập</label>
                                    <hr>

                                    <label for="nv_chiu_trach_nhiem">Người chịu trách nhiệm</label>
                                    <hr>
                                    <label for="phivanchuyen">Phí vận chuyển</label>
                                    <hr>

                                    <label for="kho">Kho</label>
                                    <hr>

                                    <label for="ki">Kì</label>
                                    <hr>



                                </div>
                                <div class="col-md-5" style="border-right: 1em solid rgb(6, 167, 158);">
                                    <input type="text" id="ma_don_hang" name="ma_don_hang">
                                    <hr>

                                    <select id="nv-lap-hoa-don" name="nv-lap-hoa-don">
                                        <option value="nv1">Nhân viên 1</option>
                                        <option value="nv2">Nhân viên 2</option>
                                        <option value="nv3">Nhân viên 3</option>
                                    </select>
                                    <hr>

                                    <input type="date" id="ngay_lap" name="ngay_lap">
                                    <hr>

                                    <select id="nv-chiu_trach_nhiem" name="nv-chiu_trach_nhiem">
                                        <option value="nv1">Nhân viên 1</option>
                                        <option value="nv2">Nhân viên 2</option>
                                        <option value="nv3">Nhân viên 3</option>
                                    </select>
                                    <hr>


                                    <input type="number" id="phivanchuyen" name="phivanchuyen" placeholder="VND">
                                    <hr>

                                    <select id="Kho" name="Kho">
                                        <option value="nv1">Kho 1</option>
                                        <option value="nv2">Kho 2</option>
                                        <option value="nv3">Kho 3</option>
                                    </select>
                                    <hr>


                                    <input type="number" id="ki" name="ki">
                                </div>

                            </div>
                            <div class="col-md-5 ">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h1>
                                            Sức Chứa
                                        </h1>
                                    </div>

                                    <hr>
                                    <div class="panel-body" style="width:180em;height:65em; overflow-y: scroll;">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table" style="border-collapse: collapse;">
                                                    <thead>
                                                        <tr>
                                                            <th>Sản Phẩm </th>
                                                            <th>Số Lượng Tối Đa</th>
                                                            <th>Số Lượng Hiện Tại</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>



                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Ngọt</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Ngọt</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Tăng Lực</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Tăng Lực</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Đóng chai</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nước Suối</td>
                                                            <td>100</td>
                                                            <td>30</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <hr>
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

        <div class="panel panel-default">
            <div class="panel-body">

                <div class="row">
                    <div class="col-md-3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h1>Danh sách đơn hàng</h1>
                            </div>
                            <div class="panel-body" style="width:110em;height:75em; overflow-y: scroll;">
                                <table class="table" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>

                                            <th>Tên Đơn Hàng</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Đơn hàng 1</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 2</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 3</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 4</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 5</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 6</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 7</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 8</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 9</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 1</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 2</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 3</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 4</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 5</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 6</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 7</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 8</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 9</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="text-center">
                            <button type="button" class="btn btn-success  buttonform">>></button>


                            <button type="button" class="btn btn-success  buttonform">
                                << </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h1>Đơn hàng được Nhập/Xuất</h1>
                            </div>
                            <div class="panel-body" style="width:180em;height:75em; overflow-y: scroll;">
                                <table class="table" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th>Tên Đơn Hàng</th>
                                            <th>Chi tiết Đơn Hàng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Đơn hàng 1</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 2</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 3</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 4</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 5</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 1</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 2</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 3</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 4</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 5</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 1</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 2</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 3</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 4</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 5</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 1</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 2</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 3</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn hàng 4</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>
                                        <tr>
                                            <td>Đơn Hàng 5</td>
                                            <td>Đã Thanh Toán</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h1>Mặt Hàng</h1>
                            </div>
                            <div class="panel-body" style="width:105em;height:75em; overflow-y: scroll;">
                                <table class="table" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>

                                            <th>Sản Phẩm</th>
                                            <th>Số Lượng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước ngọt</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước tăng lực</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước ngọt</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước tăng lực</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước ngọt</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước tăng lực</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước ngọt</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước tăng lực</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <td>Nước suối</td>
                                            <td>100</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                    </div>
                   
                </div>
               
            </div>
            
        </div>
        <div class="text-right">
            <button type="button" class="btn btn-success  buttonform2">Thêm</button>
            <button type="button" class="btn btn-success  buttonform2">Tạo</button>
         

        </div>     
       
    </form>
</body>
