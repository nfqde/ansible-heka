ansible-heka [![Build Status](https://travis-ci.org/nfqde/ansible-heka.svg?branch=master)](https://travis-ci.org/nfqde/ansible-heka)
============

[Heka](http://hekad.readthedocs.io/) is a tool for collecting and collating data
from a number of different sources, performing "in-flight" processing of
collected data, and delivering the results to any number of destinations for
further analysis.

Supported Distributions
-----------------------

* Debian 7
* Debian 8
* Ubuntu 14.04
* Ubuntu 16.04

Sample Usage
------------

```yaml
---

hosts: logservers
become: yes
roles:
  - name: heka
    heka_tasks:
      - name: LogstreamerInput
        log_directory: '"/var/log"'
        file_match: '\'auth\\.log\''

      - name: PayloadEncoder
        append_newlines: 'false'

      - name: LogOutput
        message_matcher: '"TRUE"'
        encoder: '"PayloadEncoder"'
```

Author Information
------------------

This project has been forked from [AbdoulNdiaye/ansible-role-heka](https://github.com/AbdoulNdiaye/ansible-role-heka)
so credits go to [Abdoul N'Diaye](https://twitter.com/AbdoulNDiaye) as original author.

Further development has been done by NFQ.de team.
