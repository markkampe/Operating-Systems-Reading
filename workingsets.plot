#!/usr/bin/gnuplot
# output configuration
set terminal png size 800, 400
set output 'thrashing.png'

# graph description
set title "Page Faults vs Working Set Size"
set xlabel "% (allocated/working set)"
set y2label "throughput"
set ylabel "page fault rate"
set y2tics nomirror
set ytics nomirror

# basic parameters: relative costs of ops and faults
Top = 100	# real time per operation (ns)
Tfault = 10000000	# real time for disk access
Cop = 100	# CPU time per operation  (ns)
Cfault = 10000 	# CPU time per fault

# probability of a page fault
Ppf(mem, ws) = (mem >= ws) ? 0 : (1-(mem/ws))

# faults per n references
faults(n, mem, ws) = ws + ((n-ws) * Ppf(mem,ws))

# execution  and CPU time for n references
rTime(n, mem, ws) = (n * Top) + (faults(n, mem, ws) * Tfault)
cTime(n, mem, ws) = (n * Cop) + (faults(n, mem, ws) * Cfault)

ops = 1000
fBase = faults(ops, 100, 100)
rBase = rTime(ops, 100, 100)
cBase = cTime(ops, 100, 100)

# and generate the plots
set y2range [0:1.5]
set yrange [0:10]
set samples 100
plot [20:120] faults(ops, x, 100)/fBase axis x1y1 title "fault rate", \
	      cBase/cTime(ops, x, 100)  axis x1y2 title "hroughput"
#	      rBase/rTime(ops, x, 100)  axis x1y2 title "process throughput"
