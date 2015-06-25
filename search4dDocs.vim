function! Search4dDocs()
  let l:docSearch = s:get_visual_selection()
  let l:docSearch = substitute(l:docSearch," ","\\\%20","g")
  let docSearchURL = "http://doc.4d.com/4DACTION/SearchResults_mc/" . escape(shellescape(l:docSearch ), "%"). "/1736481-0/false.en.html"
  echo l:docSearchURL
  if l:docSearch != ""
   :sil execute ':!explorer ' . l:docSearchURL
  else
    echo "No URI found in line."
  endif
endfunction

function! GenActive4dDocs()
  :vnew
  :Rpdf ~/Active4D_v6_Reference.pdf
  :%s/\.\s\.//g
  :%s/.*\n\n\d\n\nActive.*/\r-----\r/g
  :%s/C\sHAPTE\sR/CHAPTER/g
  :0
  :0,226d
  :normal gggqG
  :w ~/Active4D.txt
endfunction

function! SearchActive4dDocs()
  let l:docSearch = s:get_visual_selection()
  :vnew ~/Active4D.txt
  :normal gggqG
  :command! -nargs=1 Page call A4dPage(<f-args>)
  :0
  set hlsearch
  set incsearch
  execute '/' . l:docSearch
  let @/ = @/
endfunction

function! A4dPage(pageNum)
  :0
  let l:currPageNum = a:pageNum + 0
  let l:prevPageNum = l:currPageNum - 1
  execute '/^' . l:prevPageNum . '\n\n[A-Z]'
  normal jj
endfunction

"This function was taken from xolox of StackOverflow. Major props for this very useful function
function! s:get_visual_selection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

map <leader>d :call Search4dDocs()<cr>
map <leader>a :call SearchActive4dDocs()<cr>

