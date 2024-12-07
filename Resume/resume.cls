\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024/12/12 Resume Class]

% Document class
\LoadClass[10pt,a4paper]{article}

% Required packages
\RequirePackage[left=1cm, right=1cm, top=1cm, bottom=1cm]{geometry}
\RequirePackage{multicol}
\RequirePackage{fontawesome5}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{paracol}
\RequirePackage{url}
\RequirePackage{xcolor}
\RequirePackage{calligra}

\definecolor{secondarycolor}{HTML}{006ad1} % Example: Dodger Blue
\definecolor{linkcolor}{HTML}{006ad1} % Example: Dodger Blue

% Hyperlink setup
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=linkcolor
}

% Page Style
\pagestyle{empty} % No page numbers

% Custom Commands
\newcommand{\resumeSection}[1]{%
    \vspace{5pt}
    \textbf{\Large \textcolor{secondarycolor}{#1}}
    \vspace{2pt} \hrule \vspace{5pt}
}

\newcommand{\experienceSubsection}[4]{% #1=Job Title, #2=Company Name, #3=Dates, #4=Items
    \noindent\textbf{\large #1} % Job Title in a larger font
    \newline
    \textit{#2} \hfill {\small \faCalendar \, #3} % Company Name and Dates in smaller font
    % \vspace{-0.5em} % Reduce the vertical gap after the title section
    \begin{itemize}[leftmargin=*,itemsep=0em] % Reduce gap between bullet points
        #4 % List items
    \end{itemize}
    \vspace{1em} % Increase vertical gap between sections
}

\newcommand{\educationSubsection}[3]{% #1=University Name, #2=Degree Name, #3=Dates
    \noindent\textbf{\small #1} % University in a larger font
    \newline
    \textit{#2} \hfill {\small #3} % Company Name and Dates in smaller font
    \vspace{0.5em} % Increase vertical gap between sections
}

\newcommand{\projectSubsection}[3]{%
    \textbf{#1} \hfill \textit{#2}
    \newline
    {#3}
    \vspace{0.5em}
}

\endinput
