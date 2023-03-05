
<head>
 
    <style>
        h1 {
            font-size: 8em;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }

        h2 {
            font-size: 5em;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }

        input {
            width: 10em;
            height: 1.5em;
            font-size: 20px;
            /* Kích thước chữ hiển thị trong ô nhập liệu */
            padding: 5px;
            /* Khoảng cách giữa vùng chứa văn bản và biên của ô nhập liệu */
            box-sizing: border-box;
            /* Tính cả đường viền và khoảng cách từ nội dung đến biên */
            border-right: 0.1em solid gainsboro;
        }



        label {
            font-size: 6em;
        }

        select {
            font-size: 6em;
            width: 12em;

        }

        .formselectandinput {
            width: 9em;
            height: 1.4em;
            font-size: 5em;
        }

        .formlabel {
            font-size: 4.5em;

        }

        .formcol {

            border-left: 0.2em solid darkolivegreen;
        }

        .formcustomerinfor {
            font-size: 5em;
            width: 18em;
        }


        .table {
            width: 100%;
            /* border-collapse: collapse; */

        }

        .table th,
        .table td {
            padding: 8px;
            text-align: left;
            border-bottom: 0.3em solid #9c9b9b;
            box-shadow: 1px 0 0 #ddd;
            border: 0.1em solid gainsboro;

        }

        td {
            font-size: 4em;
        }

        .table th {
            background-color: #057e56c1;
            font-weight: bold;
            font-size: 5em;
        }

        .table td:first-child,
        .table th:first-child {
            padding-left: 0;

        }

        .table td:last-child,
        .table th:last-child {
            padding-right: 0;
        }

        .table td:nth-child(2),
        .table th:nth-child(2) {
            width: 30%;
        }

        .table td:nth-child(3),
        .table th:nth-child(3) {
            width: 30%;
        }

        .table td:nth-child(4),
        .table th:nth-child(4) {
            width: 10%;
        }

        .table td:nth-child(5),
        .table th:nth-child(5) {
            width: 20%;
        }

        tr:hover {
            cursor: pointer;
            background-color: rgba(9, 208, 208, 0.642);
        }

        thead {
            position: sticky;
            top: 0;
            /* Giữ nguyên vị trí của phần header */
        }

        input {
            font-size: 5em;
            width: 12em
        }

        select {
            font-size: 6em;
            width: 10em
        }

        label {
            font-size: 5em;

        }

        span {
            font-weight: bold;
            font-size: 4em;
            margin-left: 0.1em;
        }

        .formcolpayInput {
            font-size: 5em;
            width: 15em;
        }

        .formcolpaySelect {
            font-size: 6em;
            width: 12.5em
        }
        .formbutton
        {
            
            font-size: 5.5em;
        }
        .formbutton:hover{
            background-color: rgb(8, 225, 222);
        }
    </style>

</head>

<body>
    <form action="">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>
                            Chi Tiết Đơn Hàng
                        </h1>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h2>Sản Phẩm</h2>

                                    </div>
                                    <div class="panel panel-body">

                                        <div class="row" style="border: 0.2em solid darkolivegreen;">
                                            <div class="col-md-4">
                                                <div style="text-align: left;">
                                                    <img src="detailnhapxuat.png" alt="Picture"
                                                        style="width: 50em;height: 50em;">
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="row ">
                                                    <div class="col-md-3 ">
                                                        <label style="margin-left: 2em;" for="product-id">Mã hàng:</label>

                                                    </div>
                                                    <div class="col-md-9">
                                                        <select id="product-id" name="product-id">
                                                            <option value="id1">ID 1</option>
                                                            <option value="id2">ID 2</option>
                                                            <option value="id3">ID 3</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="row " style=" border: 0.2em solid darkolivegreen;">
                                                            <div class="col-md-2 ">
                                                                <label class="formlabel" for="product-name">Tên:</label>
                                                                <hr>


                                                                <label class="formlabel" for="product-price">Giá
                                                                    bán:</label>
                                                                <hr>
                                                                <label class="formlabel" for="product-quantity">Số
                                                                    lượng:</label>
                                                            </div>
                                                            <div class="col-md-4 ">
                                                                <select class="formselectandinput" id="product-name"
                                                                    name="product-name">
                                                                    <option value="name1">Name 1</option>
                                                                    <option value="name2">Name 2</option>
                                                                    <option value="name3">Name 3</option>
                                                                </select>
                                                                <hr>

                                                                <input class="formselectandinput" type="number"
                                                                    id="product-price" name="product-price">
                                                                <hr>
                                                                <input class="formselectandinput" type="number"
                                                                    id="product-quantity" name="product-quantity">
                                                                <hr>
                                                            </div>
                                                            <div class="col-md-2 " style="margin-top: 5em;">
                                                                <label class="formlabel" for="product-stock">Hiện
                                                                    tồn:</label>
                                                                <hr>
                                                                <label class="formlabel"
                                                                    for="product-warehouse">Kho:</label>
                                                                <hr>
                                                            </div>
                                                            <div class="col-md-4" style="margin-top: 5em;">

                                                                <select class="formselectandinput" id="product-stock"
                                                                    name="product-stock">
                                                                    <option value="stock1">Stock 1</option>
                                                                    <option value="stock2">Stock 2</option>
                                                                    <option value="stock3">Stock 3</option>
                                                                </select>
                                                                <hr>
                                                                <select class="formselectandinput"
                                                                    id="product-warehouse" name="product-warehouse">
                                                                    <option value="warehouse1">Warehouse 1</option>
                                                                    <option value="warehouse2">Warehouse 2</option>
                                                                    <option value="warehouse3">Warehouse 3</option>
                                                                </select>
                                                                <hr>

                                                            </div>

                                                        </div>
                                                    </div>

                                               </div>
                                                <div>

                                                </div>
                                            </div>

                                        </div>


                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h2>Thông Tin Khách Hàng</h2>
                                    </div>

                                    <div class="panel-body">
                                        <div class="row" style="border: 0.2em solid darkolivegreen;">
                                            <div class="col-md-3">
                                                <div style="text-align: left;">
                                                    <img src="custormer.PNG" alt="Picture"
                                                        style="width: 50em;height: 50em;">
                                                </div>
                                            </div>

                                            <div class="col-md-3 formcol">
                                                <label for="name">Tên:</label>
                                                <hr>
                                                <label for="customer-id">Mã khách hàng:</label>
                                                <hr>
                                                <label for="phone">Số điện thoại:</label>
                                                <hr>
                                                <label for="email">Email:</label>
                                            </div>
                                            <div class="col-md-6">
                                                <select style="width:15em;height: 1.5em;" id="customer-name"
                                                    name="customer-name">
                                                    <option value="id1">Nguyen Hoang Linh</option>
                                                    <option value="id2">Nguyen Duy Thien</option>
                                                    <option value="id3">Tran Minh Thanh</option>
                                                </select>
                                                <hr>
                                                <input class="formcustomerinfor" type="text" id="customer-id"
                                                    name="customer-id">
                                                <hr>
                                                <input class="formcustomerinfor" type="text" id="phone" name="phone">
                                                <hr>
                                                <input class="formcustomerinfor" type="email" id="email" name="email"
                                                    placeholder="email@gmail.com">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2>Danh Sách </h2>

                            </div>
                            <div class="panel-body" style="width:435em;height:50em; overflow-y: scroll;">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width: 10%">STT</th>
                                            <th style="width: 30%">Sản phẩm</th>
                                            <th style="width: 30%">Giá</th>
                                            <th style="width: 10%">Số lượng</th>
                                            <th style="width: 20%">Thành Tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Nước Suối</td>
                                            <td>25,000</td>
                                            <td>3</td>
                                            <td>75,000</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Nước Suối</td>
                                            <td>25,000</td>
                                            <td>3</td>
                                            <td>75,000</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Nước Suối</td>
                                            <td>25,000</td>
                                            <td>3</td>
                                            <td>75,000</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Nước Suối</td>
                                            <td>25,000</td>
                                            <td>3</td>
                                            <td>75,000</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Nước Ngọt</td>
                                            <td>25,000</td>
                                            <td>2</td>
                                            <td>50,000</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>


                        </div>

                        <div class="row" style="border: 0.1em solid rgba(48, 47, 47, 0.838);">
                            <div class="col-md-2">
                                <label>Tổng hoá đơn:</label>
                                <hr>
                                <label>Phụ thu:</label>
                                <hr>

                            </div>
                            <div class="col-md-2" style="border-right:0.1em solid rgba(91, 89, 89, 0.663);">
                                <input type="text" class="total-amount">
                                <hr>
                                <input type="text" class="surcharge">
                                <hr>
                            </div>
                            <div class="col-md-2">
                                <label>Tổng chiết khấu:</label>
                                <hr>
                                <label>VAT:</label>
                                <hr>
                            </div>
                            <div class="col-md-2" style="border-right:0.1em solid rgba(91, 89, 89, 0.663);">
                                <select id="discount">
                                    <option value="0">Không có chiết khấu</option>
                                    <option value="5">Chiết khấu 5%</option>
                                    <option value="10">Chiết khấu 10%</option>
                                    <option value="15">Chiết khấu 15%</option>
                                </select>
                                <hr>
                                <input type="text" class="vat">
                                <hr>



                            </div>
                            <div class="col-md-2" style="text-align: center;margin-top: 5em">
                                <hr>

                                <label>Thành tiền:</label>
                                <hr>


                            </div>
                            <div class="col-md-2" style="margin-top: 5em">
                                <hr>

                                <input type="text" class="grand-total"><span>VND</span>
                                <hr>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>Thanh Toán</h2>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-2">
                                <label for="payment-method">Hình thức:</label>
                                <hr>
                                <label for="received-amount">Số tiền nhận:</label>
                                <hr>

                            </div>
                            <div class="col-md-4" style="border-right:0.1em solid rgba(91, 89, 89, 0.663);">

                                <select class="formcolpaySelect" id="payment-method" name="payment-method">
                                    <option value="cash">Tiền mặt</option>
                                    <option value="bank-transfer">Chuyển khoản ngân hàng</option>
                                    <option value="credit-card">Thẻ tín dụng</option>
                                    <option value="paypal">Paypal</option>
                                </select>
                                
                               
                                <hr>
                                <input class="formcolpayInput" type="text" id="received-amount" name="received-amount">
                                <hr>
                            </div>
                            <div class="col-md-2">

                                <label for="refund-amount">Số tiền trả lại:</label>
                                <hr>
                                <label for="order-status">Trạng thái đơn hàng:</label>
                                <hr>
                            </div>
                            <div class="col-md-4" style="border-right:0.1em solid rgba(91, 89, 89, 0.663);">

                                <input class="formcolpayInput" type="text" id="refund-amount" name="refund-amount">
                                <hr>
                                <select class="formcolpaySelect" id="order-status" name="order-status">
                                    <option value="paid">Đã thanh toán</option>
                                    <option value="unpaid">Chưa thanh toán</option>
                                    <option value="partial">Còn thiếu</option>
                                </select>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-right">
                    <button type="button" class="btn btn-success formbutton">Huỷ</button>
                    <button type="button" class="btn btn-success ml-3 formbutton">Thanh toán</button>
                  </div>          
            </div>
        </div>
    </form>
</body>

