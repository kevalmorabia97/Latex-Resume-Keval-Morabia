% Intro Options
\ProvidesClass{Resume}[Resume class]
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
		\fontsize{16pt}{20pt} 
		\fontspec[Path = fonts/georgia/]{georgiab}\selectfont #1
	} \\
	\centering{\fontsize{10pt}{12pt}\selectfont #2}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-10pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{-8pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}
\newcommand{\postsectionsep}{\vspace{0pt}}

% Headings command
\titleformat{\section}{
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{12pt}{14pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
	\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{12pt}\selectfont \bfseries
}{}{0em}{}

\newcommand{\position}[2]{
	\fontspec[Path = fonts/lato/]{Lato-RegIta}\fontsize{10pt}{11.5pt}\selectfont
	\textit{\textbf{#1}} \normalfont \hfill #2 \\
}

% Other command
\newcommand{\descript}[1]{
    \raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}
    \fontsize{10pt}{12pt}\selectfont {} \normalfont
}

\newcommand{\pt}{\textbullet{} }
