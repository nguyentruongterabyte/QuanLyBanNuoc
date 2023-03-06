<head>      
        .panel{ border: 0.1em solid black;
        margin-top:20em}

        .panel-title {
            font-weight: bold;
            font-size: 50px;
            text-align: center;
            background-color: rgba(9, 160, 138, 0.968);
           
        }       
        form {
            font-size: 20px;
        }

        h3 {
            font-family: 'Times New Roman', Times, serif;
            text-align: left;
            font-weight: bold;
            font-size: 7em;

        }

        h4 {
            font-family: 'Times New Roman', Times, serif;
            text-align: left;
            font-weight: 30px;
            font-size: 6em;

  }     
        input {
            font-size: 5em;
            width: 16em;
        }

        select {
            display: inline-block;
            /* cho phép label và select nằm cùng hàng */
            width: 350px;
            height: 50px;
            /* độ rộng của select */
            font-size: 30px;
        }    
        label {
            font-size: 5em;

        }

        .buttonform {
            font-size: 30px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
        }
        option {
            font-size: 50px;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
        }
        table {
            border-collapse: collapse;
            table-layout: fixed;
            width: 100%;
        }

        th {
            background-color: rgb(10, 240, 224);
            height: 2.5em;
            text-align: center;
        }

        thead {

            position: sticky;
            top: 0;
            /* Giữ nguyên vị trí của phần header */

        }

        th,
        td {
            border: 1px solid rgb(2, 125, 105);
            padding: 5px;
            font-size: 5em;
        }

        tr:hover {
            background-color: rgba(9, 187, 169, 0.555);
        }

        /* Đặt kích thước cho ô chứa checkbox */
        td input[type="checkbox"] {
            width: 10em;
            /* Đặt kích thước */
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
    </style>
</head>



<body>
    <div class="row">
        <div class="col-md-2"> </div>
        <div class="col-md-8">
            <div class="panel panel-default" >
                <div class="panel-default">
                    <div class="panel-heading">
                        <h3>Chỉnh Sửa Thông Báo Kho</h3>
                    </div>
                    <div class="panel-body" >
                        <div class="row" >
                            <div class="col-md-5">
                                <div class="row" style="border-right:0.1em solid black;">
                                    <div class="col-md-12">
                                        <div style="text-align: center;">
                                            <img src="updateInforKho.jpg" alt="Picture" style="width: 120em;height: 60em;border-bottom:0.1em solid black;">
                                    
                                        </div>
                                    </div>
                                    

                                </div>
                                <div class="row"style="border-right:0.1em solid black;">
                                    <br>
                                    <br>
                                    <div class="col-md-4">
                                        <label for="ma-kho">Mã kho:</label>
                                        <hr>
                                        <label for="ten-kho">Tên kho:</label>
                                        <hr>
                                        <label for="dia-chi">Địa chỉ:</label>
                                        <hr>
                                        <label for="ki">Kì:</label>
                                        <hr>
                                        <label for="gia-thue">Giá thuê:</label>
                                        <hr>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" id="ma-kho" name="ma-kho" placeholder="Nhập mã kho" required>
                                        <hr>
                                        <input type="text" id="ten-kho" name="ten-kho" placeholder="Nhập tên kho"
                                            required>
                                        <hr>
                                        <input type="text" id="dia-chi" name="dia-chi" placeholder="Nhập địa chỉ"
                                            required>
                                        <hr>
                                        <input type="number" id="ki" name="ki" placeholder="Nhập kì" required>
                                        <hr>
                                        <input type="text" id="gia-thue" name="gia-thue" placeholder="VND" required>
                                        <hr>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-7" >
                                <div class="panle panel-default">
                                    <div class="panel-heading">
                                        <h4>
                                            Sức Chứa
                                        </h4>
                                    </div>
                                    <div class="panel-body" style="width:167em;height:110em; overflow-y: scroll;">
                                        <table >
                                            <thead>
                                                <tr>
                                                    <th id="product-select">Mã Sản Phẩm
                                                    </th>
                                                    <th>Số lượng Tối Đa</th>
                                                    <th>Số lượng Kì Trước</th>
                                                    <th>Số lượng Hiện Tại</th>
                                                </tr>
                                            </thead>
                                            <tbody class="mouse-pointer">
                                                <tr>                                                                                                      
                                                <td id="product-select">Sản phẩm
                       
                                                    <select style="width: 3em;height: 2em;" size = "1" id="product-select" name="product-select">
                                                        <option   value="coca">Coca</option>
                                                        <option value="7up">7up</option>
                                                        <option value="tangluc">Nước tăng lực</option>
                                                        <option   value="cafesua">Cafe sữa</option>
                                                        <option value="khongdo">Không độ</option>
                                                        <option value="c2">C2</option>
                                                    </select><br>
                                                </td>
                                                    <td>100</td>
                                                    <td>10</td>
                                                    <td>50</td>
                                                </tr>
                                                <tr>                                                                                                      
                                                    <td id="product-select">Nước Ngọt
                           
                                                        <select style="width: 3em;height: 2em;" size = "1" id="product-select" name="product-select">
                                                            <option   value="coca">Coca</option>
                                                            <option value="7up">7up</option>
                                                            <option value="tangluc">Nước tăng lực</option>
                                                            <option   value="cafesua">Cafe sữa</option>
                                                            <option value="khongdo">Không độ</option>
                                                            <option value="c2">C2</option>
                                                        </select><br>
                                                    </td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>50</td>
                                                    </tr>

                                                    <tr>                                                                                                      
                                                        <td id="product-select">Nước ngọt
                               
                                                            <select style="width: 3em;height: 2em;" size = "1" id="product-select" name="product-select">
                                                                <option   value="coca">Coca</option>
                                                                <option value="7up">7up</option>
                                                                <option value="tangluc">Nước tăng lực</option>
                                                                <option   value="cafesua">Cafe sữa</option>
                                                                <option value="khongdo">Không độ</option>
                                                                <option value="c2">C2</option>
                                                            </select><br>
                                                        </td>
                                                            <td>100</td>
                                                            <td>10</td>
                                                            <td>50</td>
                                                        </tr>
                                                        <tr>                                                                                                      
                                                            <td id="product-select">Nước Ngọt
                                   
                                                                <select style="width: 3em;height: 2em;" size = "1" id="product-select" name="product-select">
                                                                    <option   value="coca">Coca</option>
                                                                    <option value="7up">7up</option>
                                                                    <option value="tangluc">Nước tăng lực</option>
                                                                    <option   value="cafesua">Cafe sữa</option>
                                                                    <option value="khongdo">Không độ</option>
                                                                    <option value="c2">C2</option>
                                                                </select><br>
                                                            </td>
                                                                <td>100</td>
                                                                <td>10</td>
                                                                <td>50</td>
                                                            </tr>
                                                            <tr>                                                                                                      
                                                                <td id="product-select">Nước Ngọt
                                       
                                                                    <select style="width: 3em;;height: 2em;" size = "1" id="product-select" name="product-select">
                                                                        <option   value="coca">Coca</option>
                                                                        <option value="7up">7up</option>
                                                                        <option value="tangluc">Nước tăng lực</option>
                                                                        <option   value="cafesua">Cafe sữa</option>
                                                                        <option value="khongdo">Không độ</option>
                                                                        <option value="c2">C2</option>
                                                                    </select><br>
                                                                </td>
                                                                    <td>100</td>
                                                                    <td>10</td>
                                                                    <td>50</td>
                                                                </tr>
                                                                <tr>                                                                                                      
                                                                    <td id="product-select">Nước Ngọt
                                           
                                                                        <select style="width: 3em;height: 2em;" size = "1" id="product-select" name="product-select">
                                                                            <option   value="coca">Coca</option>
                                                                            <option value="7up">7up</option>
                                                                            <option value="tangluc">Nước tăng lực</option>
                                                                            <option   value="cafesua">Cafe sữa</option>
                                                                            <option value="khongdo">Không độ</option>
                                                                            <option value="c2">C2</option>
                                                                        </select><br>
                                                                    </td>
                                                                        <td>100</td>
                                                                        <td>10</td>
                                                                        <td>50</td>
                                                                   </tr>
                                                                                        
                                           </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>

                        </div>
                        
                        <hr>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="text-center" >
                                    <button type="button" class="btn btn-success  buttonform">Trợ giúp</button>
                                  </div>
                            </div>
                            <div class="col-md-4">
                                <div class="text-center" >
                                    <button type="button" class="btn btn-success  buttonform">Huỷ</button>
                                  </div>
                            </div>
                            <div class="col-md-4">
                                <div class="text-center" >
                                    <button type="button" class="btn btn-success  buttonform">Lưu</button>
                                  </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

</body>
