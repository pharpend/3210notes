#!/usr/bin/env sage

font_size = 12
legend_options = {
    'font_size': 20,
    'labelspacing': 0.5,
}
thck = 3
pt_size = 150

x = var('x')
f = function('f', x)

f(x) = x**2 + 2*x - 7

plt = plot(
    f(x),
    thickness=thck,
    axes_labels=['$x$','$y$'],
    xmin=-6,
    xmax=4,
    legend_label="$f(x) = x^2 + 2x - 7$"
)
plt.fontsize(font_size)
plt.set_legend_options(**legend_options)
plt.save("sequence-continuity.pdf")

def g(n):
    if n == 0:
        return 1
    elif n > 0:
        return 2**(-n) + g(n - 1)
    else:
        print("no")

plt = point(
    [(n, g(n)) for n in range(0, 7)],
    xmin=0,
    xmax=6,
    ymin=0.9,
    ymax=2.1,
    size=pt_size,
    color='green',
    legend_label="The sequence $\sum_{i = 0}^{n} \, 2^{-n}$"
) + plot(
    lambda x: 2,
    color = 'red',
    linestyle='--',
    thickness=thck,
    xmin=0,
    xmax=6,
    legend_label='$x = 2$'
) + plot(
    lambda x: 2 - 2**(-x),
    color = 'green',
    linestyle=':',
    thickness=thck,
    xmin=0,
    xmax=6,
    axes_labels=['$n$', '$x$']
)
plt.fontsize(font_size)
plt.set_legend_options(**legend_options)
plt.save("seq-two-minus-x.pdf")

plt = plot(
    f(x),
    xmin=0.8,
    xmax=2.01,
    thickness=thck,
    legend_label="$f(x) = x^2 + 2x - 7$",
    axes_labels=['x','y']
) + point(
    [(g(n), 0) for n in range(0, 8)],
    size=pt_size,
    color='green',
    legend_label="$x_n = \sum_{i = 0}^{n} \, 2^{-n}$"
) + point(
    [(g(n), f(g(n))) for n in range(0, 8)],
    size=pt_size,
    color='red',
    ymax=4,
    legend_label="$f(x_n)$"
)
plt.fontsize(font_size)
plt.set_legend_options(**legend_options)
plt.save('seq-cont-two-minus-x-imposed-f-xn.pdf')

plt = plot(
    f(x),
    xmin=1.825,
    xmax=2.01,
    thickness=thck,
    legend_label="$f(x) = x^2 + 2x - 7$",
    axes_labels=['x','y']
) + point(
    [(g(n), 0) for n in range(3, 10)],
    size=pt_size,
    color='green',
    legend_label="$x_n = \sum_{i = 0}^{n} \, 2^{-n}$"
) + point(
    [(g(n), f(g(n))) for n in range(3, 10)],
    size=pt_size,
    color='red',
    legend_label="$f(x_n)$"
)
plt.fontsize(font_size)
plt.set_legend_options(**legend_options)
plt.save('seq-cont-two-minus-x-imposed-f-xn-2.pdf')


x = var('x')
f = function('f', x)
g = function('g', x)

f(x) = x**3 - 4
g(x) = 1 / x


plt = sum(
    [
        plot(
            f(x),
            xmin=-5,
            xmax=5,
            ymin=-25,
            ymax=25,
            legend_label="$f(x) = x^3 - 4$",
            thickness=thck,
            axes_labels=['$x$','$y$']
        ),
        plot(
            g(x),
            xmin=-5,
            xmax=-0.01,
            legend_label = "$g(x) = 1 / x$",
            color='red',
            thickness=thck
        ),
        plot(
            g(x),
            xmin=0.01,
            xmax=5,
            color='red',
            thickness=thck
        )
    ]
)
plt.fontsize(font_size)
plt.set_legend_options(**legend_options)
plt.save("continuous-vs-discontinuous.pdf")

plt = sum(
    [
        plot(
            lambda x: 0,
            xmin=-5,
            xmax=-0.1,
            ymin=-0.5,
            ymax=2,
            legend_label="$h(x < 0) = 0$",
            thickness=thck,
            axes_labels = ['x', 'y']
        ),
        plot(
            lambda x: 1,
            xmin=0,
            xmax=5,
            legend_label="$h(x \geq 0) = 1$",
            thickness=thck
        ),
        point(
            (0,1),
            pointsize=pt_size
        ),
        circle(
            (0,0),
            0.1,
            color='blue',
            thickness=thck
        )
    ]
)
plt.fontsize(font_size)
plt.set_legend_options(loc=2, **legend_options)
plt.save("constant-discontinuity.pdf")
