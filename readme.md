<h1 align="center"> 一体式国自然申报书聚合模版 </h1>
<div align="center">
  <a href="https://www.latex-project.org/lppl/">
    <img src="https://img.shields.io/badge/license-LPPL-blue?style=for-the-badge&logo=latex&label=License&logoColor=white&color=008080" alt="License">
  </a>
  <a href="https://github.com/MGG1996/NSFC/stargazers">
    <img src="https://img.shields.io/github/stars/MGG1996/NSFC?style=for-the-badge&logo=gleam&label=Stars&logoColor=white&color=22c55e" alt="GitHub stars">
  </a>
  <a href="https://github.com/MGG1996/NSFC/forks">
    <img src="https://img.shields.io/github/forks/MGG1996/NSFC?style=for-the-badge&logo=git&logoColor=white&label=Forks&color=995DFF" alt="GitHub forks">
  </a>
  <a href="https://github.com/MGG1996/NSFC/issues">
    <img src="https://img.shields.io/github/issues/MGG1996/NSFC?style=for-the-badge&logo=openbugbounty&label=Issues&logoColor=white&color=D9B125" alt="Issues">
  </a>
</div>
<div align="center">
  <a href="https://github.com/MGG1996/NSFC/releases">
    <img src="https://img.shields.io/github/downloads/MGG1996/NSFC/total?style=for-the-badge&logo=transmission&label=Downloads&logoColor=white&color=E05D44" alt="Downloads">
  </a>
  <a href="https://github.com/MGG1996/NSFC/releases/latest">
    <img src="https://img.shields.io/github/v/release/MGG1996/NSFC?style=for-the-badge&logo=github&label=Release&logoColor=white&color=1a67af" alt="GitHub latest release">
  </a>
</div>


- [1. 前言](#1-前言)
  - [1.1 适用对象](#11-适用对象)
  - [1.2 使用环境](#12-使用环境)
  - [1.3 模板完成度](#13-模板完成度)
  - [1.4 模板的更新方法](#14-模板的更新方法)
  - [1.5 开发该模板的原因](#15-开发该模板的原因)
  - [1.6 免责声明](#16-免责声明)
- [2. 导言区](#2-导言区)
- [3. 模版主体内容](#3-模版主体内容)
  - [3.1 各级标题](#31-各级标题)
  - [3.2 图片](#32-图片)
  - [3.3 表格](#33-表格)
    - [3.3.1 普通表格](#331-普通表格)
    - [3.3.2 带附注表格](#332-带附注表格)
    - [3.3.3 跨页表格](#333-跨页表格)
    - [3.3.4 跨页带附注表格](#334-跨页带附注表格)
  - [3.4 伪代码](#34-伪代码)
  - [3.5 定义，公理，定理，命题，推论，引理，示例，假设，注和证明](#35-定义公理定理命题推论引理示例假设注和证明)
  - [3.6 脚注](#36-脚注)
  - [3.7 模板中的各种编号](#37-模板中的各种编号)
  - [3.8 排版及微调数学公式](#38-排版及微调数学公式)
  - [3.9 在标题中排版数学符号](#39-在标题中排版数学符号)
  - [3.10 排版化学方程式](#310-排版化学方程式)
  - [3.11 引用](#311-引用)
- [4. 参考文献](#4-参考文献)



## 1. 前言

### 1.1 适用对象

本模板参照自然科学基金委提供的官方Word模版编写，适用于`青年基金A`、`青年基金B`、`青年基金C`、`面上项目`、`重点项目`、`重大项目`、`重大项目课题`和`重大研究计划`。

使用本模板需要掌握基本的LaTeX排版操作，本文档不会阐述如何使用常见的LaTeX命令和环境。如果你是纯新手，那可以先看看[一份（不太）简短的LaTeX2ε介绍](https://ctan.math.utah.edu/ctan/tex-archive/info/lshort/chinese/lshort-zh-cn.pdf)，它足以帮助你建立起基本概念，进而顺利使用本模板。

### 1.2 使用环境

本模板的开发测试环境是`TeXLive2026 + VSCode`，**兼容Windows、MacOS以及Overleaf等主流平台** :clap:。

:warning: 本地用户最好将LaTeX环境更新到[TeXLive2026及以上](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/)或[MacTeX2026及以上](https://mirrors.tuna.tsinghua.edu.cn/tex-historic-archive/systems/mactex/2026/)（至少不低于[TeXLive2024](https://mirrors.tuna.tsinghua.edu.cn/tex-historic-archive/systems/texlive/)或[MacTeX2024](https://mirrors.tuna.tsinghua.edu.cn/tex-historic-archive/systems/mactex/)），以避免兼容性问题。

* [:link: TeXLive安装教程](https://zhuanlan.zhihu.com/p/389394015)、[:link: MacTeX安装教程](https://blog.csdn.net/ChrisP_333/article/details/82943508)
* [:link: VSCode下载地址](https://code.visualstudio.com/Download)、[:link: VSCode配置LaTeX环境](https://zhuanlan.zhihu.com/p/166523064)、[:link: TeXstudio下载地址](https://texstudio.sourceforge.net/#download)

:warning: 模板需要使用`XeLaTeX`引擎进行编译：

* 若使用TeXstudio编辑器，则不需要进行额外设置：`tutorial.tex`文件在首行设置了`% !TEX Program = xelatex`，该指令指定使用`XeLaTeX`引擎编译该文档；
* VSCode编辑器和Overleaf需要自行将编译引擎设置为`XeLaTeX`。

为了确保在Windows、MacOS、Overleaf等平台上编译出完全一致的结果，模板内置了所有用到的字体文件，项目大小可能超出Overleaf上传压缩包的限制。若遇到这种情况， :bulb: **先在Overleaf上新建一个空项目，然后解压本模板并拖拽文件和文件夹到新建的项目中即可**。 :exclamation: **<font color=#8b0000>注意在网站里切换到 TeXLive2026</font>**。

### 1.3 模板完成度

模板已经提供了撰写申报书可能用到的绝大部分功能，但有两点暂无计划 :sweat_smile:：

:anger: 不支持在图题之下排版图片附注。主要是未找到能实现该操作的LaTeX宏包，且本人能力有限，缺少实现该功能的思路。 :bulb: 替代方案是使用脚注，即通过`\footnotemark`和`\footnotetext`相互配合，细节参见[LaTeX脚注@Xovee](https://blog.csdn.net/xovee/article/details/127563209 "\footnotemark、\footnotetext配合使用")。或者，干脆避免在图中使用附注，改为在文中解释。

:anger: 不支持跨页排版伪代码。本模板排版伪代码使用的宏包是[algorithm2e](https://mirrors.sustech.edu.cn/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf)，它无法跨页排版伪码。 :bulb: 通常来说，伪码跨页会增加阅读难度。反之，根据算法逻辑将之拆分成数个子算法或子过程，分别进行排版，最后再汇总，这可能是更合适的做法。

此外，不排除模板存在一些细节上的疏漏，各位在使用中若发现或遇到问题，欢迎来 :bug: [项目Issue页](https://github.com/MGG1996/NSFC/issues):bug: 进行反馈。若确为模板问题，我会在闲暇时尽量修复并进行更新。 :sparkles: 在此之前，请常来 :gift: [项目发布页](https://github.com/MGG1996/NSFC) :gift: 看看，确保自己使用的是最新版本 :satisfied:。

### 1.4 模板的更新方法

:bulb: 更新模板的正确方式：**下载最新的完整压缩包，解压后用自己的`.bib`和`.tex`文件以及`fig`目录替换掉模板中原有的同名文件和目录**。

:+1: 更建议的更新方式：**<font color=#8b0000>在初次使用本模板时，修改`.tex`和`.bib`文件的文件名（别忘了`.tex`文件内通过`\bibliography{}`设置的`.bib`文件名），后续只需下载最新的模板，并将其内容全部复制到你的目录进行替换</font>**。

### 1.5 开发该模板的原因

本模版希望提供一个**All-in-One**的基金撰写工具，只需要简单更改选项，就可在不同基金类型间随意切换，以提供清爽的申报书撰写体验。

同时，本模板希望提供 :sparkles: **更完备的内容排版能力** :sparkles: 、提供 :sparkles: **更丰富的人性化功能** :sparkles: 。<font color=#8b0000>想内容已经够头疼了，工具当然越贴心越好</font> :blush: :blush:：

1. 支持半自动生成形如`(1-1a)`的递增子公式编号。详见示例文档中的说明。

2. 强大的表格排版能力，支持排版“跨页带附注表格”。

3. 支持调整伪代码环境的左右侧缩进。

4. 基于LaTeX风格编写`.cls`文件，易于修改和定制。


### 1.6 免责声明

:warning: 基金委随时都可能调整Word模版中的预设内容。稳妥起见，模版使用者务必仔细核对，必要时可自行更正预设内容。

:warning: `tutorial.tex`文件中用于举例的各图片均来自于网络，如有侵权，请图片作者联系我进行删除。

:warning: 另外，为了全平台的通用性，模板内置了一些必要的字体。虽然Windows系统本就安装了某些字体，但实际上它们并不可商用，模版使用者需要注意。


## 2. 导言区

模板的导言区只有两行：
1. `% !TEX Program = xelatex`在TeXstudio编辑器中表示指定使用`XeLaTeX`引擎编译该文档，对其他编辑器，需要手动设置编译引擎。

2. `\documentclass[<选项列表>]{nsfc}`表示加载名为`nsfc`的文档类，该文档类基于LaTeX的`book`类编写。此文档类可设置**四种**选项：
   
   1. `QingNianA` / `QingNianB` / `QingNianC` / `MianShang` / `ZhongDian` / `ZhongDa` / `ZhongDaKeTi` / `ZhongDaJiHua`：该选项设置基金类型，将控制页边距、正文开头的总标题等，默认为`QingNianC`。此类选项与基金的对应关系如下：
      
      |选项|对应基金类型|选项|对应基金类型|
      |---|---|---|---|
      |`QingNianA`|青年A|`ZhongDian`|重点项目|
      |`QingNianB`|青年B|`ZhongDa`|重大项目|
      |`QingNianC`|青年C|`ZhongDaKeTi`|重大课题|
      |`MianShang`|面上项目|`ZhongDaJiHua`|重大研究计划|
   
   2. `subfigsimple`/`subfigparens`：该选项用于调整正文中对子图标签进行引用生成的编号样式，`subfigsimple`对应样式为`1-1a`，`subfigparens`对应样式为`1-1(a)`，默认为`subfigparens`。
   
   3. `cmmmath`/`timesmathnogreek`/`timesmath`：该选项用于选择渲染公式使用的字体。其中，`cmmmath`即对应LaTeX默认使用的Computer Modern Math，也是此类选项的默认值；`timesmathnogreek`指定使用Times New Roman来渲染公式中的英文字母和数字，但不影响希腊字母、手写体和双线体；`timesmath`则继续将希腊字母也设置成Times New Roman（个人觉得希腊字符用这个字体有些违和），手写体和双线体仍保持原样。
     
      :exclamation: 需要注意，Times New Roman字体原不支持在公式中排版粗斜体，所以后两种选项将使`\boldsymbol{}`命令失效。为了解决该问题，模板（仅在后两种选项下）对这条命令进行了粗糙的重定义，使之能像原版那样生成粗斜体符号。重定义后的`\boldsymbol{}`命令需要遵循一条额外的使用规则：**其输入参数必须是最原始的数学符号**。比如要排版`\boldsymbol{\hat{\alpha}}`（这在`cmmmath`下没有问题），正确的源码应该是`\hat{\boldsymbol{\alpha}}`，**即将`\boldsymbol{}`置于嵌套的最内层**。否则，模板轻则无法渲染出预期的数学符号（在`timesmath`选项下），重则直接报`! Internal error: bad native font flag in 'map_char_to_glyph'`错误（在`timesmathnogreek`选项下）。
     
      :exclamation: 因为[mathspec](https://mirrors.pku.edu.cn/ctan/macros/xetex/latex/mathspec/mathspec.pdf)宏包的特性，使用Times New Roman做公式字体需要付出更多精力。例如，若直接排版`$f^t$`，那么`f`和`t`之间的间隔很小，将出现重叠。此时需要手动用`"`插入空格，即`$f^{"t}$`。`timesmathnogreek`和`timesmath`选项均存在类似瑕疵，届时请仔细查阅[mathspec](https://mirrors.pku.edu.cn/ctan/macros/xetex/latex/mathspec/mathspec.pdf)的宏包文档。

   4. 另外，[algorithm2e](https://mirrors.sustech.edu.cn/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf)宏包的`vlined`和`boxruled`选项也可以在加载文档类时设置。


## 3. 模版主体内容


### 3.1 各级标题

本模板基于`book`类，正文开头的总标题使用`\nsfctitle`生成，其内容根据设置的基金类型选项自动确定。创建模板原有的两级`蓝色标题`分别用`\nsfcsection{<加粗部分>}{<非加粗部分>}`、`\nsfcsubsection{<加粗部分>}{<非加粗部分>}`，编号会自动生成；若无需编号，则用对应命令的带`*`版本。

创建你自己的各级标题则仍使用`\subsection{<1.型标题>}`、`\subsubsection{<1.1型标题>}`、`\paragraph{<（1）型标题>}`。

### 3.2 图片

本模板使用[graphicx](https://mirror.nyist.edu.cn/CTAN/macros/latex/required/graphics/grfguide.pdf)和[subfig](https://mirrors.bfsu.edu.cn/CTAN/macros/latex/contrib/subfig/subfig.pdf)宏包来处理插入的图片及子图。细节请参考`tutorial.tex`中的源码。

需要将待排版图片文件放入项目目录`./fig/`中。

### 3.3 表格

**写在最开始**：由于一些实现上的问题，对于**确定非置底排版**的任何表格，用户在通过`table`环境的选项指定可选择的排版模式时， :warning: **<font color=#8b0000>不可提供`b`模式</font>**，否则表格的上间距将过窄；反之，对于一页内**确定置底排版**的第一个表格，用户需要 :warning: **<font color=#8b0000>显式在选项中指定`b`或`!b`</font>**，否则表格上间距将过宽。

若出现意料之外的情况，用户可以通过在`table`环境开始后和结束前的位置插入`\vspace*{<距离长度>}`来调整其上下间距，使之看起来协调。

#### 3.3.1 普通表格

排版普通表格本身无需多言，使用`table`+`tabular`环境即可，可分别使用命令`\toprule`、`\midrule`、`\bottomrule`生成粗细为`1.5`磅、`0.75`磅、`1.5`磅的水平框线。

在需要为表格中的某些单元格添加水平框线时，可使用命令`\cmidrule[<线粗>](<修剪>){<起始列-终止列>}`。

* 第一项可选参数用于设置框线粗细，默认值为`0.75`磅；

* 第二项可选参数用于对框线的端点进行修剪，以在视觉上分割同行的相邻框线。第二项可选参数的取值请查阅[booktabs](https://mirrors.sustech.edu.cn/CTAN/macros/latex/contrib/booktabs/booktabs.pdf)宏包的官方文档。

若要调整表格中单元格的水平对齐方式，自适应宽度的表格可以直接使用`tabular`环境的`l/c/r`参数；如果同时需要限定单元格宽度，则可使用`p{<宽度值>}`、`p{<宽度值>}<{\centering}`、`p{<宽度值>}<{\raggedleft}`参数。

若要调整具有多行内容的固定列宽单元格的垂直对齐方式，可以使用`tabular`环境的`p{<宽度值>}`、`m{<宽度值>}`、`b{<宽度值>}`参数，**它们分别表示使用对应单元格内容的上线、中线、底线作为垂直对齐时的基准线**，<font color=#8b0000>而非使单元格内容上端对齐、垂直居中对齐、下端对齐</font>。如果不好理解，那看看这个：[p, m and b columns in tables](https://tex.stackexchange.com/questions/35293)。

#### 3.3.2 带附注表格

本模板采用[threeparttable](https://mirrors.cqu.edu.cn/CTAN/macros/latex/contrib/threeparttable/threeparttable.pdf)宏包提供的`threeparttable`环境实现将表格中的附注内容顶格排版在表格底部：

> 1. 使用`\tnote{<label>}`在表格中插入上标编号；
> 2. 使用`tablenotes`环境在表格底部排版附注。该环境提供选项`online`用于将附注文本前的标号从默认的上标样式更改为行内样式。

:four_leaf_clover: 上述方式排版的带附注表格无法通过点击表格中的编号跳转到对应附注。为此，本模板提供命令`\puttablenotelabel{<标签>}`和`\tablenoteref{<标签>}`来实现该操作：

> 1. 首先将`tablenotes`环境中手动设置的编号替换为`\puttablenotelabel{<标签>}`；
> 2. 然后在表格内容的对应位置使用`\tablenoteref{<标签>}`即可。编号将自动生成，并按照使用`\puttablenotelabel`的顺序递加。

这种方式需要建立交叉引用，故而通常得编译两次。切记， :warning: **<font color=#8b0000>标签必须全文唯一</font>**。

#### 3.3.3 跨页表格

原则上，长度不足一页的表格不应跨页。而对于本身超过一页的表格，本模板使用[longtable](https://mirrors.tuna.tsinghua.edu.cn/CTAN/macros/latex/required/tools/longtable.pdf)宏包提供的`longtable`环境进行排版。用户需要了解`longtable`环境的基本使用方法，它与`tabular`环境的最大区别在于需要用户自行定义分页后的表题、表头以及表尾。

本模板提供了命令`\CPcaption{<当前表格总列数>}{<跨页表题>}`来正确排版跨页之后的表题。**务必使用此命令**，否则，跨页表题的段前端后间距将不协调，且在其长度超过表宽时，无法获得预期的排版结果。

此外， :warning: **<font color=#8b0000>不应将`longtable`环境嵌套在`table`等浮动环境中</font>**，否则长表格将无法正常跨页。

更多细节参考`tutorial.tex`中的相应源码。

#### 3.3.4 跨页带附注表格

LaTeX似乎没有提供宏包来实现这类表格，本模板提供了一种繁琐但可行的做法。

思路是利用`longtable`提供的表尾自定义功能来插入附注，即用户需要修改`longtable`在`\endlastfoot`前对表格尾部的设置。为此，模板提供如下命令：

> `\tablenotetext(online)(<附注编号悬挂距离>)[<附注上方垂直间隔>]{<附注总宽度>}{<附注标签>}{<附注内容>}`

* 第一项可选参数以`()`标识，它仅接受参数`online`，作用是将附注编号从默认的上标形式更改为行内形式，即模仿`tablenotes`环境的选项；
* 第二项可选参数仅在设置了第一项可选参数为`online`时有效，用于调整附注编号的悬挂缩进距离，默认是`1em`。当表格的附注数量过多时，可通过手动调整该可选参数来避免过长的编号与后方文字重叠；
* 第三项可选参数以`[]`标识，当生成的附注与上方内容间的垂直距离不合适时，可通过此可选参数手动对其进行调整，默认为`0bp`；
* 第四项强制参数对应附注整体的宽度，其取值需要根据表格排版后的宽度反复调整，直至附注与表格尾线等宽为止；
* 第五项强制参数负责设置附注编号对应的标签，以便后续在表格中使用`\tablenoteref{}`进行引用，<font color=#8b0000>标签同样需要全文唯一</font>；
* 第六项强制参数对应附注的实际内容。

:warning: **注意**：使用`\tablenotetext`命令的前提是对表格首列进行特定设置，<font color=#8b0000>用户 **<font color=#8b0000>必须</font>** 通过`p{<长度>}`或`m{<长度>}`来人为设定`longtable`的首列宽度，**<font color=#8b0000>切不可</font>** 将之设置为`c`、`r`或`l`</font>。另外，表格中最后一条`\tablenotetext`之后不需要`\\`，否则表尾与下方文本的间隔将偏大。

可能出现一种极端情况：跨页表格恰好在附注开始处发生了分页，此时也会产生另类的排版结果。要解决该问题，用户得手动在表格内容的适当位置使用[longtable](https://mirrors.tuna.tsinghua.edu.cn/CTAN/macros/latex/required/tools/longtable.pdf)宏包提供的`\pagebreak`命令提前断页，代价是前一页底部可能有更多空白。如果你运气尤其差，附注特别长，而且在附注中间发生了跨页，那本模版便无能为力了 :scream: :scream: 。

:exclamation: `\tablenotetext`命令算不上稳定。其参数在不同的表格中需要特调，甚至在同一表格的不同排版设置下都是如此，可谓一表一参。如果不得不用，还望仔细 :joy: :joy: 。

### 3.4 伪代码

模板基于[algorithm2e](https://mirrors.sustech.edu.cn/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf)宏包的`algorithm`环境排版伪代码，默认不添加其左右侧框线，顶部框线和底部框线进行了加粗，字体大小设置为**五号字**，与表格保持一致。:bulb: 若要恢复伪代码的左右侧框线，可以在载入文档类时使用`boxruled`选项。该环境生成的伪码与正文文本保持相同宽度。

除了[algorithm2e](https://mirrors.sustech.edu.cn/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf)宏包本身提供的各种条件、循环语句，本模板基于宏包提供的接口，追加了`Do While`和`Loop`循环语句：
> - `\DoWhile(<紧跟关键字do的文本，可用于添加注释>){<循环条件>}{<循环体>}`
> - `\Loop(<紧跟关键字loop的文本，可用于添加注释>){<循环体>}`

此外，基于调整后的`algorithm`环境，模板进一步封装了`algo`环境，它将生成比`algorithm`环境更**窄**的伪码浮动区域。除了接受浮动可选参数`[htbp]`，`algo`环境还支持另一可选参数`(<伪码距正文文本边界的总距离>)`：该参数控制浮动体距正文文本边界的总距离，默认`4em`，即单边缩进`2em`，与其下首行文本对齐。两项可选参数可以单独或同时使用，**同时使用时的顺序必须与下方示例保持一致**。

```tex
\begin{algo}[<浮动选项>](<伪码距正文文本边界的总距离>)
    .....
\end{algo}
```

### 3.5 定义，公理，定理，命题，推论，引理，示例，假设，注和证明

本模板为上述内容分别定义了环境：`definition`、`axiom`、`theorem`、`proposition`、`corollary`、`lemma`、`example`、`assumption`、`annotation`和`proof`。

### 3.6 脚注

本模板使用包含了带圈数字的字体来替换LaTeX绘制的带圈数字，提供了充足的带圈编号数量，同时保证了带圈脚注编号足够优雅。

> * 在正文中，插入脚注只需要在相应位置使用`\footnote{<脚注内容>}`命令；
>* 在其他环境中，如表格，用户需要组合使用`\footnotemark`+`\footnotetext{<脚注文本>}`命令来排版脚注：
>>    1. 首先在需要插入脚注标号的位置使用`\footnotemark`；
>>    2. 然后在环境外使用`\footnotetext{<脚注文本>}`指明脚注内容。更详细的使用方法参考[LaTeX脚注](https://blog.csdn.net/xovee/article/details/127563209 "\footnotemark+\footnotetext配合生成脚注")。

### 3.7 模板中的各种编号

`标题`、`图片`、`表格`、`伪码`、`公式`、`定义`、`公理`、`定理`、`命题`、`推论`、`引理`、`示例`、`假设`、`证明`、`脚注`这些文档元素均可自行计算并生成编号。**但形如(1-1a)的子公式编号无法完全自动生成**，需要使用`\subeqtag[<子公式编号标签>]`命令。

在为数学模型的约束创建编号时，常见的方式可能是使用`\tag{}`命令直接指定编号内容。但是，该方式操作繁琐，且在后续需要调换或增删约束时很容易漏改某些tag，导致子公式编号混乱，而又不容易察觉。

本模板提供的`\subeqtag[<子公式编号标签>]`命令彻底避免了上述问题。使用者只需要在对应的约束后插入`\subeqtag`，即可赋予该约束与当前主公式编号保持一致的次级编号。而且，对多个连续约束依次使用该命令会**自动生成**递增的子公式编号，交换约束顺序编号也会自行更新，断不会出错。

如果需要在正文中引用某个子公式编号，既可以像往常一样在`\subeqtag`之后使用`\label{<编号标签>}`，也可以直接指定`\subeqtag[<子公式编号标签>]`的可选参数，非常人性化。详情可以参考`tutorial.tex`中给出的示例。

:pushpin: 有两点需要提醒:
1. `\subeqtag[<子公式编号标签>]`的可选参数全文不可重复定义，因为它本质上还是调用的`\label{<编号标签>}`。

2. 尽管`\subeqtag[<子公式编号标签>]`在底层是调用`\label{<编号标签>}`来添加标签，TeXstudio编辑器在使用`\ref{<编号标签>}`或`\eqref{<编号标签>}`时却不会弹出这些标签的选项，需要手动输入 :sob: :sob:；而直接用`\label{<编号标签>}`指定的标签在引用时则会出现在选项提示中，可以直接选择。


### 3.8 排版及微调数学公式

对于不熟悉数学符号与LaTeX源码对应关系的用户，请参考[LaTeX公式手册（全网最全）@樱花赞](https://www.cnblogs.com/1024th/p/11623258.html)，此处不再赘述。

当某些行间公式过长以致于超出页面边界时，用户可以在`equation`环境中嵌套`aligned`环境将之调整为多行排版。此外，若公式超出页面边界的部分不多，也可以在`equation`环境内通过调整公式中数学符号间的三种间距`\thinmuskip`、`\medmuskip`、`\thickmuskip`来略微压缩公式的排版长度，三者的单位只能是`mu`。`tutorial.tex`中给出了相应的示例。

### 3.9 在标题中排版数学符号

若需要在标题中排版数学符号，可使用[hyperref](https://mirrors.tuna.tsinghua.edu.cn/CTAN/macros/latex/contrib/hyperref/doc/hyperref-doc.pdf)宏包（已载入）提供的`\texorpdfstring{<TeXstring>}{<PDFstring>}`命令，该命令的具体用法请参考：[texorpdfstring使用方法](https://blog.csdn.net/qq_42679415/article/details/139592054)。`tutorial.tex`中也有对应的使用示例。

### 3.10 排版化学方程式

本模板基于[mhchem](https://mirrors.cloud.tencent.com/CTAN/macros/latex/contrib/mhchem/mhchem.pdf)和[chemfig](https://mirrors.bfsu.edu.cn/CTAN/macros/generic/chemfig/chemfig-en.pdf)宏包来排版化学方程式、结构式和键线式等。相关命令的使用可参考宏包的官方文档或[@codesonic](https://www.luogu.com.cn/user/45443)的文章：[用LaTeX写化学方程式](https://www.luogu.com.cn/article/o7mlv3w8)。`tutorial.tex`引用了该文章中的部分示例以做演示，感谢 :blush: :blush:。


### 3.11 引用

引用`公式`、`图片`、`表格`、`伪码`、`定义`、`公理`、`定理`、`命题`、`推论`、`引理`、`示例`、`假设`、`证明`等环境的编号直接用`\ref{<编号label>}`即可，其中生成带括号公式编号则使用`\eqref{<公式label>}`。

若要对子图题编号进行完整引用，那直接使用`\ref{<子图题标签>}`即可。`nsfc`文档类默认生成形如`1-1(a)`的完整编号，但若用户指定了文档类的`subfigsimple`选项，则会生成形如`1-1a`的完整编号；反之，若要单独引用子图题编号（比如在主图题之后按子图编号添加子图题文本），则需要使用`\subref{<子图题标签>}`，它将生成形如`(a)`的单独编号。

对参考文献的行内引用直接使用`\cite{<参考文献label>}`，以上标形式引用则使用`\citess{<参考文献label>}`。

引用参考文献是基于[natbib](https://mirrors.zju.edu.cn/CTAN/macros/latex/contrib/natbib/natbib.pdf)宏包实现，可单次引用多篇参考文献（即`\cite{<参考文献label1, 参考文献label2, 参考文献label3>}`或`\citess{<参考文献label1, 参考文献label2, 参考文献label3>}`），届时序号会被排序并压缩（如果可以的话）。


## 4. 参考文献

本模板支持`期刊论文`、`会议论文`、`专著`、`学位论文`、`报纸文章`、`报告`、`授权专利`、`标准`、`电子文献`，共计9种文献类型的风格排版。

本模板为这些文献类型定义的`.bib`数据库条目**类型标识**分别为`article`、`inproceedings/conference`、`book`、`mastersthesis/phdthesis`、`news`、`report`、`patent`、`standard`、`digital`。

不同文档类型条目包含不同的域，下面是一些示例参考文献对应的`.bib`数据库形式，覆盖上述9种文献类型。这些`.bib`数据编译后的结果参见示例文档。

```bib
@book{教育部国家语言文字工作委员2018,
    author={教育部国家语言文字工作委员},
    title={通用规范汉字},
    address={北京},
    publisher={语文出版社},
    year={2018},
    language={schinese},
}
```

```bib
@standard{学位论文编写规范555,
    author={全国信息与文献标准化技术委员},
    title={学位论文编写规范},
    number={GB/T 7713.1-2006},
    address={北京},
    publisher={中国标准出版社},
    year={2007},
    pages={17-20},
}
```

```bib
@article{王晓琰2019关于连续出版会议论文著录格式的探讨,
    title={关于连续出版会议论文著录格式的探讨},
    author={王晓琰 and 殷建芳 and 王晓峰 and 邓迎 and 杨蕾},
    journal={学报编辑丛论},
    number={0},
    year={2019},
    pages={162-165},
    language={schinese},
}
```

```bib
@article{hu2014domain,
    title={Domain decomposition method based on integral equation for solution of scattering from very thin, conducting cavity},
    author={Hu, Jun and Zhao, Ran and Tian, Mi and Zhao, Huapeng and Jiang, Ming and Wei, Xiang and Nie, Zai Ping},
    journal={IEEE Transactions on Antennas and Propagation},
    volume={62},
    number={10},
    pages={5344-5348},
    year={2014},
    publisher={IEEE}
}
```

```bib
@inproceedings{bergamasco2015adopting,
    title={Adopting an unconstrained ray model in light-field cameras for 3d shape reconstruction},
    author={Bergamasco, Filippo and Albarelli, Andrea and Cosmo, Luca and Torsello, Andrea and Rodola, Emanuele and Cremers, Daniel},
    booktitle={IEEE Conference on Computer Vision and Pattern Recognition},
    pages={3003-3012},
    year={2015},
    organization={Boston, USA}
}
```

```bib
@article{xue2024survey,
    title={A survey of beam management for mmWave and THz communications towards 6G},
    author={Xue, Qing and Ji, Chengwang and Ma, Shaodan and Guo, Jiajia and Xu, Yongjun and Chen, Qianbin and Zhang, Wei},
    journal={IEEE Communications Surveys \& Tutorials},
    year={2024},
    pages={1-41},
    publisher={IEEE}
}
```

```bib
@book{罗杰斯2011,
    author={罗杰斯},
    title={西方文明史：问题与源头},
    translator={潘惠霞 and 魏婧 and 杨艳 and 汤玲},
    edition={2},
    address={大连},
    publisher={东北财经大学出版社},
    year={2011},
    pages={1-353},
    language={schinese},
}
```

```bib
@book{harrington1993field,
    title={Field computation by moment methods},
    author={Harrington, Roger F},
    year={1993},
    pages={76-112},
    edition={3},
    address={New York},
    publisher={Wiley-IEEE Press}
}
```

```bib
@digital{电子文献1,
    author={Deverell, W and gler, D},
    title={A companion to California history},
    type={M/OL},
    modifydate={2013-11-15},
    url={http://onlinelibrary.wiley.com/doi/.ch2/summary},
    doi={10.1002/9781444305036},
    address={New York},
    publisher={John Wiley \& Sons},
    year={2013},
    pages={21-22},
    citedate={2014-06-24},
}
```

```bib
@digital{电子文献2,
    author={Clerc, M},
    title={Discrete particle swarm optimization: a fuzzy combinatorial box},
    type={EB/OL},
    modifydate={2010-07-16},
    url={http://clere.maurice.free.fr/pso/Fuzzy_Discrere_PSO/Fuzzy_DPSO.html},
}
```

```bib
@mastersthesis{陈念永2001毫米波细胞生物效应及抗肿瘤研究,
    author={陈念永},
    title={毫米波细胞生物效应及抗肿瘤研究},
    address={成都},
    school={电子科技大学},
    year={2001},
    pages={50-60},
}
```

```bib
@news{顾春20122,
    author={顾春},
    title={牢牢把握稳中求进的总基调},
    publisher={人民日报},
    year={2012},
    month={03},
    day={31},
    number={3},
}
```

```bib
@report{冯西桥1997,
    author={冯西桥},
    title={核反应堆压力容器的{LBB}分析},
    address={北京},
    publisher={清华大学核能技术设计研究院},
    year={1997},
}
```

```bib
@patent{肖珍新2012,
    author={肖珍新},
    title={一种新型排渣阀调节降温装置},
    number={ZL201120085830.0},
    year={2012},
    month={04},
    day={25},
}
```

```bib
@phdthesis{陈念永2001毫米波细胞生物效应及抗肿瘤研究无页码,
	author={陈念永},
	title={毫米波细胞生物效应及抗肿瘤研究（无页码测试）},
	address={成都},
	school={电子科技大学},
	year={2001},
}
```


若漏掉了参考文献需要的强制域，BibTeX编译会报错。在VSCode中，编译将直接中断；在TeXstudio中，编译不会中断，但log窗口会打印错误信息。这是一种规范控制手段，并非模板bug。当遇到这类情况，应自行筛查疏漏。

生成参考文献最耗费精力之处在于维护正确的`.bib`数据库。在这之后，只需要在正文的对应位置使用以下命令即可插入完整的参考文献列表：
```tex
\bibliography{<.bib文件名称，模板默认为ref>}
```

:warning: **<font color=#8b0000>重要提醒：示例文档在上述命令之前使用了命令`\nocite{*}`，其作用是在参考文献列表中列出`.bib`数据库中的所有参考文献条目，以便用作示例。在正式撰写时一定要确保该命令处于注释状态！！！</font>**


:pushpin: **补充说明**：

1. 对于某些缺少非必要信息的文献，本模板提供的`.bst`文件依然可以正确处理。比如期刊论文缺少卷号，仍能仅排版期号。

2. 对中文参考文献，如果希望将它们的第四顺位及以后的作者显示为`“等”`，则必须要在它们的bib条目中加入`language={}`域，并将值设置为`schinese`。这是文献编译引擎判断该条参考文献是否是中文的唯一依据。类似的，`“等译”`、`“2版”`均靠设置`language={schinese}`实现。虽然`language`域并非是强制添加的，但对于中文文献，建议添加此域。

3. 对电子文献，其类型众多，因此需要用户通过`type={}`域显式指定其具体类型；而对其他的文献类型，只要在`@`符号后输入了正确的类型标识，对应的类型标签会自动生成，无需手动逐条添加。

