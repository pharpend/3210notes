#!/usr/bin/env sage

x = var('x')
f = function('f', x)
g = function('g', x)

f(x) = x**2 + 2
g(x) = 1 / x

plt_f = plot(f(x), xmin=-5,xmax=5, ymin=-25,ymax=25, legend_label="$f(x) = x^2 + 2$",thickness=5)
plt_g_1 = plot(g(x), xmin=-5, xmax=-0.01, legend_label = "$g(x) = 1 / x$", color='red',thickness=5)
plt_g_2 = plot(g(x), xmin=0.01, xmax=5, color='red',thickness=5)
plt_g = plt_g_1 + plt_g_2

plt = plt_f + plt_g
plt.save("continuous-vs-discontinuous.png")
