FROM ahmetozer/jekyll

RUN gem update --no-document jekyll && gem cleanup

RUN printf "host: 0.0.0.0\n" >> /usr/gems/gems/jekyll-$(jekyll --version | cut -d " " -f 2)/lib/site_template/_config.yml

WORKDIR /sites

ENV PS1='\u@\h:\w\$\040'
