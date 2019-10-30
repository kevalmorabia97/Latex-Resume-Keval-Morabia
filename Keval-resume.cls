% Intro Options
\ProvidesClass{Keval-resume}[Resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=0.5in, vmargin=0.5in]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{primary}{HTML}{2b2b2b}

% Set main fonts
\usepackage{fontspec}
\defaultfontfeatures{Ligatures={NoCommon, NoDiscretionary, NoHistoric, NoRequired, NoContextual}}
\setmainfont[Color=primary, Path = fonts/lato/, BoldItalicFont=Lato-RegIta, BoldFont=Lato-Reg, ItalicFont=Lato-LigIta]{Lato-Lig}

% Name command
\newcommand{\namesection}[2]{
	\centering{
		\fontsize{24pt}{40pt} 
		\fontspec[Path = fonts/georgia/]{georgiab}\selectfont #1
	} \\
	\centering{
		\fontsize{11pt}{14pt}\selectfont #2}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{-10pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}
\newcommand{\postsectionsep}{\vspace{4pt}}

% Headings command
\titleformat{\section}{
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{14pt}{16pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
	\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{11pt}\selectfont \bfseries\uppercase
}{}{0em}{}

\newcommand{\position}[2]{
	\fontspec[Path = fonts/lato/]{Lato-RegIta}\fontsize{10pt}{11pt}\selectfont
	\textit{\textbf{#1}} \normalfont \hfill #2 \\
}

% Descriptors command
\newcommand{\descript}[1]{
\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{11pt}\selectfont {} \normalfont}
