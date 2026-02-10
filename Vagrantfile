Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  (1..3).each do |i|
    config.vm.define "hci-node-#{i}" do |node|
      node.vm.hostname = "hci-node-#{i}"
      node.vm.network "private_network", ip: "192.168.56.#{10 + i}"

      node.vm.provider "virtualbox" do |vb|
        vb.name = "hci-node-#{i}"
        vb.memory = 2048
        vb.cpus = 2
      end

      node.vm.provision "shell", path: "scripts/common.sh"
    end
  end
end