## Nguồn dữ liệu

Project sử dụng dữ liệu ở cấp độ khách hàng, bao gồm:

- Thông tin khách hàng
- Phân khúc khách hàng
- Tỉnh/Thành phố
- AUM (Assets Under Management)
- Thông tin sản phẩm khách hàng đang sử dụng

## Các bảng dữ liệu

Phân tích được thực hiện dựa trên các bảng:

- `customer` – thông tin khách hàng và phân khúc
- `aum` – thông tin AUM của khách hàng
- `product` – thông tin các sản phẩm khách hàng đang sử dụng

## Chuẩn bị dữ liệu

Các bảng được kết hợp ở cấp độ khách hàng bằng `customer_id` trong Google BigQuery.

Dataset phân tích cuối cùng được xây dựng để phục vụ:

- Phân tích phân khúc khách hàng
- Phân tích AUM
- Phân tích mức độ sử dụng sản phẩm
- Xác định cơ hội cross-selling
