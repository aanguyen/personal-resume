\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}
\ProvidesClass{aanguyen_res}[2017/02/09 My Resume]

% Load packages
\RequirePackage{titlesec}  
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage[absolute,overlay]{textpos}


\definecolor{lightblue}{HTML}{87CEFA}
\definecolor{blue}{HTML}{0873B5}
\definecolor{darkblue}{HTML}{043757}
\definecolor{medblue}{HTML}{2C55A3} %1557c1
\definecolor{blackblue}{HTML}{00070C}
\definecolor{pink}{HTML}{C26F67}
\definecolor{lightred}{HTML}{A93226}
\definecolor{darkred}{HTML}{641E16}
\definecolor{blackred}{HTML}{400C07}
\definecolor{orange}{HTML}{FF851B}
\definecolor{lightpurple}{HTML}{F012BE}
\definecolor{lightgray}{HTML}{777777}
\definecolor{gray}{HTML}{444444}
\definecolor{darkgray}{HTML}{333333}
\definecolor{white}{HTML}{eeeeee}

\colorlet{headerBackground}{gray}
\colorlet{headerText}{white}
\colorlet{bodyText}{darkgray}
\colorlet{tagText}{lightgray}

%\colorlet{headerEmph}{pink}
%\colorlet{titleText}{blackred}
%\colorlet{subTitleText}{darkred}
%\colorlet{accent}{lightred}
\colorlet{headerEmph}{blue}
\colorlet{titleText}{blackblue}
\colorlet{subTitleText}{darkblue}
\colorlet{accent}{medblue}
\colorlet{autofilter}{white}

\pagenumbering{gobble}

% Header formatting

\newcommand{\header}[3] {
	\begin{tikzpicture}[remember picture, overlay]
	\node [rectangle, fill=headerBackground, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north) {};
    \node [anchor=center] (name) at ([yshift=0.3cm]box) {
		\fontsize{30pt}{45pt}\fontfamily{phv}\selectfont
      	{\color{headerText} #1}{\color{headerEmph} #2}
    };
    \node [anchor=north, align=center] at (name.south)[yshift=-0.3cm] {
		\Large\fontfamily{phv}\selectfont
		\color{headerText}#3
    };
	\end{tikzpicture}
	\vspace{2.5cm}
	\vspace{-2\parskip}
}

%Sidebar

\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\newenvironment{sidebar}{
	\let\oldsection\section
	\renewcommand{\section}[1] {
		{
			\par\LARGE
			\fontfamily{phv}\selectfont
			\textbf{\color{titleText}##1}
			\vspace{0.43cm} %space between sec title and content
		}
		\vspace{-0.2cm}
	}
	\normalsize
	\fontfamily{phv}\selectfont
	\begin{textblock}{5.9}(14.7, 4.33) %{width}(x, y)
	\begin{flushleft}
	\obeycr
	\vspace{-0.8cm} %header and sidebar
}{
	\restorecr
	\end{flushleft}
	\end{textblock}
  	\let\section\oldsection
}

%Body
\newenvironment{main}{
	\let\oldsection\section
	\renewcommand{\section}[1]{
		{
			\par
			\fontfamily{phv}\selectfont
			\textbf{\LARGE\color{titleText}##1}
			\vspace{0.6cm}
		}
		\vspace{-0.2cm}
	}
	\begin{textblock}{12}(1.5, 4.33)  %{width}(x, y)
	\begin{flushleft}
	\obeycr
	\vspace{-0.8cm}
}{
	\restorecr
	\end{flushleft}
	\end{textblock}
	%\let\section\oldsection
}

%Icons
\newcommand{\iconentry}[2] {
	\fontfamily{phv}\selectfont
	\parbox[t]{0.3cm}{\centering#1} \ #2 
}
%Main entry
\newcommand{\mainentry}[5] {
	\fontfamily{phv}\selectfont
	\vspace{-0.1cm}
 	%\hspace{-0.05cm}
	\parbox[t]{12cm} {
		\fontfamily{phv}\selectfont
 		\textbf{\color{subTitleText}#1} \hfill \color{tagText}\textbf{#2}\\
  		\color{accent}#3\hfill \color{tagText}#4\\
		\color{bodyText}#5\\
 	}
}
%Edu entry
\newcommand{\eduentry}[4] {
	\fontfamily{phv}\selectfont
 	\hspace{-0.05cm}\parbox[t]{5.8cm} {
		\fontfamily{phv}\selectfont
		{
			\fontsize{12pt}{18pt}\textbf{\color{subTitleText}#1}\\
		}
		\color{accent}#2\\
		%\color{accent}\emph{#2}\\
		\color{tagText}#3\\
		\color{bodyText}#4
 	}
}
%Award entry
\newcommand{\awardentry}[2] {
	\vspace{0.07cm}
	\fontfamily{phv}\selectfont
	\hspace{-0.05cm}\raggedright\parbox[t]{1.0cm}{\emph{#1}} \parbox[t]{4.3cm}{#2}\\
}

