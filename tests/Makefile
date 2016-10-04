.PHONY: tests test_ubuntu-14.04 test_ubuntu-16.04 test_debian-7 test_debian-8

tests:
	make test_ubuntu-14.04
	make test_ubuntu-16.04
	make test_debian-7
	make test_debian-8

test_ubuntu-14.04:
	VM_BOX='ubuntu/trusty64' vagrant up --provision
	VM_BOX='ubuntu/trusty64' vagrant provision
	rake spec
	VM_BOX='ubuntu/trusty64' vagrant destroy -f

test_ubuntu-16.04:
	VM_BOX='ubuntu/xenial64' vagrant up --provision
	VM_BOX='ubuntu/xenial64' vagrant provision
	rake spec
	VM_BOX='ubuntu/xenial64' vagrant destroy -f

test_debian-7:
	VM_BOX='debian/wheezy64' vagrant up --provision
	VM_BOX='debian/wheezy64' vagrant provision
	rake spec
	VM_BOX='debian/wheezy64' vagrant destroy -f

test_debian-8:
	VM_BOX='debian/jessie64' vagrant up --provision
	VM_BOX='debian/jessie64' vagrant provision
	rake spec
	VM_BOX='debian/jessie64' vagrant destroy -f
