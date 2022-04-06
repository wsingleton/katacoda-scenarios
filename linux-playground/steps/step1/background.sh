#!/bin/bash
echo "done" >> /tmp/katacoda-finished
env-setup.sh 2> /tmp/scenario-error.log
echo "done" >> /tmp/katacoda-background-finished
