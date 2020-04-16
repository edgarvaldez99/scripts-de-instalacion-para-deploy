#!/bin/bash

nohup webhook -hooks $HOME_PROYECTO/webhooks/hooks.json -verbose --port 9999 &
