%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------

\ProvidesClass{resume_config}[2023 v1.0 resume\_config]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------

\LoadClass[10pt]{article} % adjust font size here

%-------------------------------------------------------------------------------
%                Packages
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{color}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
\RequirePackage{fontawesome}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{etoolbox,refcount}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\RequirePackage{array}
\setmainfont{TeX Gyre Heros} % adjust font style here

% Additional fonts can be found at the following URL: https://www.draketo.de/anderes/latex-fonts.html#org9f59ea3

%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=letterpaper, % Paper size, change to letterpaper for US letter size
    top=0.4in, % Top margin
    bottom=0.4in, % Bottom margin
    left=0.7in, % Left margin
    right=0.7in, % Right margin
    headheight=0.4cm, % Header height
    footskip=0.3cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm % Space from the top margin to the baseline of the header
}

% section title format
\titleformat{\section}%
    {\vspace{-10pt}\scshape\raggedright\large\bfseries}% format
    {}% label
    {0em}% space between label and title
    {}% before code
    [\color{black}\titlerule\vspace{-5pt}]% after code

%-------------------------------------------------------------------------------
%                Custom Commands
%-------------------------------------------------------------------------------

\newcommand{\WorkExperience}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} c @{\extracolsep{\fill}} r}
    \textbf{#1 - #2} & \textit{#3} & #4 \\
    \end{tabular*}
    
    \begin{itemize}[itemsep=0pt,topsep=0pt, leftmargin=1.25em, label={$-$}]
        #5
    \end{itemize}
}

\newcommand{\Project}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} c @{\extracolsep{\fill}} r}
    \textbf{#1} & \textit{#2} & #3 \\
    \end{tabular*}


    
    \begin{itemize}[itemsep=-1pt, topsep=0pt, leftmargin=1em, label={$*$}]
        #4
    \end{itemize}
    \vspace{2pt}
}

\newcommand{\Header}[6]{%
    \begin{center}
        {\Huge\textbf{\textsc{\textcolor{black}{#1}}}}\\[5pt]
        \small
        {
            \curl{https://maps.app.goo.gl/KrGpf6oZuvKQurgB8}{\faMapMarker{} #2} $|$ 
            \curl{tel:#3}{\faPhone{} #3} $|$ 
            \curl{mailto:#4}{\faEnvelope{} #4} $|$ 
            \curl{https://linkedin.com/in/#5}{\faLinkedin{} linkedin: #5} $|$ 
            \curl{https://github.com/#6}{\faGithub{} github: #6}
        }\\[1pt]
    \end{center}
}

\newcommand{\Certification}[4]{
    \noindent
    \textbf{#1} \hfill \textit{#3}\\
    \textit{#2} \hfill \textbf{#4}\\
}

\newcommand{\EducationExperience}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & {#3} \\
        \small{#2} & \small{#4} \\
    \end{tabular*}
}

\newcommand{\Achievement}[2]{
    \noindent
    \textbf{#1}
    \noindent
    {#2}
}

\newcommand{\Skills}[1]{
    \begin{itemize}[itemsep=0pt, topsep=1pt, leftmargin=1em, label={$*$}]
        #1
    \end{itemize}
}

\newcommand{\curl}[2]{
\href{#1}{\textcolor{Blue}{\underline{#2}}}
}

\NewDocumentEnvironment{SkillsList}{O{4} O{0.75in} +b}{
\vspace{-12pt}
    \setlength{\columnsep}{0pt}
    \begin{multicols}{#1}
        \begin{itemize}[itemsep=-2pt, topsep=0pt, leftmargin=1em, label={$-$}]
                \normalsize{#3}
        \end{itemize}
    \end{multicols}
}{}

\NewDocumentEnvironment{URLList}{O{4} O{3in} +b}{
\vspace{-15pt}
    \setlength{\columnsep}{0pt}
    \begin{multicols}{#1}
        \begin{itemize}[itemsep=0pt, topsep=0pt, leftmargin=1em, label={$-$}]
               \normalsize{#3}
        \end{itemize}
    \end{multicols}
}{}
