%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NIH Data Accelerator - Project Planning Template
% Overleaf-compatible LaTeX class
% Main accent color: #588B3E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{common/accelerator}[2026/09/10 NIH Data Accelerator project planning class]

\DeclareOption{letterpaper}{\PassOptionsToClass{letterpaper}{article}}
\DeclareOption{a4paper}{\PassOptionsToClass{a4paper}{article}}
\ExecuteOptions{letterpaper}
\ProcessOptions\relax
\LoadClass[11pt,oneside]{article}

% Encoding and typography
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{microtype}
\RequirePackage{setspace}
\setstretch{1.12}
\RequirePackage[margin=0.82in,headheight=42pt,headsep=18pt,footskip=30pt]{geometry}
\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt plus 1pt minus 1pt}

% Brand colors
\RequirePackage[table]{xcolor}
\definecolor{AcceleratorGreen}{HTML}{588B3E}
\definecolor{AcceleratorGreenDark}{HTML}{355C29}
\definecolor{AcceleratorGreenLight}{HTML}{EAF2E5}
\definecolor{AcceleratorTeal}{HTML}{17617A}
\definecolor{AcceleratorBlue}{HTML}{64B1CF}
\definecolor{AcceleratorGray}{HTML}{5F6B66}
\definecolor{AcceleratorLightGray}{HTML}{F3F5F3}
\definecolor{AcceleratorBorder}{HTML}{CAD6C5}
\definecolor{AcceleratorAmber}{HTML}{B66A13}
\definecolor{AcceleratorRed}{HTML}{9B2C2C}

% Graphics and layout
\RequirePackage{graphicx}
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{ragged2e}
\RequirePackage{enumitem}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{pdflscape}
\RequirePackage{amssymb}
\RequirePackage{etoolbox}
\RequirePackage[most]{tcolorbox}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{xurl}
\RequirePackage{csquotes}
\RequirePackage[backend=biber,style=authoryear,sorting=nyt,maxcitenames=2,maxbibnames=99]{biblatex}

% Metadata defaults; redefine these in main.tex.
\providecommand{\ProjectTitle}{Project Planning Template}
\providecommand{\ProjectSubtitle}{Data, analytics, infrastructure, and program delivery}
\providecommand{\ProjectShortTitle}{Project Name}
\providecommand{\ProjectID}{TBD}
\providecommand{\ProjectLead}{Name, title}
\providecommand{\ExecutiveSponsor}{Name, title}
\providecommand{\OrganizationUnit}{NIH Data Accelerator}
\providecommand{\PreparedBy}{Name or team}
\providecommand{\DocumentVersion}{0.1}
\providecommand{\DocumentDate}{\today}
\providecommand{\ProjectStartDate}{TBD}
\providecommand{\ProjectEndDate}{TBD}
\providecommand{\ProjectStatus}{Draft}
\providecommand{\Classification}{Internal planning document}

% Hyperlinks and PDF metadata
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=AcceleratorGreenDark,
  citecolor=AcceleratorGreenDark,
  urlcolor=AcceleratorTeal,
  filecolor=AcceleratorTeal,
  bookmarksopen=true,
  bookmarksnumbered=true,
  pdfauthor={\PreparedBy},
  pdftitle={\ProjectTitle},
  pdfsubject={Project planning document}
}

% Headings
\titleformat{\section}
  {\Large\sffamily\bfseries\color{AcceleratorGreenDark}}
  {\colorbox{AcceleratorGreen}{\textcolor{white}{\makebox[2.25em][c]{\thesection}}}}
  {0.75em}
  {}
  [\vspace{0.15em}\color{AcceleratorGreen}\titlerule]
\titleformat{name=\section,numberless}
  {\Large\sffamily\bfseries\color{AcceleratorGreenDark}}
  {}
  {0pt}
  {}
  [\vspace{0.15em}\color{AcceleratorGreen}\titlerule]
\titleformat{\subsection}
  {\large\sffamily\bfseries\color{AcceleratorGreenDark}}
  {\thesubsection}
  {0.65em}
  {}
\titleformat{\subsubsection}
  {\normalsize\sffamily\bfseries\color{AcceleratorTeal}}
  {\thesubsubsection}
  {0.65em}
  {}
\titlespacing*{\section}{0pt}{2.2ex plus 0.5ex minus 0.2ex}{1.2ex}
\titlespacing*{\subsection}{0pt}{1.8ex plus 0.4ex minus 0.2ex}{0.8ex}
\titlespacing*{\subsubsection}{0pt}{1.5ex plus 0.3ex minus 0.2ex}{0.5ex}

% Header and footer
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[height=0.78cm]{images/nih-data-accelerator-logo.png}}
\fancyhead[R]{%
  \begin{minipage}[b]{0.63\textwidth}
    \raggedleft\sffamily\footnotesize
    \textcolor{AcceleratorGreenDark}{\bfseries \ProjectShortTitle}\\[-1pt]
    \textcolor{AcceleratorGray}{Project Planning}
  \end{minipage}}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\headrule}{\hbox to\headwidth{\color{AcceleratorGreen}\leaders\hrule height \headrulewidth\hfill}}
\fancyfoot[L]{\sffamily\footnotesize Version \DocumentVersion}
\fancyfoot[C]{\sffamily\footnotesize\textcolor{AcceleratorGray}{\Classification}}
\fancyfoot[R]{\sffamily\footnotesize Page \thepage}
\renewcommand{\footrulewidth}{0pt}

% Lists
\setlist[itemize]{leftmargin=1.4em,itemsep=2pt,topsep=3pt}
\setlist[enumerate]{leftmargin=1.7em,itemsep=2pt,topsep=3pt}

% Tables
\renewcommand{\arraystretch}{1.22}
\setlength{\tabcolsep}{5pt}
\newcolumntype{Y}{>{\RaggedRight\arraybackslash}X}
\newcolumntype{Z}{>{\Centering\arraybackslash}X}
\newcolumntype{L}[1]{>{\RaggedRight\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\Centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\RaggedLeft\arraybackslash}p{#1}}
\newcommand{\TableHead}[1]{\cellcolor{AcceleratorGreen}\textcolor{white}{\bfseries #1}}
\newcommand{\TableSubhead}[1]{\cellcolor{AcceleratorGreenLight}\textcolor{AcceleratorGreenDark}{\bfseries #1}}

% Reusable visual elements
\newif\ifshowguidance
\showguidancetrue

\newcommand{\placeholder}[1]{\textcolor{AcceleratorGray}{\textit{[#1]}}}
\newcommand{\checkbox}{\ensuremath{\square}}
\newcommand{\checkedbox}{\ensuremath{\boxtimes}}

\newtcolorbox{planningbox}[1]{
  enhanced,
  breakable,
  colback=AcceleratorGreenLight,
  colframe=AcceleratorGreen,
  boxrule=0.7pt,
  arc=1.5mm,
  left=2.5mm,
  right=2.5mm,
  top=1.5mm,
  bottom=1.5mm,
  fonttitle=\sffamily\bfseries,
  coltitle=white,
  colbacktitle=AcceleratorGreen,
  title={#1}
}

\newcommand{\guidance}[1]{%
  \ifshowguidance
    \begin{tcolorbox}[
      enhanced,
      breakable,
      colback=AcceleratorLightGray,
      colframe=AcceleratorBorder,
      boxrule=0.5pt,
      arc=1mm,
      borderline west={2.2pt}{0pt}{AcceleratorGreen},
      left=2.5mm,
      right=2.5mm,
      top=1.5mm,
      bottom=1.5mm,
      title={Template guidance},
      fonttitle=\sffamily\bfseries,
      coltitle=AcceleratorGreenDark,
      colbacktitle=AcceleratorLightGray
    ]
      \small #1
    \end{tcolorbox}
  \fi
}

\newcommand{\statusbadge}[2]{%
  \tcbox[
    on line,
    colback=#1!12,
    colframe=#1,
    boxrule=0.5pt,
    arc=1.2mm,
    left=1.2mm,
    right=1.2mm,
    top=0.4mm,
    bottom=0.4mm
  ]{\sffamily\footnotesize\bfseries\textcolor{#1}{#2}}%
}
\newcommand{\StatusDraft}{\statusbadge{AcceleratorAmber}{DRAFT}}
\newcommand{\StatusOnTrack}{\statusbadge{AcceleratorGreen}{ON TRACK}}
\newcommand{\StatusAtRisk}{\statusbadge{AcceleratorAmber}{AT RISK}}
\newcommand{\StatusBlocked}{\statusbadge{AcceleratorRed}{BLOCKED}}
\newcommand{\StatusComplete}{\statusbadge{AcceleratorTeal}{COMPLETE}}

\newcommand{\signatureline}[1]{%
  \parbox[t]{0.46\textwidth}{\vspace{1.1cm}\hrulefill\\[-2pt]\footnotesize #1}%
}

% Captions and bibliography
\captionsetup{font=small,labelfont={bf,color=AcceleratorGreenDark}}
\AtBeginBibliography{\small}
\renewcommand{\contentsname}{Project Plan Contents}
\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{3}
