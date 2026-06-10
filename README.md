# 青禾口腔网站 — 部署说明

## 文件结构
```
qinghe-dental/
  index.html      ← 整个网站（一个文件）
  images/          ← 放图片（logo、医生照片、诊所照片等）
```

## 网站包含内容

### 页面结构（全部在一个 index.html 中）
1. **导航栏** — 固定在顶部，点哪跳到哪
2. **首页大图** — 青禾口腔 · 守护每一颗牙齿的健康
3. **关于我们** — 诊所简介、双店信息
4. **诊疗项目** — 6 个卡片：种植牙、矫正、洗牙、拔牙、补牙、美白
5. **医生团队** — 陈娇（儿牙/早矫）、刘剑霞（根管/贴面）
6. **门诊地址** — 南山花园店 + 保利观澜店
7. **预约 CTA** — 引导到店咨询

### 已内置 Schema 结构化数据
- Dentist Schema（诊所实体）
- Physician Schema（两位医生各自独立实体）
- MedicalProcedure Schema（6 个诊疗项目）
- PostalAddress Schema（两个门店地址）

## 怎么部署

### 方式一：阿里云/腾讯云服务器（推荐）
1. 把 index.html 上传到服务器网站根目录
2. 备案通过后域名解析到服务器 IP
3. 完成

### 方式二：GitHub Pages（免费，免备案，但国内慢）
1. 创建 GitHub 仓库
2. 把 qinghe-dental 整个文件夹推上去
3. 在仓库 Settings → Pages 开启
4. 域名 CNAME 指向 GitHub Pages 地址

## 怎么修改文字

打开 index.html，搜你要改的文字，直接改。关键修改位置：

### 改标题和描述
```html
<title>青禾口腔 — 重庆两江新区专业口腔诊疗</title>
<meta name="description" content="...">
```

### 改医生信息
搜 `陈娇` 或 `刘剑霞`，在 doctor-card 区域改。

### 改服务项目
搜 `种植牙` 等关键词，在 service-card 区域改。

### 改门店地址
搜 `南山花园店` 或 `保利观澜店`，在 location-card 区域改。

### 改联系方式
所有 `请致电咨询或到店了解` 的部分替换为实际电话。

### 改营业时间
搜 `09:00 – 18:00` 替换。

## 怎么加文章

在 index.html 的 `<section class="cta">` 之前，插入新 section：

```html
<section id="article-xxx" class="alt">
  <div class="container">
    <div style="max-width:800px;margin:0 auto;">
      <h2 style="font-size:28px;margin-bottom:16px;">文章标题</h2>
      <p style="color:var(--text-light);font-size:14px;margin-bottom:32px;">发布日期</p>
      <p>文章内容第一段...</p>
      <p>文章内容第二段...</p>
    </div>
  </div>
</section>
```

然后在导航栏加链接：
```html
<a href="#article-xxx">文章标题</a>
```

## 待你提供的

- [ ] 诊所联系电话
- [ ] 实际详细地址（南山花园和保利观澜的具体门牌号）
- [ ] 医生详细简介（照片、毕业院校、从业年限等）
- [ ] 备案号
- [ ] Logo 图片
- [ ] 诊所环境照片
