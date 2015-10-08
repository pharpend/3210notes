#!/usr/bin/env sage

legend_options = {
    'font_size': 20,
    'labelspacing': 0.5,
}
plot_options = {
    'thickness': 3,
    'fontsize': 12,
}
colors = [
    "#c00030"
]
thck = 3
pt_size = 150

x = var('x')
f(x) = sin(1 /x)

plt = plot(
    f(x),
    xmin = -2*pi,
    xmax = 2*pi,
    ymin = -2,
    ymax = 2,
    color = colors[0],
    legend_label = "$f(x) = \sin x$",
    ticks = pi / 2,
    tick_formatter = pi,
    **plot_options
)
plt.set_legend_options(**legend_options)
plt.save("seqcont2.pdf")
