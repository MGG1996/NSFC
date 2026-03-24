%%%%%%----------------- identification field -----------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsfc}

%%%%%%----------------- initial code -----------------


\RequirePackage{ifthen}  % \ifthenelse、\whiledo命令
\RequirePackage{datetime}  % 获取当前系统时间需要


\newcommand{\nsfctype}{QingNianC}
\newcommand{\nsfctitle}{}
\newcommand{\SetnsfctitleColor}{}
\newcounter{NSFCYear}

\newlength{\nsfctopmargin}
\newlength{\nsfcbottommargin}
\newlength{\nsfcleftmargin}
\newlength{\nsfcrightmargin}


% \setlength{\nsfctopmargin}{2.54cm}  % 默认用青基C的参数
% \setlength{\nsfcbottommargin}{2.54cm}
% \setlength{\nsfcleftmargin}{3.2cm}
% \setlength{\nsfcrightmargin}{3.2cm}


%% 用来判断该指定哪种公式字体
\newboolean{iscmmmath}% 用作需要设置latex本身默认的Computer Modern Math
\newboolean{istimesmath}% 用作需要设置公式符号全部为Times New Roman时
\newboolean{istimesmathnogreek}% 用作需要设置除希腊字母外的公式符号为Times New Roman时

\newcommand{\nsfcfigurename}{图}
\newcommand{\nsfctablename}{表}
\newcommand{\nsfcdefinitionname}{定义}
\newcommand{\nsfcaxiomname}{公理}
\newcommand{\nsfctheoremname}{定理}
\newcommand{\nsfcpropositionname}{命题}
\newcommand{\nsfccorollaryname}{推论}
\newcommand{\nsfclemmaname}{引理}
\newcommand{\nsfcassumptionname}{假设}
\newcommand{\nsfcexamplename}{示例}
\newcommand{\nsfcannotationname}{注}
\newcommand{\nsfcproofname}{证明}
\newcommand{\nsfcalgorithmname}{算法}
\newcommand{\nsfcinputname}{输入}
\newcommand{\nsfcoutputname}{输出}
\newcommand{\nsfccolon}{：}
\newcommand{\tablecontinuedtag}{（续）}
\newcommand{\nsfclofnumwidth}{1.4em}
\newcommand{\nsfclotnumwidth}{1.4em}
\newcommand{\nsfcenumerateouterlabel}{（\arabic*）}
\newcommand{\nsfcenumerateinnerlabel}{\arabic*）}
\newcommand{\nsfcenumerateouterlabelsep}{-0.2em}
\newcommand{\nsfcenumerateinnerlabelsep}{-0.2em}
\newcommand{\nsfcenumerateouterleftmargin}{4em}
\newcommand{\nsfcenumerateinnerleftmargin}{1.3em}
\newcommand{\nsfcenumerateitemindent}{-0.84em}
\newcommand{\nsfcenumerateouterleftmarginwithintheorem}{4em}
\newcommand{\nsfcenumerateouterlabelsepwithintheorem}{-0.2em}
\newcommand{\nsfcenumerateitemindentwithintheorem}{-2.55em}

\newcommand{\nsfcfigcapmargin}{4em}  % 控制图题左右侧缩进，本科2em，研究生4em
\newcommand{\subfigformat}{}

\newcommand{\nsfcheavyrulewidth}{1.5bp}  % 用于设置\toprule、\bottomrule默认线粗，本科0.5bp，研究生1.5bp
\newcommand{\nsfclightrulewidth}{0.75bp}  % 用于设置\midrule默认线粗，本科0.5bp，研究生0.75bp


\newcommand{\SetNSFCYear}{%
	\setcounter{NSFCYear}{1}%
	\ifthenelse{\the\month > 3 \or {\equal{\the\month}{3} \and \the\day > 20}}{%
		\addtocounter{NSFCYear}{\the\year}%
	}{%
		\setcounter{NSFCYear}{\the\year}%
	}%
}


%%%%%%----------------- declaration of options -----------------

\DeclareOption{QingNianA}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\textcolor{NSFCBlue}{\bfseries（请勿删除或改动下述提纲标题及括号中的文字）}\par}%
	}%
	\renewcommand{\nsfctype}{QingNianA}%
	\setlength{\nsfctopmargin}{2.54cm}%
	\setlength{\nsfcbottommargin}{2.54cm}%
	\setlength{\nsfcleftmargin}{3.17cm}%
	\setlength{\nsfcrightmargin}{3.17cm}%
}%

\DeclareOption{QingNianB}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\textcolor{NSFCBlue}{\bfseries（请勿删除或改动下述提纲标题及括号中的文字）}\par}%
	}%
	\renewcommand{\nsfctype}{QingNianB}%
	\setlength{\nsfctopmargin}{2.54cm}%
	\setlength{\nsfcbottommargin}{2.54cm}%
	\setlength{\nsfcleftmargin}{3.17cm}%
	\setlength{\nsfcrightmargin}{3.17cm}%
}%


\DeclareOption{QingNianC}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。申请书正文原则上不超过30页，鼓励简洁表达。\textcolor{NSFCBlue}{\bfseries 请勿删除或改动下述提纲标题及括号中的文字。}\par}%
	}%
	\renewcommand{\nsfctype}{QingNianC}%
	\setlength{\nsfctopmargin}{2.54cm}%
	\setlength{\nsfcbottommargin}{2.54cm}%
	\setlength{\nsfcleftmargin}{3.2cm}%
	\setlength{\nsfcrightmargin}{3.2cm}%
}%

\DeclareOption{MianShang}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。\bfseries\color{NSFCRed}申请书正文原则上不超过30页，鼓励简洁表达。\color{NSFCBlue}请勿删除或改动下述提纲标题及括号中的文字。\par}%
		\null\par% 后跟一行空行
	}%
	\renewcommand{\nsfctype}{MianShang}
	\setlength{\nsfctopmargin}{2.5cm}%
	\setlength{\nsfcbottommargin}{2.5cm}%
	\setlength{\nsfcleftmargin}{3cm}%
	\setlength{\nsfcrightmargin}{3cm}%
}%

\DeclareOption{ZhongDian}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。\bfseries\color{NSFCBlue}请勿删除或改动下述提纲标题及括号中的文字。\par}%
		\null\par% 后跟一行空行
	}%
	\renewcommand{\nsfctype}{ZhongDian}%
	\setlength{\nsfctopmargin}{3cm}%
	\setlength{\nsfcbottommargin}{2.5cm}%
	\setlength{\nsfcleftmargin}{3cm}%
	\setlength{\nsfcrightmargin}{3cm}%
}%

\DeclareOption{ZhongDa}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。\bfseries\color{NSFCBlue}请勿删除或改动下述提纲标题及括号中的文字。\par}%
	}%
	\renewcommand{\nsfctype}{ZhongDa}%
	\setlength{\nsfctopmargin}{2.54cm}%
	\setlength{\nsfcbottommargin}{2.54cm}%
	\setlength{\nsfcleftmargin}{3.2cm}%
	\setlength{\nsfcrightmargin}{3.2cm}%
}%

\DeclareOption{ZhongDaKeTi}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。\bfseries\color{NSFCBlue}请勿删除或改动下述提纲标题及括号中的文字。\par}%
	}%
	\renewcommand{\nsfctype}{ZhongDaKeTi}%
	\setlength{\nsfctopmargin}{2.54cm}%
	\setlength{\nsfcbottommargin}{2.54cm}%
	\setlength{\nsfcleftmargin}{3.2cm}%
	\setlength{\nsfcrightmargin}{3.2cm}%
}%

\DeclareOption{ZhongDaJiHua}{%
	\renewcommand{\nsfctitle}{%
		\SetNSFCYear%
		\chapter*{报告正文（\arabic{NSFCYear}版）}%
		\stepcounter{chapter}%
		{\ttfamily\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。\bfseries\color{NSFCBlue}请勿删除或改动下述提纲标题及括号中的文字。\par}%
	}%
	\renewcommand{\nsfctype}{ZhongDaJiHua}%
	\setlength{\nsfctopmargin}{2.54cm}%
	\setlength{\nsfcbottommargin}{2.54cm}%
	\setlength{\nsfcleftmargin}{3.2cm}%
	\setlength{\nsfcrightmargin}{3.2cm}%
}%


\DeclareOption{subfigsimple}{
	\renewcommand{\subfigformat}{simple}
}

\DeclareOption{subfigparens}{
	\renewcommand{\subfigformat}{parens}
}

\DeclareOption{cmmmath}{
	\setboolean{iscmmmath}{true}
	\setboolean{istimesmath}{false}
	\setboolean{istimesmathnogreek}{false}
}

\DeclareOption{timesmath}{
	\setboolean{iscmmmath}{false}
	\setboolean{istimesmath}{true}
	\setboolean{istimesmathnogreek}{true}
}

\DeclareOption{timesmathnogreek}{
	\setboolean{iscmmmath}{false}
	\setboolean{istimesmath}{false}
	\setboolean{istimesmathnogreek}{true}
}

\DeclareOption*{
	\ifthenelse{\equal{\CurrentOption}{boxruled}}
		{\PassOptionsToPackage{\CurrentOption}{algorithm2e}}
		{\ifthenelse{\equal{\CurrentOption}{vlined}}
			{\PassOptionsToPackage{\CurrentOption}{algorithm2e}}
			{\PassOptionsToClass{\CurrentOption}{book}}
		}
}

%%%%%%----------------- execution of options -----------------

\ExecuteOptions{QingNianC, subfigparens, cmmmath}
\ProcessOptions\relax

%%%%%%----------------- package loading -----------------

\PassOptionsToPackage{no-math}{fontspec}% 为了能修改公式字体为times new roman
\LoadClass[openany]{book}  % 基于标准book类，取消章节只从奇数页（openright）开始
\RequirePackage[UTF8]{ctex}  % ctex 包含 xeCJK 包含 fontspec
\RequirePackage{xeCJKfntef}  % 中文添加下划线需要
\RequirePackage{calc}
\RequirePackage{color}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}% 该宏包提供了更多预定义颜色，高亮代码块时比较方便
\RequirePackage{layouts}
\RequirePackage{zhnumber}  % 将计数器显示成中文
\RequirePackage{titlesec}  % 修改各级标题样式、目录等
% \RequirePackage{afterpage}
% 生成带编号的书签，并设置书签深度（bookmarksdepth不显示赋值则取tocdepth值），参考hyperref宏包文档
\RequirePackage[
	bookmarksnumbered=true,
	bookmarksdepth=3,
	citecolor=black,
	linkcolor=black,
	urlcolor=black,
]{hyperref}
\RequirePackage{graphicx}
\RequirePackage[font=small]{subfig}
\RequirePackage[numbers,sort&compress]{natbib}  % 排版参考文献和文献引用样式需要
\RequirePackage{amssymb, amsmath, amsthm}
\RequirePackage{caption}
\RequirePackage[algochapter, linesnumbered, ruled]{algorithm2e}
\RequirePackage{xunicode-addon}  % 脚注编号使用带圈数字需要
\RequirePackage{xpatch}
\RequirePackage{scrextend}  % 调整脚注的缩进设置
% 脚注序号每页重置
% https://wenku.csdn.net/answer/37441a87026a40a28ff235d24c15c879
\RequirePackage[perpage]{footmisc}
\RequirePackage{enumitem}  % 调整list的边距需要
\RequirePackage{array}
% https://blog.csdn.net/weixin_43971980/article/details/96514640
\RequirePackage[flushleft]{threeparttable}  % 排版带附注的表格需要，选项参考宏包文档
\RequirePackage{booktabs}  % 调整三线表线宽需要
\RequirePackage{longtable}  % 跨页表格需要
\RequirePackage{xparse}  % 定义带多个可选参数的命令或环境时需要
% \RequirePackage{centerlastline}  % 设计封面中的标题最后一行居中需要
\RequirePackage{multirow}  % 表格合并多行单元格需要
\RequirePackage{extarrows}  % 带文字的长等号与箭头需要
%%%%%%
% \let\Zbar\relax% 防止在下方载入newtxmath宏包时（与xunicode宏包冲突）报“Command `\Zbar' already defined.”，见：https://github.com/CTeX-org/ctex-kit/issues/454
% \RequirePackage{newtxmath}  % 调整数学公式字体为times需要，但似乎公式中的数字字体不变，而且z看起来不像times，遂弃用
%%%%%%
% \RequirePackage{unicode-math}  % 也可调整公式字体，但仅能使用特定的Unicode数学字体，https://mirrors.ustc.edu.cn/CTAN/info/lshort/chinese/lshort-zh-cn.pdf。效果看起来偏粗，times的希腊字母有点丑，手写体很夸张，双线体也有点怪，遂弃用

% mathspec宏包与ctex宏包和fontspec宏包有冲突，需要调整其加载fontspec的逻辑，https://tex.stackexchange.com/questions/713406/unknown-option-euzfmath-for-package-fontspec
\ExplSyntaxOn
\NewCommandCopy{\kernelRequirePackage}{\RequirePackage}
\RenewDocumentCommand{\RequirePackage}{O{}mo}{
	\str_if_eq:nnF{#2}{fontspec}{
		\IfNoValueTF{#3}{\kernelRequirePackage[#1]{#2}}{\kernelRequirePackage[#1]{#2}[#3]}
	}
}
\ExplSyntaxOff
\RequirePackage{mathspec}  % 设置公式字体为times new roman需要
\RenewCommandCopy{\RequirePackage}{\kernelRequirePackage}

\RequirePackage{xstring}  % 在字符串中搜索子串需要
\RequirePackage{listings}  % 代码块风格化排版需要
\RequirePackage{mhchem, chemfig}  % 排版化学方程式、结构式和键线式需要的两个宏包


% 利用hyperref宏包提供的\UrlBreaks宏，使url更好地换行，
% https://liam.page/2017/05/17/help-the-url-command-from-hyperref-to-break-at-line-wrapping-point/
\def\UrlAlphabet{% 记录26个英文字母的大小写
	\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
	\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
	\do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
	\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
	\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
	\do\Y\do\Z%
}
\def\UrlDigits{\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0}% 记录10个阿拉伯数字
\g@addto@macro{\UrlBreaks}{\UrlOrds}% \UrlOrds记录了一些特殊符号，如-和_
\g@addto@macro{\UrlBreaks}{\UrlAlphabet}
\g@addto@macro{\UrlBreaks}{\UrlDigits}


%%----------------- main code -----------------

\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\setlength{\topmargin}{\nsfctopmargin-1cm-1in}
\setlength{\oddsidemargin}{\nsfcleftmargin-1in}
\setlength{\evensidemargin}{\nsfcleftmargin-1in}
\setlength{\headheight}{9bp}
\setlength{\textwidth}{\paperwidth-\nsfcleftmargin-\nsfcrightmargin}
\setlength{\textheight}{\paperheight-\nsfctopmargin-\nsfcbottommargin}
\setlength{\headsep}{1cm-\headheight}
\setlength{\footskip}{1cm}
\setlength{\emergencystretch}{3em}

%% 清空页眉、页码
\pagestyle{empty}

\definecolor{NSFCBlue}{RGB}{0, 112, 192}
\definecolor{NSFCRed}{RGB}{255, 0, 0}



%%%%%% 设置各种字体，https://www.cnblogs.com/54fire/p/10409570.html
\setmainfont{times}[
	BoldFont=timesbd,
	ItalicFont=timesi,
	BoldItalicFont=timesbi,
	Path=font/
]  % 英文正文罗马字体
\setsansfont{SimKai}[
	AutoFakeBold=2,
	AutoFakeSlant=0.3,
	Path = ./font/,
]  % 英文正文无衬线字体
\setmonofont{SimKai}[
	AutoFakeBold=2,
	AutoFakeSlant=0.3,
	Scale = 0.99,  % 微调字体宽度
	Path = ./font/,
]  % 英文正文等宽字体
\setCJKmainfont{SimSun}[
	AutoFakeBold=3,
	AutoFakeSlant=0.3,
	Path = ./font/,
]   % 正文中文字体——宋体
\setCJKsansfont{SimKai}[
	AutoFakeBold=2,
	AutoFakeSlant=0.3,
	Path = ./font/,
]   % 正文中文无衬线字体——楷体
\setCJKmonofont{SimKai}[
	AutoFakeBold=2,
	AutoFakeSlant=0.3,
	Scale = 0.99,  % 微调字体宽度
	Path = ./font/,
]   % 正文中文等宽字体——楷体

%% 定义ctex包默认字体之外的其他字体：
% https://blog.csdn.net/ProgramChangesWorld/article/details/51429138
% https://latex.lierhua.top/zh/docs/%E5%AD%97%E4%BD%93%E6%97%8F/
\newCJKfontfamily\hwzs{HuaWenZhongSong}  % 为研究生封面添加需要的华文中宋字族
\setCJKfamilyfont{hwzs}{STZHONGS}[
	AutoFakeBold=2,
	AutoFakeSlant=0.3,
	Path = ./font/,
] % 设置华文行楷字族使用的字体文件和字形等属性

\newCJKfontfamily\hwxk{HuaWenXingKai}  % 为本科封面添加需要的华文行楷字族
\setCJKfamilyfont{hwxk}{STXINGKA}[
	AutoFakeBold=2,
	AutoFakeSlant=0.3,
	Path = ./font/,
] % 设置华文行楷字族使用的字体文件和字形等属性

% \newCJKfontfamily\kaiti{KaiTi}  % 为标题添加需要的楷体字族
% \setCJKfamilyfont{kaiti}{SimKai}[
% 	AutoFakeBold=2,
% 	AutoFakeSlant=0.3,
% 	Path = ./font/,
% ] % 设置楷体字族使用的字体文件和字形等属性


%%%%%% 判断是否设置公式字体为times new roman
%% 基于mathspec宏包
\ifthenelse{\boolean{iscmmmath}}%
	{}%
	{%
		\ifthenelse{\boolean{istimesmath}}%
			{%
				\setallmainfonts[
					BoldFont=timesbd,
					ItalicFont=timesi,
					BoldItalicFont=timesbi,
					Path=font/
				]{times}% 设置公式中的所有字体均为times new roman，包括希腊字母
			}%
			{%
				\setprimaryfont[
					BoldFont=timesbd,
					ItalicFont=timesi,
					BoldItalicFont=timesbi,
					Path=font/
				]{times}% 仅设置公式中的普通字母和数字为times new roman，希腊字母则保持默认字体，它们用times new roman着实不好看，参考mathspec宏包文档
			}%
		\setminwhitespace[3000]% 调整mathspec宏包提供的“"”插入的空格大小，用于解决部分数学字符间距离过小的问题，比如：$f^t$。参考mathspec宏包
		\let\oldboldsymbol\boldsymbol
		\renewcommand{\boldsymbol}[1]{\oldboldsymbol{\mathit{#1}}}% mathspec宏包未定义bold字系，只能重定义\boldsymbol命令，曲线救国
	}%

% %% 基于unicode-math宏包
% \setmathfont{XITS Math}

%%%%%
\xeCJKsetup{%
	CJKmath=true,  % 让公式中支持中文，https://zhuanlan.zhihu.com/p/636127392
	CJKecglue=\hskip 0.3em,  % 调整中文字符和西文数字间的橡胶长度
	PunctStyle = kaiming,  % 类似中文排版规范，压缩标点间距
}

% 根据nsfc类型，调整标点符号宽度
\ifthenelse{\equal{\nsfctype}{QingNianA}}{%
	\xeCJKsetwidth{、}{1.03em}
	\xeCJKsetwidth{（}{1.1em}
	\xeCJKsetwidth{）}{1em}
	\xeCJKsetwidth{；}{0.7em}
	\xeCJKsetwidth{，}{1em}
	\xeCJKsetwidth{。}{0.7em}
}{%
	\ifthenelse{\equal{\nsfctype}{QingNianB}}{%
		\xeCJKsetwidth{、}{1.03em}
		\xeCJKsetwidth{（}{1.1em}
		\xeCJKsetwidth{）}{1em}
		\xeCJKsetwidth{；}{0.7em}
		\xeCJKsetwidth{，}{1em}
		\xeCJKsetwidth{。}{0.7em}
	}{%
		\ifthenelse{\equal{\nsfctype}{QingNianC}}{%
			\xeCJKsetwidth{、}{1.03em}
			\xeCJKsetwidth{（}{1.1em}
			\xeCJKsetwidth{）}{1em}
			\xeCJKsetwidth{；}{0.7em}
			\xeCJKsetwidth{，}{1em}
			\xeCJKsetwidth{。}{0.7em}
		}{%
			\ifthenelse{\equal{\nsfctype}{MianShang}}{%
				\xeCJKsetwidth{、}{1.15em}
				\xeCJKsetwidth{（}{1.2em}
				\xeCJKsetwidth{）}{1em}
				\xeCJKsetwidth{；}{1.1em}
				\xeCJKsetwidth{，}{1.15em}
				\xeCJKsetwidth{。}{1.1em}
			}{%
				\ifthenelse{\equal{\nsfctype}{ZhongDian}}{%
					\xeCJKsetwidth{、}{1.1em}
					\xeCJKsetwidth{（}{1.2em}
					\xeCJKsetwidth{）}{1em}
					\xeCJKsetwidth{；}{1.1em}
					\xeCJKsetwidth{，}{1.15em}
					\xeCJKsetwidth{。}{1.1em}
				}{%
					\ifthenelse{\equal{\nsfctype}{ZhongDa}}{%
						\xeCJKsetwidth{、}{1.03em}
						\xeCJKsetwidth{（}{1.1em}
						\xeCJKsetwidth{）}{1em}
						\xeCJKsetwidth{；}{0.7em}
						\xeCJKsetwidth{，}{1em}
						\xeCJKsetwidth{。}{0.7em}
						\xeCJKsetwidth{：}{1em}
					}{%
						\ifthenelse{\equal{\nsfctype}{ZhongDaKeTi}}{%
							\xeCJKsetwidth{、}{1.03em}
							\xeCJKsetwidth{（}{1.1em}
							\xeCJKsetwidth{）}{1em}
							\xeCJKsetwidth{；}{0.7em}
							\xeCJKsetwidth{，}{1em}
							\xeCJKsetwidth{。}{0.7em}
						}{% 对应重大计划 ZhongDaJiHua
							\xeCJKsetwidth{、}{1.03em}
							\xeCJKsetwidth{（}{1.1em}
							\xeCJKsetwidth{）}{1em}
							\xeCJKsetwidth{；}{0.7em}
							\xeCJKsetwidth{，}{1em}
							\xeCJKsetwidth{。}{0.7em}
						}
					}
				}
			}
		}
	}
}


% \xeCJKsetwidth{、}{1.03em}
% \xeCJKsetwidth{（}{1.1em}
% \xeCJKsetwidth{）}{1em}
% \xeCJKsetwidth{；}{0.7em}
% \xeCJKsetwidth{，}{1em}
% \xeCJKsetwidth{。}{0.7em}

%% 调整公式段前段后，https://www.zhihu.com/question/379358826
\abovedisplayskip=8bp plus 1bp minus 1bp
\abovedisplayshortskip=4bp plus 1bp minus 1bp
\belowdisplayskip=8bp plus 1bp minus 1bp
\belowdisplayshortskip=8bp plus 1bp minus 2bp

% 下方命令允许跨页排版包含多个行间公式的公式组，可选参数可取值为1,2,3,4，越大表示跨页倾向越高
\allowdisplaybreaks[3]


\graphicspath{{./fig/}}

\hypersetup{colorlinks=true,linkcolor=black}
\setcitestyle{numbers,square}





%%%%%% 关于Latex字号和行距与Word字号和行距的对应关系：
% https://www.jianshu.com/p/3a833e484214
\renewcommand{\normalsize}{\zihao{-4}\setlength{\baselineskip}{22bp}\selectfont}
\renewcommand{\small}{\zihao{5}\setlength{\baselineskip}{15bp}\selectfont}



%%%%%% 修改各级标题样式，参见titlesec宏包官方文档
%%%%%% \titleformat{⟨command⟩}[⟨shape⟩]{⟨format⟩}{⟨label ⟩}{⟨sep⟩}{⟨before-code⟩}[⟨after-code⟩]
\titleformat{\chapter}[block]%
	{%
		\ttfamily\fillast\bfseries%
		\thispagestyle{empty}%
		\zihao{3}\setlength{\baselineskip}{22bp}\selectfont%
	}%
	{\thechapter}%
	{\wordsep}%
	{}%
\titleformat{\section}[block]%
	{%
		\ttfamily\bfseries\SetnsfctitleColor%
		\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\hspace*{2em}%
	}%
	{\thesection}%
	{0pt}%
	{}%
\titleformat{\subsection}[block]%
	{%
		\ttfamily\SetnsfctitleColor%
		\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\hspace*{2em}%
	}%
	{\thesubsection}%
	{0.5em}%
	{\bfseries}%
\titleformat{\subsubsection}[block]%
	{%
		\ttfamily%
		\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\hspace*{2em}%
	}%
	{\thesubsubsection}%
	{0.5em}%
	{\bfseries}%
\titleformat{\paragraph}[block]%
	{%
		\ttfamily%
		\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\hspace*{1.4em}%
	}%
	{\theparagraph}%
	{\wordsep}%
	{\bfseries}%

% 标准\chapter似乎会在标题上方默认添加一段垂直空间
\titlespacing{\chapter}{0bp}{-0.7\baselineskip}{0.4\baselineskip}
\titlespacing{\section}{0pt}{0bp}{0bp}
\titlespacing{\subsection}{0pt}{0bp}{0bp}
\titlespacing{\subsubsection}{0pt}{0bp}{0bp}
\titlespacing{\paragraph}{0pt}{0bp}{0bp}


\newcommand{\nsfcsection}[2]{%
	\renewcommand{\SetnsfctitleColor}{\color{NSFCBlue}}%
	\ifthenelse{\equal{#1}{}}{%
		\section[#2]{#1\textmd{#2}}%
	}{%
		\section[#1]{#1\textmd{#2}}%
	}%
	\renewcommand{\SetnsfctitleColor}{\color{black}}%
}

% \@ifstar命令比较特殊，必须按下列模式处理，命令实际参数的吸收要延后
\newcommand{\nsfcsubsection}{\@ifstar{\nsfcsubsectionStar}{\nsfcsubsectionNoStar}}%
\newcommand{\nsfcsubsectionStar}[2]{%
	\par\noindent%
	{%
		\ttfamily\color{NSFCBlue}%
		\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\hspace*{2em}\textbf{#1}#2%
		\par%
	}%
}
\newcommand{\nsfcsubsectionNoStar}[2]{%
	\par\noindent\stepcounter{subsection}%
	{%
		\ttfamily\color{NSFCBlue}%
		\zihao{4}\setlength{\baselineskip}{22bp}\selectfont%
		\ifthenelse{\equal{#1}{}}{%
			\pdfbookmark[2]{\thesubsection #2}{bookmarksubsection\thepage}%
		}{%
			\pdfbookmark[2]{\thesubsection #1}{bookmarksubsection\thepage}%
		}%
		\hspace*{2em}\thesubsection\hspace*{0.5em}\textbf{#1}#2%
		\par%
	}%
}%



%%%%%% 重定义各种编号的打印形式

\renewcommand{\thechapter}{\zhnum{chapter}~}%
\renewcommand{\thesection}{（\zhnum{section}）}
\renewcommand{\thesubsection}{\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}}
\renewcommand{\theparagraph}{（\arabic{paragraph}）}
\renewcommand{\thefigure}{\arabic{figure}}
\ifthenelse{\equal{\subfigformat}{simple}}%
	{}%
	{\renewcommand{\thesubfigure}{(\alph{subfigure})}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\theequation}{\arabic{equation}}
%% 新增一个子公式编号使用的计数器
\newcounter{subequation}
\counterwithin{subequation}{equation}  % 子公式计数器随equation计数器重置
\renewcommand{\thesubequation}{\alph{subequation}}
%% 定义创建子公式编号的命令，
\newcommand{\subeqtag}[1][]{%
	\stepcounter{subequation}%
	\tag{\theequation\thesubequation}%
	\ifthenelse{\equal{#1}{}}%
		{}%
		{\label{#1}}%
}

%%%%%% 调整浮动体与前后文本的间距，https://github.com/CTeX-org/forum/issues/86，需要与caption包配合
%%%%%% 官方文档，https://mirrors.bfsu.edu.cn/CTAN/macros/latex/contrib/caption/caption.pdf
%% https://www.latexstudio.net/archives/9786.html
\setlength{\floatsep}{9bp} % 相邻两个浮动体之间的垂直距离
\setlength{\intextsep}{9bp}  % h模式浮动体前后间距
\setlength{\textfloatsep}{15bp} % 页面中最后一个t模式的浮动体与文本的间距 或 页面中第一个b模式的浮动体与文本的间距。
\renewcommand{\figurename}{\nsfcfigurename}% 如此才能修改图目录里的图标签前缀
\captionsetup[figure]{%
	name={\nsfcfigurename},%
	labelsep=space,%
	font=small,%
	margin={\nsfcfigcapmargin, \nsfcfigcapmargin},%
	position=below,%
	aboveskip=6bp,%
	belowskip=0bp%
}

%%% 重定义figure环境，在每次排版图片时都在“图目录”中间文件（.lof）中更新当前页码的实际宽度，以使图目录中的前导线完全延伸到页码，即前导线尾端可能参差不齐
\renewenvironment{figure}[1][tbp]
	{%
		\@float{figure}[#1]%
		\addtocontents{lof}{\protect\cftsetpnumwidth{\widthof{\thepage}-1bp}}% 调整目录中的页码排版宽度，并写入.lof文件，参考tocloft宏包
	}%
	{\end@float}

\ifthenelse{\equal{\subfigformat}{simple}}
	{
		\captionsetup[subfloat]{%
			labelformat=parens,
			listofformat=subparens,
			captionskip=-3bp,  % 去掉子图编号和子图间的垂直空间，这里-3bp是因为将\small设置为了20bp行距，而五号字大小是10.5bp，规范对子图题编号行距的要求是单倍行距，需要略作补偿。参见subfig宏包
			farskip=4bp,  % 调整纵向子图与上方子图题的间距
		}
	}{
		\captionsetup[subfloat]{%
			labelformat=simple,  % 配合对\thesubfigure的重新定义，避免子图题显示为((a))
			listofformat=subsimple,  % 避免单独引用的子图编号显示为((a))，参考subfig宏包
			captionskip=-3bp,  % 去掉子图编号和子图间的垂直空间，这里-3bp是因为将\small设置为了20bp行距，而五号字大小是10.5bp，规范对子图题编号行距的要求是单倍行距，需要略作补偿。参见subfig宏包
			farskip=4bp,  % 调整纵向子图与上方子图题的间距
		}
	}

\robustify{\subref}  % 让\subref更易用：https://tex.stackexchange.com/questions/228973/argument-of-captionydblarg-has-an-extra

\renewcommand{\tablename}{\nsfctablename}% 如此才能修改表目录和longtable里的表标签前缀
\captionsetup[table]{
	name={\nsfctablename},
	labelsep=space,
	font=small,
	margin={4em, 4em},
	position=above,
	aboveskip=4bp,
	belowskip=10bp,
}
% 调整三线表线粗：https://tex.stackexchange.com/questions/156122
\setlength\heavyrulewidth{\nsfcheavyrulewidth}  % 调整\toprule和\bottomrule的默认线粗，本科0.5bp，研究生1.5bp
\setlength\lightrulewidth{\nsfclightrulewidth} % 调整\midrule默认线粗，本科0.5bp，研究生0.75bp

% 调整表格中间线条线粗：https://tex.stackexchange.com/questions/679523
\setlength\cmidrulewidth{\nsfclightrulewidth}  % 调整\cmidrule[line height](trim){a-b}的默认线粗，参见booktabs宏包文档。本科0.5bp，研究生0.75bp
\setlength\aboverulesep{0bp}  % 调整\cmidrule生成框线的上垂直间隔
\setlength\belowrulesep{0bp}  % 调整\cmidrule生成框线的下垂直间隔

% 表中文字垂直居中且水平居中的方法，https://blog.csdn.net/happy_demo/article/details/105430091

%%% 重定义table环境，使表格整体默认在页面中居中，并设置其内容的字体大小和行距；同时在每次排版表格时都在“表目录”中间文件（.lot）中更新当前页码的实际宽度，以使表目录中的前导线完全延伸到页码，即前导线尾端可能参差不齐
\renewenvironment{table}[1][tp]%
	{%
		\@float{table}[#1]%
		\IfSubStr{#1}{b}% 判断字符串中是否有指定子串，来自xstring宏包
	 		{\vspace*{-6bp}}% b模式排版的table上间距很大，微调一点
	 		{}%
		\centering%
		\zihao{5}\setlength\baselineskip{10.5bp}\selectfont%
		% \addtocontents{lot}{\protect\cftsetpnumwidth{\widthof{\thepage}-1bp}}%
	}%
	{\end@float}%

% 在\longtable的定义中插入一行命令，以调整跨页长表格内容的字体及行距。参考自longtable宏包
\newcommand{\longtableprop}{%
	\zihao{5}\setlength\baselineskip{10.5bp}\selectfont%
	\addtocontents{lot}{\protect\cftsetpnumwidth{\widthof{\thepage}}}% 调整目录中的页码排版宽度，并写入.lot文件，参考tocloft宏包
	%	\renewcommand{\arraystretch}{1.1}%
}

\def\longtable{%
	\par
	\if@noskipsec\mbox{}\par\fi
	\@nobreakfalse
	\ifx\multicols\@undefined
	\else
		\ifnum\col@number>\@ne
			\@twocolumntrue
		\fi
	\fi
	\if@twocolumn
		\LT@err{longtable not in 1-column mode}\@ehc
	\fi
	\begingroup
	\longtableprop % 这里调整字体大小和行距
	%	\setlength{\tabcolsep}{6pt}  % 调整列间隔
	\@ifnextchar[\LT@array{\LT@array[x]}%
}

\setlength{\LTpre}{12bp}  % 表前间隔
\setlength{\LTpost}{6bp}  % 表后间隔
\setlength{\LTcapwidth}{\textwidth-9.5em}  % 表题宽度，这个参数跟table不太一样，现在设定的值在观感上相对正文字体大小是左右各缩进了4em。有可能是因为longtable的五号字体在设置该参数时已经生效。


\newlength{\CPcapwidth}  % 记录长表格跨页表题的宽度
\newcommand{\CPcaptext}{} % 记录跨页表题完整文本
\newcommand{\CPcaption}[2]{%
	\multicolumn{#1}{c}{%
		\small%
		\renewcommand{\CPcaptext}{\tablename\ \thetable\ #2\tablecontinuedtag}
		\settowidth{\CPcapwidth}{\CPcaptext}% 先记录当前跨页表题的排版长度
		\ifthenelse{\LTcapwidth > \CPcapwidth}% 比较规范要求的表题宽度和表题实际宽度，再做决断，https://runebook.dev/cn/docs/latex/_005csettowidth
			{\makebox[0.5em][c]{\vspace{7bp}\CPcaptext}}% 外层套极窄的\makebox以应对跨页表宽低于表题长度的情况
			{\makebox[0.5em][c]{\hspace*{-5.5bp}\parbox[b]{\LTcapwidth}{\small\vspace{7bp}\CPcaptext}}}%
		\vspace{4bp}%
	}%
}%


%%%%%% 处理带附注长表格
\newcounter{tablenote}  % 表格附注编号
\counterwithin{tablenote}{table}  % 表格附注编号随表格编号重置
\renewcommand{\thetablenote}{\arabic{tablenote}}

%% 处理附注内容
\NewDocumentCommand{\tablenotetext}{D(){} D(){1em} O{0bp} m m m}{%
	\refstepcounter{tablenote}\label{#5}%
	\vspace*{#3}%
	\ifthenelse{\equal{#1}{online}}%
		{%
			\raggedright%
			\makebox[\linewidth][l]{%
				\hspace*{-\tabcolsep}%
				\rlap{\makebox[#2][l]{\thetablenote}\parbox[t]{#4-#2}{#6}}%
			}%
		}%
		{%
			\raggedright%
			\makebox[\linewidth][l]{%
				\hspace*{-\tabcolsep}%
				\rlap{\parbox[t]{#4}{\textsuperscript{\thetablenote\,}#6}}%
			}%
		}%
}%

%% 在表格中引用附注
\newcommand{\tablenoteref}[1]{%
	\textsuperscript{\makebox[1bp][l]{\ref{#1}}}%
}%

% 用于为threeparttable排版的附注添加交叉引用功能
\newcommand{\puttablenotelabel}[1]{%
	\refstepcounter{tablenote}\label{#1}%
	\thetablenote%
}%



%%%%%% 若要调整图、表计数器和其他计数器的关联关系，使用：
%%%%%% https://blog.csdn.net/xovee/article/details/123524530
% \counterwithin{<ctr>}{<within>}
% \counterwithout{<ctr>}{<without>}






\setcounter{secnumdepth}{5}

\setcounter{tocdepth}{3}  % 设定目录的显示深度，到2级（chapter是0级）


%%%%%% 参考文献相关设置
\renewcommand{\bibname}{\nsfcreferencename}
\renewcommand{\bibfont}{%
	\zihao{-4}\setlength{\baselineskip}{18bp}\selectfont%
	% 禁止参考文献条目跨页：
	% https://tex.stackexchange.com/questions/43260/biblatex-no-pagebreak-in-bibliography-entry
	\interlinepenalty=10000%
}
\setlength{\bibsep}{0bp \@plus 2bp \@minus 1bp}  % 调整参考文献条目间距，设置橡胶长度以减少条目强制不跨页导致的页尾空白
\renewcommand\@biblabel[1]{[#1]\hfill}  % 调整参考文献编号为左对齐，https://tex.stackexchange.com/questions/102680
\renewcommand\bibsection{%
	\subsection*{\hspace*{-2em}参考文献}%
	\pdfbookmark[2]{参考文献}{bookmarksubsection\thepage}%
}%参考文献标题格式

%% 设置参考文献排版样式
\bibliographystyle{nsfc}



% 定义、定理、命题、引理、推论，https://ask.latexstudio.net/index.php/ask/article/647.html
\newtheoremstyle{nsfc} % <风格名>
	{0pt} % <上方间距> 若留空，则使用默认值
	{0pt} % <下方间距> 若留空，则使用默认值
	{%
		\setlist[enumerate,1]{% theorem会影响一级enumerate的缩进，需要重新设置
			leftmargin=\nsfcenumerateouterleftmarginwithintheorem,
			labelsep=\nsfcenumerateouterlabelsepwithintheorem,
			label=\nsfcenumerateouterlabel,
			align=left,
			itemindent=\nsfcenumerateitemindentwithintheorem,
		}%
	} % <主体字体> 如 \itshape
	{\parindent} % <缩进长度> 若留空，则无缩进；可以使用 \parindent 进行正常段落缩进
	{\ttfamily\bfseries\zihao{-4}\setlength{\baselineskip}{22bp}\selectfont} % <定理头字体> 如 \bfseries
	{} % <定理头后的标点符号> 如点号、冒号
	{ } % <定理头后的间距> 不可留空，若设置为 { }，则表示正常词间间距；若设置为 {\newline}，则环境内容开启新行
	{\thmname{#1}\thmnumber{#2}\thmnote{（#3）}} % <定理头格式指定> 一般留空。这里修改中文论文的定理名分隔符为中文括号，默认是英文括号，https://ask.latexstudio.net/index.php/ask/question/17399.html

% 选择设计的列表样式
\theoremstyle{nsfc}


\newtheorem{definition}{\nsfcdefinitionname}
\newtheorem{axiom}{\nsfcaxiomname}
\newtheorem{theorem}{\nsfctheoremname}
\newtheorem{proposition}{\nsfcpropositionname}
\newtheorem{corollary}{\nsfccorollaryname}
\newtheorem{lemma}{\nsfclemmaname}
\newtheorem{example}{\nsfcexamplename}
\newtheorem{assumption}{\nsfcassumptionname}
\newtheorem{annotation}{\nsfcannotationname}
% 让这些环境随章节重置编号
\counterwithin{definition}{chapter}
\counterwithin{axiom}{chapter}
\counterwithin{theorem}{chapter}
\counterwithin{proposition}{chapter}
\counterwithin{corollary}{chapter}
\counterwithin{lemma}{chapter}
\counterwithin{example}{chapter}
\counterwithin{assumption}{chapter}
\counterwithin{annotation}{chapter}

%\renewenvironment{proof}{{\sffamily 证明：}}{\hfill $\blacksquare$\par}  % https://blog.csdn.net/robert_chen1988/article/details/61204853
\renewenvironment{proof}[1][\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep0\p@\@plus0\p@\relax
	\trivlist
	\item[\hskip\labelsep%
	\ttfamily\upshape%
	\hspace*{\parindent}%
	\textbf{#1\@addpunct{\nsfccolon}}]\ignorespaces%
	\setlist[enumerate,1]{% theorem会影响一级enumerate的缩进，需要重新设置
		leftmargin=\nsfcenumerateouterleftmarginwithintheorem,
		labelsep=\nsfcenumerateouterlabelsepwithintheorem,
		label=\nsfcenumerateouterlabel,
		align=left,
		itemindent=\nsfcenumerateitemindentwithintheorem,
	}
}{
	\popQED\endtrivlist\@endpefalse
}  % https://ask.latexstudio.net/index.php/ask/article/647.html
\renewcommand{\proofname}{\nsfcproofname}
%\renewcommand{\proofname}{\sffamily\upshape \hspace*{\parindent}证明：\hspace*{-0.45em}\nopunct}  % https://zhuanlan.zhihu.com/p/680966530
\renewcommand{\thedefinition}{\arabic{definition}}
\renewcommand{\theaxiom}{\arabic{axiom}}
\renewcommand{\thetheorem}{\arabic{theorem}}
\renewcommand{\theproposition}{\arabic{proposition}}
\renewcommand{\thecorollary}{\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{lemma}}
\renewcommand{\theexample}{\arabic{example}}
\renewcommand{\theassumption}{\arabic{assumption}}
\renewcommand{\theannotation}{\arabic{annotation}}
\renewcommand{\qedsymbol}{$\blacksquare$}


%%%%%%% 修改伪代码相关设置
\renewcommand{\algorithmcfname}{\nsfcalgorithmname}  % 修改伪代码标题标签， https://blog.csdn.net/zhenaoxi1077/article/details/90449433
\renewcommand{\thealgocf}{\arabic{algocf}}  % 修改伪代码编号样式， https://tex.stackexchange.com/questions/62240
\SetAlgoHangIndent{0bp}  % 去掉伪码段首的首行悬挂缩进，https://tex.stackexchange.com/questions/581839

%% 调整algorithm环境和前后文本的垂直距离
\newskip\algskipamount
\algskipamount = 2bp \@plus 1bp \@minus 1bp
\def\algskip{\vskip\algskipamount}  % 定义垂直距离宏，来自ChatGPT
\SetAlgoSkip{algskip}  % 参考algorithm2e宏包的官方文档

%% 调整伪码中的线粗，https://tex.stackexchange.com/questions/45272
\setlength{\algoheightrule}{\nsfcheavyrulewidth} % 伪码顶部和底部的线粗
\setlength{\algotitleheightrule}{\nsfclightrulewidth} % 伪码标题下的线粗

%% 调整algorithm环境的标题标签、标题文本和内容文本的字体和行距
%% 参考algorithm2e宏包的官方文档
\SetAlCapFnt{\zihao{5}\setlength\baselineskip{10.5bp}\selectfont}
\SetAlCapNameFnt{\zihao{5}\setlength\baselineskip{10.5bp}\selectfont}
\SetAlFnt{\zihao{5}\setlength\baselineskip{13bp}\selectfont}
\SetAlCapHSkip{0.5em}  % 伪代码标题离左框线的距离
\SetCommentSty{textbf}  % 设置伪码中注释文本的排版样式，可选：textbf、textsf、texttt（默认）、emph、text、textit等
\setlength{\algomargin}{1.5em}  % 伪代码文本离左框线的距离

\SetKwInOut{Input}{\nsfcinputname}
\SetKwInOut{Output}{\nsfcoutputname}
\SetKwRepeat{DoWhile}{do}{while}  % \DoWhile{条件}{循环体}
\SetKwBlock{Loop}{loop}{end}  %  \Loop{循环体}，https://tex.stackexchange.com/questions/264256

%% 重新封装算法环境，使之宽度可调，基于xparse宏包实现多个可选参数：https://tex.stackexchange.com/questions/11349
\NewDocumentEnvironment{algo}{O{htbp} D(){4em}}{
	\begin{figure}[#1]
		\centering
		\begin{minipage}{\linewidth-#2}
			\begin{algorithm}[H]
	}{
			\end{algorithm}
		\end{minipage}
	\end{figure}
}


%%%%%% 脚注
% 定义新脚注字体大小，并更新默认脚注大小：
% https://tex.stackexchange.com/questions/249415/set-font-size-for-footnotes
\newcommand\nsfcfootnotesize{%
	\@setfontsize\nsfcfootnotesize\@ixpt{9}%
	\abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
	\abovedisplayshortskip \z@ \@plus\p@
	\belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
	\def\@listi{\leftmargin\leftmargini
		\topsep 4\p@ \@plus2\p@ \@minus2\p@
		\parsep 2\p@ \@plus\p@ \@minus\p@
		\itemsep \parsep}%
	\belowdisplayskip \abovedisplayskip
}
\renewcommand{\footnotesize}{\nsfcfootnotesize}

% 调整脚注序号为带圈数字，https://stone-zeng.site/2019-02-09-circled-numbers，https://zhuanlan.zhihu.com/p/74515148
\AtBeginUTFCommand[\textcircled]{\begingroup\EnclosedNumbers}% 放置钩子，只让带圈字符更换字体
\AtEndUTFCommand[\textcircled]{\endgroup}
\xeCJKDeclareCharClass{Default}{"24EA, "2460->"2473, "3251->"32BF}
\newfontfamily\EnclosedNumbers[Path=./font/,]{Source Han Serif SC}
\renewcommand\thefootnote{\textcircled{\@arabic\c@footnote}}
% 保持正文中脚注序号为上标，脚注部分的编号为非上标
\xpatchcmd\@makefntext
	{{\hss\@makefnmark}}
	{{\hss\@makefnmark@nosuperscript}\space}
	{}{\fail}
\def\@makefnmark@nosuperscript{\hbox{\normalfont\@thefnmark}}
% 调整分割线长度
\xpatchcmd\footnoterule
	{.4\columnwidth}
	{12em}
	{}{\fail}

% 设置脚注文本的缩进，https://www.latexstudio.net/archives/321.html
\deffootnote{1.5em}{0em}{\makebox[1.5em][l]{\thefootnotemark}}



%%%%%% 调整list的边距和编号样式，参考enumitem宏包文档，
% https://tex.stackexchange.com/questions/170525/itemize-left-margin
% https://blog.csdn.net/beifangyu/article/details/116452301
\setlist{
	itemsep=0bp,
	partopsep=0bp,
	parsep=0bp,
	topsep=0bp,
}
\setlist[itemize,1]{
	leftmargin=3em,
	label=$\bullet$,
}
\setlist[itemize,2]{
	leftmargin=1em,
	label=$\circ$,
}
\setlist[enumerate,1]{
	leftmargin=\nsfcenumerateouterleftmargin,
	labelsep=\nsfcenumerateouterlabelsep,
	label=\nsfcenumerateouterlabel,
	align=left,
	itemindent=\nsfcenumerateitemindent,
}
\setlist[enumerate,2]{
	leftmargin=\nsfcenumerateinnerleftmargin,
	labelsep=\nsfcenumerateinnerlabelsep,
	label=\nsfcenumerateinnerlabel,
}
\setlist[description,1]{
	leftmargin=5em,% 列表整体左边缘相对于上下文左边距的距离
	labelsep=0.2em,
	itemindent=-2.8em,% 列表项第一行（通常包含标签）相对于 leftmargin 的额外缩进
}
\setlist[description,2]{
	leftmargin=3.8em,
	labelsep=0.2em,
}




%%%%%% 定义上标引用命令
\newcommand{\citess}[1]{\textsuperscript{\cite{#1}}}

%% 修改\url{URL}命令的排版字体风格，https://tex.stackexchange.com/questions/261434
\urlstyle{rm}

\raggedbottom