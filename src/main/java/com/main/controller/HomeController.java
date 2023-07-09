package com.main.controller;

import com.main.board.dto.BoardDTO;
import com.main.board.dto.PageDTO;
import com.main.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class HomeController {
    @Autowired
    private BoardService boardService;

    @RequestMapping("/")
    public String home() {
        return "board/paging";
    }

    @GetMapping("/")
    public String paging(Model model,
                         @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
        System.out.println("page = " + page);
        // 해당 페이지에서 보여줄 글 목록
        List<BoardDTO> pagingList = boardService.pagingList(page);
        System.out.println("pagingList = " + pagingList);
        PageDTO pageDTO = boardService.pagingParam(page);
        model.addAttribute("boardList", pagingList);
        model.addAttribute("paging", pageDTO);
        return "board/paging";
    }
}
