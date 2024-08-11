\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2024/08/10 Custom class for assignments]

% Use article as the base class
\LoadClass{article}

% Required packages
\RequirePackage[a4paper, margin=1in]{geometry} % Standard margins
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{lipsum} % for dummy text
\RequirePackage{amsmath}

% Headers
\newcommand{\a@lefthead}{Name Course}
\newcommand{\a@centerhead}{Course Code}
\newcommand{\a@righthead}{Your Identifier}

% Custom title
\newcommand{\assignmenttitle}[6]{
    \thispagestyle{empty}
    \begin{center}
        {\Huge \textbf{#1}} \\  % College Name
        \vspace{0.5cm}
        \hrule
        \vspace{0.5cm}
        {\Large #2} \\  % Course Name
        \vspace{0.5cm}
        {\Large \textbf{#3}} \\ % Assignment Title
        \vspace{1cm}
        {\large \textbf{#4}} \\  % Your Name
        \vspace{0.2cm}
        {\large \texttt{#5}} \\  % Your Email
        \vspace{0.5cm}
        {\large #6} \\  % Date
        \vspace{0.5cm}
        \rule{\linewidth}{1.5pt}  % Thick line
    \end{center}
    \setcounter{page}{1}
}

% Custom Question Formatting
\newcounter{question}
\newcounter{subquestion}[question]

\renewcommand{\thequestion}{\textbf{\arabic{question}}}
\renewcommand{\thesubquestion}{\thequestion.\arabic{subquestion}}

\newcommand{\question}[1]{%
    \refstepcounter{question}%
    \vspace{0.5cm}\noindent\textbf{\thequestion. #1}\par\vspace{0.3cm}
}

\newcommand{\subquestion}[1]{%
    \refstepcounter{subquestion}%
    \vspace{0.5cm}\noindent\textbf{\thesubquestion. #1}\par\vspace{0.3cm}
}

% Fancy headers for the rest of the document
% Define custom page style
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\a@lefthead}
\fancyhead[C]{\a@centerhead}
\fancyhead[R]{\a@righthead}
\fancyfoot[C]{\thepage}

% Hook to allow customization in the main document
\newcommand{\setMyClassHeaders}[3]{%
  \renewcommand{\a@lefthead}{\textbf{#1}}%
  \renewcommand{\a@centerhead}{\textbf{#2}}%
  \renewcommand{\a@righthead}{\textbf{#3}}%
}
