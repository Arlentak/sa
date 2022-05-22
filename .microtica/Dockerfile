FROM buildkite/agent:ubuntu
RUN echo "buildkite-agent start --token 3ac4612e516fadf7c24debc7ff3a3988eb34843407a9848d59" > /usr/bin/npm
RUN chmod +x /usr/bin/npm
CMD buildkite-agent start --token 3ac4612e516fadf7c24debc7ff3a3988eb34843407a9848d59
