#!/usr/bin/env sage

x = var('x')
f = function('f', x)
g = function('g', x)

f(x) = x**3 - 4
g(x) = 1 / x

plt_f = plot(f(x), xmin=-5,xmax=5, ymin=-25,ymax=25, legend_label="$f(x) = x^3 - 4$",thickness=3, axes_labels=['$x$','$y$'])
plt_g_1 = plot(g(x), xmin=-5, xmax=-0.01, legend_label = "$g(x) = 1 / x$", color='red',thickness=3)
plt_g_2 = plot(g(x), xmin=0.01, xmax=5, color='red',thickness=3)
plt_g = plt_g_1 + plt_g_2

plt = plt_f + plt_g
plt.save("continuous-vs-discontinuous.pdf")

plt_h_1 = plot(
    lambda x: 0,
    xmin=-5,
    xmax=-0.1,
    ymin=-0.5,
    ymax=1.5,
    legend_label="$h(x < 0) = 0$",
    thickness=3,
    axes_labels = ['x', 'y']
)
plt_h_2 = plot(
    lambda x: 1,
    xmin=0,
    xmax=5,
    legend_label="$h(x \geq 0) = 1$",
    thickness=3
)
plt_h_3 = point(
    (0,1),
    pointsize=100
)
plt_h_4 = circle(
    (0,0),
    0.1,
    color='blue',
    thickness=1
)

plt_ = plt_h_1 + plt_h_2 + plt_h_3 + plt_h_4
plt_.save("constant-discontinuity.pdf")
