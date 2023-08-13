package com.example.duanquanaojava5.Controller;

import com.example.duanquanaojava5.Model.*;
import com.example.duanquanaojava5.Service.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.awt.print.Pageable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Controller
public class TrangChuController {
    @Autowired
    ChiTietSanPhamService chiTietSanPhamServicel;
    @Autowired
    MauSacService msSV;
    @Autowired
    SizeService sizeSV;
    @Autowired
    ChatLieuService chatLieuSV;
    @Autowired
    DongSPService dspSV;
    @Autowired
    SanPhamService sanPhamService;
    @Autowired
    GioHangChiTietService gioHangChiTietService;
    @Autowired
    GioHangService gioHangService;

    @GetMapping("/")
    public String hienthi(Model model,
                          @RequestParam(defaultValue = "0") int page) {
        Page<SanPham> ctsp = sanPhamService.findByPage(page);
        model.addAttribute("page", ctsp);
        List<SanPham> sanPhams = ctsp.getContent();
        if (!sanPhams.isEmpty()) {
            SanPham sanPham = sanPhams.get(0);
            List<MauSac> mauSacs = chiTietSanPhamServicel.findMauSacBymaSanPham(sanPham.getMaSanPham());
            List<Size> sizes = chiTietSanPhamServicel.findSizeBymaSanPham(sanPham.getMaSanPham());
            List<ChiTietSanPham> chiTietSanPhams = chiTietSanPhamServicel.getChiTietSanPhamByMaSanPhamAndMaSize(sanPham.getMaSanPham(), sizes.get(0).getMaSize());
            ChiTietSanPham firstChiTiet = chiTietSanPhams.get(0);
            model.addAttribute("sanPham", sanPham);
            model.addAttribute("mauSacs", mauSacs);
            model.addAttribute("sizes", sizes);
            model.addAttribute("chiTietSanPhams", chiTietSanPhams);
            model.addAttribute("selectedMaSanPham", sanPham.getMaSanPham());
            model.addAttribute("selectedMaMau", mauSacs.get(0).getMaMauSac());
            model.addAttribute("selectedMaSize", sizes.get(0).getMaSize());
            model.addAttribute("selectedChiTiet", firstChiTiet);
        }
        return "index";
    }

    @GetMapping("/test")
    public String hienthi(Model model) {

        return "detailProduct";
    }

    @GetMapping("/detail/{maSanPham}/{maSize}/{maMau}")
    public String showProductDetails(Model model, @PathVariable("maSanPham") Integer maSanPham,
                                     @PathVariable(name = "maSize", required = false) Integer maSize,
                                     @PathVariable(name = "maMau", required = false) Integer maMau) {
        SanPham sanPham = sanPhamService.findById(maSanPham).orElse(null);
        List<MauSac> mauSacs = chiTietSanPhamServicel.findMauSacBymaSanPham(maSanPham);
        List<Size> sizes = chiTietSanPhamServicel.findSizeBymaSanPham(maSanPham);
        ChiTietSanPham selectedChiTiet = null;

        // Lưu giá trị màu được chọn vào thuộc tính selectedMaMau
        Integer selectedMaMau = (Integer) model.getAttribute("selectedMaMau");

        // Nếu chưa chọn màu hoặc size, hiển thị chi tiết sản phẩm đầu tiên
        if (maSize == null && maMau == null) {
            List<ChiTietSanPham> chiTietSanPhams = chiTietSanPhamServicel.getChiTietSanPhamByMaSanPhamAndMaSize(maSanPham, sizes.get(0).getMaSize());
            selectedChiTiet = chiTietSanPhams.get(0);
            model.addAttribute("selectedMaSize", sizes.get(0).getMaSize());
            model.addAttribute("selectedMaMau", selectedMaMau);
        } else {
            if (maMau != null) {
                if (maSize != null) {
                    // Nếu đã chọn size và màu, lấy thông tin chi tiết sản phẩm của size và màu đó
                    selectedChiTiet = chiTietSanPhamServicel.getChiTietSanPhamByMaSanPhamAndMaSizeAndMaMauSac(maSanPham, maSize, maMau);
                    model.addAttribute("selectedMaMau", maMau);
                    model.addAttribute("selectedMaSize", maSize);
                } else {
                    // Nếu chỉ chọn màu, lấy danh sách size liên quan đến màu đó và chọn size đầu tiên
                    sizes = chiTietSanPhamServicel.findSizeBymaSanPhamAndMaMauSac(maSanPham, maMau);
                    if (!sizes.isEmpty()) {
                        maSize = sizes.get(0).getMaSize();
                        selectedChiTiet = chiTietSanPhamServicel.getChiTietSanPhamByMaSanPhamAndMaSizeAndMaMauSac(maSanPham, maSize, maMau);
                    }
                    // Cập nhật giá trị selectedMaMau vào model để giữ lại màu sắc khi chọn size
                    model.addAttribute("selectedMaMau", selectedMaMau);
                    model.addAttribute("selectedMaSize", maSize);
                }
            } else {
                if (maSize != null) {
                    // Nếu chỉ chọn size, lấy danh sách màu liên quan đến size đó và chọn màu đầu tiên
                    List<MauSac> mauSacsBySize = chiTietSanPhamServicel.findMauSacBymaSanPhamAndMaSize(maSanPham, maSize);
                    if (!mauSacsBySize.isEmpty()) {
                        maMau = mauSacsBySize.get(0).getMaMauSac();
                        selectedChiTiet = chiTietSanPhamServicel.getChiTietSanPhamByMaSanPhamAndMaSizeAndMaMauSac(maSanPham, maSize, maMau);
                    }
                    // Cập nhật giá trị selectedMaMau vào model để giữ lại màu sắc khi chọn size
                    model.addAttribute("selectedMaMau", maMau);
                    model.addAttribute("selectedMaSize", maSize);
                }
            }
        }

        model.addAttribute("sanPham", sanPham);
        model.addAttribute("mauSacs", mauSacs);
        model.addAttribute("sizes", sizes);
        model.addAttribute("selectedChiTiet", selectedChiTiet);

        return "detailSanPham";
    }


    @ModelAttribute("giohangct")
    public List<GioHangChiTiet> cart(HttpSession session) {
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
        if (khachHang == null) {
            return Collections.emptyList();
        }
        GioHang gioHang = gioHangService.findByKhachHang(khachHang.getMaKhachHang());
        if (gioHang == null) {
            gioHang = new GioHang();
            gioHang.setNgayTao(new java.sql.Date(new Date().getTime()));
            gioHang.setTrangThai(0);
            gioHang.setKhachHang(khachHang);
            gioHangService.save(gioHang);
        }

        return gioHangChiTietService.findByGioHang(gioHang.getMaGioHang());
    }

}