% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{xltxtra,xunicode,fontawesome5,academicons}
\usepackage{enumitem}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Configure list symbols
\setlist[itemize,1]{label=\faicon{angle-right}, leftmargin=2em} 
\setlist[itemize,2]{label=\faicon{angle-right}, leftmargin=1.5em} 

% Publications
% \usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
%\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase,Color=primary,Path=/home/lukas/.local/share/fonts/}
%\setmainfont{Ubuntu Mono derivative Powerline}
%\setmainfont{Roboto Mono for Powerline}
\setmainfont[Color=headings, Path = fonts/Openfonts/lato/,BoldItalicFont=Lato-BolIta,BoldFont=Lato-Bol,ItalicFont=Lato-RegIta]{Lato-Reg}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/Openfonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
% \usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/Openfonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
    \centering{
        \fontsize{40pt}{60pt}
        \fontspec[Path = fonts/Openfonts/lato/]{Lato-Hai}\selectfont #1 
        \fontspec[Path = fonts/Openfonts/lato/]{Lato-Lig}\selectfont #2
    } \\[5pt]
    \centering{
        \color{headings}
        \fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3
    }
    \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
    \vspace{-15pt}
}

\newcommand{\namesectionnorule}[3]{
    \centering{
        \fontsize{40pt}{60pt}
        \fontspec[Path = fonts/Openfonts/lato/]{Lato-Hai}\selectfont #1 
        \fontspec[Path = fonts/Openfonts/lato/]{Lato-Lig}\selectfont #2
    } \\[5pt]
    \centering{
        \color{headings}
        \fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3
    }
}

% Font Awesome icons aliases, many more could be added here
\newcommand{\mailSymbol}{\faicon{paper-plane}}
\newcommand{\locationSymbol}{\faicon{map-marker-alt}}
\newcommand{\infoSymbol}{\faicon{info}}
\newcommand{\linkedinSymbol}{\faicon{linkedin}}
\newcommand{\profileSymbol}{\faicon{user}}
\newcommand{\homepageSymbol}{\faicon{user-circle}}
\newcommand{\mobileSymbol}{\faicon{mobile-alt}}
\newcommand{\githubSymbol}{\faicon{github}}
\newcommand{\researchgateSymbol}{\faicon{researchgate}}
\newcommand{\googlescholarSymbol}{\aiicon{googlescholar}}

% Command to create a nice looking link
\newcommand\link[2]{\color{primary}\href{#1}{#2}\color{Black} }

% Render a text with its symbol
% Usage; \socialtext{<icon>}{<label>}
\newcommand{\socialtext}[2]{\mbox{\textcolor{headings}{#1}\hspace{0.5em}\textcolor{primary}{#2}\hspace{1em}}}

% Render a link with its symbol
% Usage; \sociallink{<icon>}{<label>}
\newcommand{\sociallink}[3]{\mbox{\textcolor{headings}{#1}\hspace{0.5em}\link{#2}{#3}\hspace{1em}}}

% Render author's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\socialtext{\locationSymbol}{#1}}

% Render author's infos
% Usage: \infos{<infos>}
\newcommand*{\infos}[1]{\socialtext{\infoSymbol}{#1}}

% Render author's linked-in
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\sociallink{\linkedinSymbol}{http://www.linkedin.com/in/#1/fr}{#1}}

% Render author's github
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\sociallink{\githubSymbol}{https://www.github.com/#1}{#1}}
% Usage: \githuburl{<short-url>}
\newcommand*{\githuburl}[1]{\sociallink{\githubSymbol}{https://www.#1}{#1}}

% Render author's researchgate
% Usage: \researchgate{<resarchgate-nick>}
\newcommand*{\researchgate}[1]{\sociallink{\researchgateSymbol}{https://www.researchgate.net/profile/#1}{#1}}           % ResearchGate icon + URL

% Render author's googleScholar
% Usage: \googlescholar{<google-scholar-username>}
\newcommand*{\googlescholar}[1]{\sociallink{\googlescholarSymbol}{https://scholar.google.com/citations?user=#1&hl=en}{Lukas Sch\"afer}}

% Render author's homepage
% Usage: \homepage{<web-URL>}
\newcommand*{\homepage}[1]{\sociallink{\homepageSymbol}{https://#1}{#1}}

% Render author's email
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\sociallink{\mailSymbol}{mailto:#1}{#1}}

% Render author's mobile phone 
% Usage: \smartphone{<mobile phone number>}
\newcommand*\smartphone[1]{\socialtext{\mobileSymbol}{#1}}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\tinysectionsep}[0]{\vspace{-5pt}}
\newcommand{\smallsectionsep}[0]{\vspace{3pt}}
\newcommand{\sectionsep}{\vspace{8pt}}
\newcommand{\largesectionsep}[0]{\vspace{12pt}}

% Title definition with fontawesome symbol
\newcommand\sectionTitle[2]{
    \section*{\texorpdfstring{\faicon{#2}\enspace \uppercase{#1}}{\uppercase{#1}}}
    \hrule
    \vspace{0.4em}
}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/Openfonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/Openfonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/Openfonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% format two pieces of text, one left aligned and one right aligned
\newcommand{\headerrow}[2]
{\begin{tabular*}{\linewidth}{l@{\extracolsep{\fill}}r}
        \fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries{\color{subheadings}#1} &
        \fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries{\color{subheadings}#2} \\
\end{tabular*}}

\newcommand{\locationrow}[2]
{\begin{tabular*}{\linewidth}{l@{\extracolsep{\fill}}r}
        \color{headings}\scshape\fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont{#1}  &
        \color{headings}\scshape\fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont{#2}  \\
\end{tabular*}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\normalfont\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% manual tightitemize
\newenvironment{tightitemize}[1]{\vspace{-#1}\normalfont\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

% skill block command
\newenvironment{skillblock}[1][Skill]{
    \fontspec[Path = fonts/Openfonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries{\color{subheadings}#1} \vspace{0.3em} \\
    \fontspec[Path = fonts/Openfonts/raleway/]{Raleway-Medium}\fontsize{10pt}{8pt}\selectfont \color{primary}
}{\\}
