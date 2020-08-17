FROM danteev/texlive:20200815020536dbfd37

LABEL maintainer="Michael Hettmer - @michaelhettmer"
LABEL description="Docker image for LaTeX editing in a VSCode remote container"

# install missing perl modules
RUN cpan -i Log::Dispatch::File YAML::Tiny File::HomeDir Log::Log4perl

# add gpg support to enable git commit signing
RUN apt-get update && apt-get install gnupg2 -y

# remove predefined gitconfig to get local host gitconfig
RUN rm -rf /root/.gitconfig