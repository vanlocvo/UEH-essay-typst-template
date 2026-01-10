# UEH Essay Typst Template

Template Typst cho sinh viên Đại học Kinh tế TP. Hồ Chí Minh (UEH). Template này giúp tạo các báo cáo, tiểu luận với định dạng chuyên nghiệp và thống nhất theo chuẩn UEH.

## ✨ Tính năng

- 📄 Trang bìa chuẩn UEH với logo và màu sắc đặc trưng
- 📝 Hỗ trợ cả báo cáo cá nhân và nhóm
- 📚 Tự động tạo mục lục
- 📖 Tích hợp quản lý tài liệu tham khảo (bibliography)
- 🎨 Định dạng font Times New Roman, khổ giấy A4 theo chuẩn học thuật
- ⚙️ Dễ dàng tùy chỉnh thông qua file JSON
- 🇻🇳 Hỗ trợ đầy đủ tiếng Việt

## 📋 Yêu cầu

- Trình duyệt web hiện đại (Chrome, Firefox, Safari, Edge)
- Font Times New Roman (đã có sẵn trong thư mục `fonts/`)

### Sử dụng Typst Web App

Template này được thiết kế để sử dụng với **[Typst Web App](https://typst.app/)** - không cần cài đặt gì!

1. Truy cập [https://typst.app/](https://typst.app/)
2. Đăng nhập hoặc tạo tài khoản miễn phí
3. Upload toàn bộ thư mục template lên web app
4. Bắt đầu chỉnh sửa và xem kết quả ngay lập tức

## 🚀 Bắt đầu nhanh

### 1. Tải template
- Nhấn nút "Code" > "Download ZIP" trên GitHub
- Giải nén file ZIP

### 2. Upload lên Typst Web App

1. Truy cập [https://typst.app/](https://typst.app/)
2. Đăng nhập vào tài khoản
3. Tạo project mới hoặc upload toàn bộ thư mục template

### 3. Cấu hình thông tin

Sao chép và đổi tên file config template phù hợp:

**Cho báo cáo cá nhân:**
- Sao chép nội dung từ `UEH/config template/individual.json`
- Dán vào file mới tên `UEH/config.json`

**Cho báo cáo nhóm:**
- Sao chép nội dung từ `UEH/config template/group.json`
- Dán vào file mới tên `UEH/config.json`

### 4. Chỉnh sửa thông tin

Mở file `UEH/config.json` trên Typst Web App và cập nhật thông tin của bạn:

```json
{
  "department": "KHOA QUẢN TRỊ",
  "title": "TIỂU LUẬN",
  "topic-title": "Tên đề tài của bạn",
  "city": "TP. Hồ Chí Minh",
  "date": "tháng 01 năm 2026",
  "cover_info": [
    { "key": "Môn học", "value": "Tên môn học" },
    { "key": "Giảng viên", "value": "TS. Họ tên giảng viên" },
    { "key": "Sinh viên", "value": "Họ tên của bạn" },
    { "key": "MSSV", "value": "31234567" },
    { "key": "Lớp", "value": "Tên lớp" }
  ]
}
```

### 5. Viết nội dung

Chỉnh sửa file trong thư mục `chapters/` trên Typst Web App:
- `chapters/chapter1.typ` - Nội dung chương 1
- Thêm file mới cho các chương khác

### 6. Xem kết quả
- File PDF sẽ tự động được tạo và hiển thị bên phải
- Mỗi khi bạn chỉnh sửa, kết quả sẽ cập nhật ngay lập tức
- Nhấn nút "Download" để tải file PDF về máy

## 📖 Cách sử dụng

### Thêm chương mới

1. Tạo file mới trong `chapters/`, ví dụ: `chapter2.typ`
2. Thêm vào `main.typ`:

```typst
#import "conf.typ": *

#show: TEMPLATE

#include "chapters/chapter1.typ"
#include "chapters/chapter2.typ"
```

### Viết nội dung chương

Trong file chương, ví dụ `chapters/chapter1.typ`:

```typst
= Giới thiệu

Đây là nội dung chương 1...

== Mục 1.1

Nội dung mục 1.1...

=== Mục 1.1.1

Nội dung mục con...
```

### Thêm tài liệu tham khảo

1. Thêm tài liệu vào `bibliography.bib`:

```bibtex
@article{nguyen2025,
  author = {Nguyễn, Văn A},
  title = {Tên bài báo},
  journal = {Tạp chí XYZ},
  year = {2025}
}
```

2. Trích dẫn trong văn bản:

```typst
Theo nghiên cứu của Nguyễn @nguyen2025...
```

### Báo cáo nhóm

Đối với báo cáo nhóm, sử dụng cấu trúc danh sách sinh viên trong `config.json`:

```json
{
  "key": "Sinh viên thực hiện",
  "value": [
    { "name": "Nguyễn Văn A", "id": "3120102123" },
    { "name": "Trần Thị B", "id": "3120102124" },
    { "name": "Lê Văn C", "id": "3120102125" }
  ]
}
```

## 📚 Tài liệu

Để tìm hiểu thêm về cách sử dụng Typst và các tính năng nâng cao, vui lòng xem thư mục `docs/` (đang được xây dựng).

Tài liệu chính thức của Typst: [https://typst.app/docs](https://typst.app/docs)

## 📁 Cấu trúc thư mục

```
UEH-typst-template/
├── main.typ              # File chính - điểm bắt đầu
├── conf.typ              # Cấu hình template
├── bibliography.bib      # File tài liệu tham khảo
├── LICENSE               # Giấy phép sử dụng
├── README.md             # Tài liệu này
├── chapters/             # Thư mục chứa các chương
│   └── chapter1.typ      # Ví dụ chương 1
├── docs/                 # Tài liệu hướng dẫn Typst (sẽ được tạo)
├── fonts/                # Font Times New Roman
│   ├── Times New Roman.ttf
│   ├── Times New Roman Bold.ttf
│   ├── Times New Roman Italic.ttf
│   └── Times New Roman Bold Italic.ttf
└── UEH/                  # Thư mục template UEH
    ├── cover.typ         # Template trang bìa
    ├── logo.png          # Logo UEH
    ├── config.json       # File cấu hình (tạo từ template)
    └── config template/  # Các mẫu cấu hình
        ├── group.json    # Mẫu cho nhóm
        └── individual.json # Mẫu cho cá nhân
```

## 🤝 Đóng góp

Mọi đóng góp đều được hoan nghênh! Vui lòng:

1. Fork repository
2. Tạo branch mới (`git checkout -b feature/TinhNangMoi`)
3. Commit thay đổi (`git commit -m 'Thêm tính năng mới'`)
4. Push lên branch (`git push origin feature/TinhNangMoi`)
5. Tạo Pull Request

## ⚠️ Lưu ý về Font

Font Times New Roman trong thư mục `fonts/` là tài sản của Microsoft Corporation. Template này chỉ sử dụng các font này cho mục đích **giáo dục**. Vui lòng đảm bảo bạn có giấy phép hợp lệ để sử dụng các font này (thường đi kèm với Windows hoặc Microsoft Office).

Xem thêm chi tiết trong file [LICENSE](LICENSE).

## 📄 Giấy phép

Template này được phát hành dưới giấy phép MIT. Xem file [LICENSE](LICENSE) để biết thêm chi tiết.

**Lưu ý:** Font Times New Roman không thuộc giấy phép MIT và là tài sản của Microsoft Corporation.

## 💬 Hỗ trợ

Nếu gặp vấn đề hoặc có câu hỏi, vui lòng:
- Mở [Issue](../../issues) trên GitHub
- Tham khảo tài liệu của typst tại đây: https://typst.app/docs/

## 🎓 Giới thiệu về UEH

Đại học Kinh tế TP. Hồ Chí Minh (UEH) là một trong những trường đại học hàng đầu về kinh tế tại Việt Nam. Template này được phát triển để hỗ trợ sinh viên trong việc soạn thảo các báo cáo học thuật chuyên nghiệp.

---

**Chúc bạn học tập tốt! 📚✨**
