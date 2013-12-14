gosocket
========
Allows for simple go-routine like execution of code in a non-blocking manner on socket server

# Install
install.packages("devtools") #if not already installed
devtools::install_github("gosocket","AnalytixWare")

# Usage
<div style="overflow:auto;"><div class="geshifilter"><pre class="r geshifilter-R" style="font-family:monospace;"><a href="http://inside-r.org/r-doc/base/system.time"><span style="color: #003399; font-weight: bold;">system.time</span></a><span style="color: #009900;">&#40;</span>gs <span style="">&lt;-</span> go.socket<span style="color: #009900;">&#40;</span><span style="color: #0000ff;">&quot;z &lt;- rnorm(10^8)&quot;</span><span style="color: #009900;">&#41;</span><span style="color: #009900;">&#41;</span> <span style="color: #666666; font-style: italic;"># go.socket is non-blocking the rest of the code will execute almost immedidately</span>
<a href="http://inside-r.org/r-doc/base/print"><span style="color: #003399; font-weight: bold;">print</span></a><span style="color: #009900;">&#40;</span><span style="color: #0000ff;">&quot;Don't have to wait for it to finish&quot;</span><span style="color: #009900;">&#41;</span> 
evalServer.nb<span style="color: #009900;">&#40;</span>gs<span style="">$</span>con<span style="color: #339933;">,</span><span style="color: #0000ff;">&quot;summary(z)&quot;</span><span style="color: #009900;">&#41;</span> <span style="color: #666666; font-style: italic;"># to retrieve the results; this is blocking</span>
<a href="http://inside-r.org/r-doc/base/print"><span style="color: #003399; font-weight: bold;">print</span></a><span style="color: #009900;">&#40;</span><span style="color: #0000ff;">&quot;The above you have to wait for!&quot;</span><span style="color: #009900;">&#41;</span>
close.go.socket<span style="color: #009900;">&#40;</span>gs<span style="color: #009900;">&#41;</span> <span style="color: #666666; font-style: italic;"># go practise to close the go.socket</span></pre></div></div><p><a href="http://www.inside-r.org/pretty-r" title="Created by Pretty R at inside-R.org">Created by Pretty R at inside-R.org</a></p>