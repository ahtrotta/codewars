reg = /<.*?>|<\/.*?>/

p "<div>test</div>".gsub(reg, "") == "test"
p "<a href='#'>go to <b>start</b> page</a>".gsub(reg, "") == "go to start page"
p "aaabbb<i>sss</i>zzz<hr/>vvv<hr /><br/>".gsub(reg, "") == "aaabbbssszzzvvv"
p "<img src='home.jpg'/>foto description".gsub(reg, "") == "foto description"
p "<p>first section<b>bold text</b>second part    </p>".gsub(reg, "") == "first sectionbold textsecond part    "
p "<div>text\ntext <span>2</span></div>".gsub(reg, "") =="text\ntext 2"
p "<html lang = 'pl' ><body>content of body ... </body> ... </html>".gsub(reg, "") == "content of body ...  ... "
p "<div><span></span></div>".gsub(reg, "") ==""
p "".gsub(reg, "") ==""
p "a".gsub(reg, "") =="a"
