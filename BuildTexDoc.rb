print "\\documentclass[a4paper,10pt]{article}

\\usepackage{listings}
\\usepackage[pdftex]{graphicx}
\\title{Database fundementals final project}
\\author{Name and student number}
\\date{23 March 2014}

\\begin{document}
\\begin{titlepage}
\\maketitle
\\end{titlepage}
\\tableofcontents{}
\\newpage
\\thispagestyle{empty}
\\mbox{}\n"

Dir.new("Queries").sort.each do |dir|
  if dir != "." && dir != ".."
    contents_of_dir = Dir.new("Queries/#{dir}").map {|m| m if m != "." && m != ".."}
    contents_of_dir.delete(nil)
    contents_of_dir = contents_of_dir.map do |file|
      unless (file.include? "PNG") || (file.include? "jpg")
        source_file = File.read "Queries/#{dir}/#{file}"
        " \\subsection{Query}
          \\lstset{
            language=SQL,
            breaklines=true
            }
        \\begin{lstlisting}[frame=single]
        #{source_file}
        \\end{lstlisting}"
      else
          "\\subsection{Query Output}
           \\includegraphics{Queries/#{dir}/#{file}}"
      end

    end

    print "\\section*{#{dir.sub! "_", " "}}\n" 
    print "#{contents_of_dir.join "\n"}\n"
    print "\\subsection{Description}\n"
  end
end
print "\\end{document}"
