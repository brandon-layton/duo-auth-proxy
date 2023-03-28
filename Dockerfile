FROM almalinux

RUN yum -y install gcc make libffi-devel perl zlib-devel diffutils wget selinux-policy-devel
RUN wget --content-disposition https://dl.duosecurity.com/duoauthproxy-latest-src.tgz \
      && tar xzf `find -maxdepth 1 -name "duoauthproxy*"` \
      && cd `find -maxdepth 1 -name "duoauthproxy*" -type d` \
      && make \
      && ./duoauthproxy-build/install --install-dir /opt/duoauthproxy --service-user duo_authproxy_svc --log-group duo_authproxy_grp --create-init-script yes

EXPOSE 1812

CMD [ "/opt/duoauthproxy/bin/authproxy" ]
