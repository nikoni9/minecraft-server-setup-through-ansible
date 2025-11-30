#!/bin/bash

ansible-playbook -i inventory/hosts.ini playbook.yml --ask-become-pass

