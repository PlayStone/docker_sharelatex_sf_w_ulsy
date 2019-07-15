FROM playst0ne/sharelatex-scheme-full

RUN export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/texlive/2019/bin/x86_64-linux/ \
    && cd ~ \
    && wget http://mirrors.ctan.org/fonts/ulsy.zip \
    && unzip ulsy.zip && rm ulsy.zip\
    && cd ulsy \
    && latex ulsy.ins \
    && mkdir -p /usr/local/texlive/texmf-local/tex/latex/ulsy \
    && mkdir -p /usr/local/texlive/texmf-local/fonts/tfm/public/ulsy \
    && mkdir -p /usr/local/texlive/texmf-local/fonts/source/public/ulsy \
    && mv ulsy.sty /usr/local/texlive/texmf-local/tex/latex/ulsy/ \
    && mv Uulsy.fd /usr/local/texlive/texmf-local/tex/latex/ulsy/ \
    && mv ulsy10.tfm /usr/local/texlive/texmf-local/fonts/tfm/public/ulsy/ \
    && mv ulsy10.mf /usr/local/texlive/texmf-local/fonts/source/public/ulsy/ \
    && texhash \
    && cd ~ \
    && rm -r ulsy