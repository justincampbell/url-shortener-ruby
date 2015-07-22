Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.provision :shell, inline: <<-SHELL
    sudo apt-get install -y \
      unzip

    wget \
      --output-document=packer.zip \
      --quiet \
      https://dl.bintray.com/mitchellh/packer/packer_0.8.1_linux_amd64.zip
    unzip packer.zip -d /usr/local/bin

    wget -qO- https://get.docker.com | sh
  SHELL
end
